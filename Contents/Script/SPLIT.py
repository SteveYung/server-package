#coding=utf-8
# 2016.11.23 17:13:35 CST
#Embedded file name: /Users/xiejunze/Library/Developer/Xcode/DerivedData/RSDKTools-esaquivcxevmwlbmbxkykdnmhbwh/Build/Products/Release/RSDKTools.app/Contents/Script/SPLIT.py
import os
import file_operate
import xml.etree.ElementTree as ET
import sys
import apk_operate
import encode_operate
from config import ConfigParse


def split_apk(dbname,sub_channel_id,parent_apk_path,sub_apk_path):
    print sys.path[0]
    return

def read_xml(in_path, is_space = False):
    tree = ET.ElementTree()
    if is_space:
        ET.register_namespace('android', 'http://schemas.android.com/apk/res/android')
    tree.parse(in_path)
    return tree

def change_node_properties(nodelist, name, values):
    for node in nodelist:
        for key in node.attrib:
            if node.attrib[key] == values:
                node.text = name


def change_node_key(nodelist, values, keyname):
    for node in nodelist:
        for key in node.attrib:
            if key == keyname:
                print key
                node.set(keyname, values)


def changeheadernodes(node,key,value):
    node.set(key,value);

def write_xml(tree, out_path):
    tree.write(out_path, encoding='utf-8', xml_declaration=True)

def change_gameName(workdir, newName):
    if os.path.exists(workdir):
        valuesplace = os.path.join(workdir, 'res/values')
        if os.path.exists(valuesplace):
            gamenamespace = valuesplace + '/strings.xml'
            if os.path.exists(gamenamespace):
                tree = read_xml(gamenamespace)
                string_node = tree.findall('string')
                change_node_properties(string_node, newName, 'app_name')
                write_xml(tree, gamenamespace)
            else:
                print '\xe6\xb2\xa1\xe6\x9c\x89strings.xml\xe6\x96\x87\xe4\xbb\xb6'
        else:
            print '\xe6\xb2\xa1\xe6\x9c\x89values\xe6\x96\x87\xe4\xbb\xb6'
    else:
        print '\xe6\x9c\xaa\xe6\x89\xbe\xe5\x88\xb0\xe8\xa7\xa3\xe5\x8e\x8b\xe7\xbc\xa9\xe5\x90\x8e\xe7\x9a\x84\xe6\x96\x87\xe4\xbb\xb6'


def change_develop_id(workdir, newID):
    assetsspace = os.path.join(workdir, 'assets')
    developsplace = assetsspace + '/developerInfo.xml'
    if not os.path.exists(assetsspace):
        print '\xe6\xb2\xa1\xe6\x9c\x89assets\xe6\x96\x87\xe4\xbb\xb6'
    tree = read_xml(developsplace)
    channel_node = tree.findall('channel')
    change_node_key(channel_node, newID, 'r_sub_app_id')
    write_xml(tree, developsplace)


def push_icon_into_apk(iconDir, decompileDir, r_sub_app_id):
    print 'r_sub_app_id = ' + r_sub_app_id
    file_operate.copyFile(iconDir + '/' + r_sub_app_id + '/icon36.png', decompileDir + '/res/drawable-ldpi/icon.png')
    file_operate.copyFile(iconDir + '/' + r_sub_app_id + '/icon48.png', decompileDir + '/res/drawable/icon.png')
    file_operate.copyFile(iconDir + '/' + r_sub_app_id + '/icon48.png', decompileDir + '/res/drawable-mdpi/icon.png')
    file_operate.copyFile(iconDir + '/' + r_sub_app_id + '/icon72.png', decompileDir + '/res/drawable-hdpi/icon.png')
    file_operate.copyFile(iconDir + '/' + r_sub_app_id + '/icon96.png', decompileDir + '/res/drawable-xhdpi/icon.png')
    file_operate.copyFile(iconDir + '/' + r_sub_app_id + '/icon144.png', decompileDir + '/res/drawable-xxhdpi/icon.png')
    xxxhdpi = decompileDir + '/res/drawable-xxxhdpi'
    if os.path.exists(xxxhdpi):
        file_operate.copyFile(iconDir + '/' + r_sub_app_id + '/icon192.png', decompileDir + '/res/drawable-xxxhdpi/icon.png')


def get_app_name(wordir):
    name = ''
    tree = read_xml(wordir)
    string_node = tree.findall('string')
    for node in string_node:
        for key in node.attrib:
            if node.attrib[key] == 'app_name':
                name = node.text

    return name

def push_oldIcon_into_apk(iconDir, decompileDir):
    file_operate.copyFile(iconDir + '/icon36.png', decompileDir + '/res/drawable-ldpi/icon.png')
    file_operate.copyFile(iconDir + '/icon48.png', decompileDir + '/res/drawable/icon.png')
    file_operate.copyFile(iconDir + '/icon48.png', decompileDir + '/res/drawable-mdpi/icon.png')
    file_operate.copyFile(iconDir + '/icon72.png', decompileDir + '/res/drawable-hdpi/icon.png')
    file_operate.copyFile(iconDir + '/icon96.png', decompileDir + '/res/drawable-xhdpi/icon.png')
    file_operate.copyFile(iconDir + '/icon144.png', decompileDir + '/res/drawable-xxhdpi/icon.png')
    xxxhdpi = decompileDir + '/res/drawable-xxxhdpi'
    if os.path.exists(xxxhdpi):
        file_operate.copyFile(iconDir + '/icon192.png', decompileDir + '/res/drawable-xxxhdpi/icon.png')


def icon_backup_apk(workdir,iconbackupdir):
    file_operate.copyFile(workdir + '/res/drawable-ldpi/icon.png', iconbackupdir + '/icon36.png')
    file_operate.copyFile(workdir + '/res/drawable-mdpi/icon.png', iconbackupdir + '/icon48.png')
    file_operate.copyFile(workdir + '/res/drawable-hdpi/icon.png', iconbackupdir + '/icon72.png')
    file_operate.copyFile(workdir + '/res/drawable-xhdpi/icon.png', iconbackupdir + '/icon96.png')
    file_operate.copyFile(workdir + '/res/drawable-xxhdpi/icon.png', iconbackupdir + '/icon144.png')
    backupxxxhdpi = workdir + '/res/drawable-xxxhdpi'
    if os.path.exists(backupxxxhdpi):
        file_operate.copyFile(workdir + '/res/drawable-xxxhdpi/icon.png', iconbackupdir + '/icon192.png')

def change_package_number(workDir,packageNumber):
    assetsspace = os.path.join(workDir, 'assets')
    developsplace = assetsspace + '/developerInfo.xml'
    if not os.path.exists(assetsspace):
        print '\xe6\xb2\xa1\xe6\x9c\x89assets\xe6\x96\x87\xe4\xbb\xb6'
    tree = read_xml(developsplace)
    channel_node = tree.find('channel')
    changeheadernodes(channel_node,"package_number",packageNumber);
    write_xml(tree, developsplace)


split_apk(sys.argv[1],sys.argv[2],sys.argv[3],sys.argv[4])

