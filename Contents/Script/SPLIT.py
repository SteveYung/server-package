# coding=utf-8
import os
import file_operate
import xml.etree.ElementTree as ET
import sys
import apk_operate
import urllib
import encode_operate
from config import ConfigParse
import time


def logError(error_info, log_dir):
    error = '==================>>>> ERROR <<<<==================\r\n'
    error += '[Time]: ' + time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time())) + '\r\n'
    error += error_info + '\r\n'
    error += '===================================================\r\n'
    file_operate.log(error, log_dir)


def split_apk(db_name, game_id, id_channel, parent_apk_path, sub_apk_path, sub_channel_id):
    reload(sys)
    sys.setdefaultencoding('utf8')
    log_dir = '%s/%s/%s' % (db_name, game_id, id_channel)
    if not os.path.exists(parent_apk_path):
        logError('parent apk not exist', log_dir)
        print '{"ret":"fail","msg":"parent apk not exist"}'
        return
    middle_dir = '%s/%s' % (db_name, sub_channel_id)
    split_work_dir = file_operate.get_server_dir() + '/split_workspace/%s' % middle_dir
    if os.path.exists(split_work_dir):
        file_operate.delete_file_folder(split_work_dir)

    os.makedirs(split_work_dir)
    split_decompile_dir = split_work_dir + '/decompile'
    os.mkdir(split_decompile_dir)

    channel_temp_apk_dir = split_work_dir + '/temp'
    os.mkdir(channel_temp_apk_dir)

    channel_temp_apk = channel_temp_apk_dir + '/temp.apk'
    file_operate.copyFile(parent_apk_path, channel_temp_apk)

    ret = apk_operate.decompileApk(channel_temp_apk, split_decompile_dir, None)
    if ret:
        logError('decompileApk parent apk fail', log_dir)
        print '{"ret":"fail","msg":"decompileApk parent apk fail"}'
        return
    ConfigParse.shareInstance().readUserConfig(0)
    sub_channel_config = ConfigParse.shareInstance().get_sub_channel_config()

    sub_channel_icon_url = None
    display_name = None
    sub_app_id = 0
    sub_num = 0

    if len(sub_channel_config) > 0:
        for r in sub_channel_config:
            if int(id_channel) != int(r['p_channel_id']):
                logError('param channel id is not right', log_dir)
                print '{"ret":"fail","msg":"param channel id is not right"}'
                return

            if int(game_id) != int(r['game_id']):
                logError('param game id is not right', log_dir)
                print '{"ret":"fail","msg":"param game id is not right"}'
                return

            if r['r_channel_game_icon'] is None:
                sub_channel_icon_url = ''
            else:
                sub_channel_icon_url = r['r_channel_game_icon']

            if r['display_name'] is None:
                display_name = ''
            else:
                display_name = r['display_name'].encode('utf-8')

            sub_app_id = r['sub_app_id']

            sub_num = r['sub_num']

    else:
        logError('sub channel config is empty', log_dir)
        print '{"ret":"fail","msg":"sub channel config is empty"}'
        return

    if sub_app_id == 0 or sub_num == 0:
        log_info = 'ret:fail,msg:sub_app_id and sub_num == 0'
        logError(log_info, log_dir)
        return

    if display_name != '' and display_name is not None:
        apk_operate.doModifyAppName(split_decompile_dir, display_name)

    if sub_channel_icon_url != '' and sub_channel_icon_url is not None:
        channel_icon_dir = split_work_dir + '/icon/'
        os.mkdir(channel_icon_dir)
        urllib.urlretrieve(sub_channel_icon_url, channel_icon_dir + 'icon.png')
        ret = apk_operate.pushIconIntoApk(channel_icon_dir, split_decompile_dir)
        if ret:
            logError('pushIconIntoApk error', log_dir)
            return
    ret = encode_operate.decodeXmlFiles(split_decompile_dir)
    if ret:
        logError('decodeXmlFiles error', log_dir)
        return
    ret = change_develop_id(split_decompile_dir, sub_app_id, sub_num)
    if ret:
        logError('change develop id error', log_dir)
        return
    encode_operate.encodeXmlFiles(split_decompile_dir)

    channel = ConfigParse.shareInstance().findChannel(int(id_channel))
    sdk_dir = split_work_dir + '/sdk/'
    for channel_sdk in channel['sdkLs']:
        id_sdk = channel_sdk['idSDK']
        SDK = ConfigParse.shareInstance().findSDK(id_sdk)
        if SDK is None:
            continue
        split_script_src_dir = file_operate.get_server_dir() + '/config/sdk/' + SDK['SDKName'] + '/specialsplit_script.pyc'
        split_script_src_dir = file_operate.getFullPath(split_script_src_dir)
        if not os.path.exists(split_script_src_dir):
            continue

        split_script_dest_dir = sdk_dir + SDK['SDKName'] + '/specialsplit_script.pyc'

        file_operate.copyFiles(split_script_src_dir, split_script_dest_dir)
        SDKDir = sdk_dir + SDK['SDKName']
        sys.path.append(SDKDir)
        import specialsplit_script

        ret = specialsplit_script.script(split_decompile_dir, sub_app_id, sub_num)
        if ret:
            logError("error do Special Operate",log_dir)
            print "error do Special Operate"
            return

    channel_unsign_apk = channel_temp_apk_dir + '/channel_temp_apk.apk'
    ret = apk_operate.recompileApk(split_decompile_dir, channel_unsign_apk)
    if ret:
        logError("recompileApk fail",log_dir)
        print "recompileApk fail"
        return
    game = ConfigParse.shareInstance().getCurrentGame()
    if game is None:
        print 'game is none'
        logError('game is none',log_dir)
        return
    ret = apk_operate.signApkAuto(channel_unsign_apk, game, channel,middle_dir)

    if ret:
        print 'signApkAuto fail'
        logError('signApkAuto fail',log_dir)
        return

    out_put_dir = os.path.dirname(sub_apk_path)
    ret = apk_operate.alignAPK(channel_unsign_apk,sub_apk_path, out_put_dir)
    if ret:
        print 'alignAPK fail'
        logError('alignAPK fail',log_dir)
        return
    else:
        print '{"ret":"success","msg":"run pack success"}'
    file_operate.delete_file_folder(split_work_dir)


def change_develop_id(work_dir, new_sub_app_id, sub_num):
    assets_dir = os.path.join(work_dir, 'assets')
    develop_file = assets_dir + '/developerInfo.xml'
    if not os.path.exists(assets_dir):
        return 1

    tree = ET.ElementTree()
    tree.parse(develop_file)
    channel_node = tree.find('channel')
    channel_node.set('r_sub_app_id', str(new_sub_app_id))
    channel_node.set('package_number', str(sub_num))
    tree.write(develop_file, 'UTF-8')
    return 0



split_apk(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], sys.argv[6])

