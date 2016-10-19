#coding=utf-8
# 2015.01.17 10:32:29 CST
# Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/core.py
import file_operate
import apk_operate
import encode_operate
import error_operate
from http_manager import httpManager
import modifyManifest
from config import ConfigParse
from taskManagerModule import taskManager
import thread
import threading
import platform
import special_script
from time import sleep
import os
import time
import commands
import urllib
import sys
reload(sys)
sys.setdefaultencoding('utf-8')

def main(channel):
    # 调用函数 8.4
    inspectJDK()
    source = ConfigParse.shareInstance().getSource()
    if os.path.isdir(source):
        error_operate.error(3000)
        return
        # buildGradle(channel)
    else:
        idChannel = channel.get('idChannel')
        channelName = channel.get('name')
        channelNum = channel.get('channelNum')
        threading.currentThread().setName(idChannel)
        taskManager.shareInstance().notify(idChannel, 5)
        source = ConfigParse.shareInstance().getSource()
        basename = os.path.basename(source)
        exttuple = os.path.splitext(basename)
        taskLock = taskManager.shareInstance().getLock()
        basename = exttuple[0]
        extname = exttuple[1]
        game = ConfigParse.shareInstance().getCurrentGame()
        if game is None:
            error_operate.error(3)
            return
        versionName = ConfigParse.shareInstance().getVersionName()
        print '<---Parent apk versionName-->%s' %(versionName)
        keystore = ConfigParse.shareInstance().getKeyStore()
        print '<---Game keystore info-->%s' %(keystore)
        if channelName is None:
            error_operate.error(5)
            return
        taskManager.shareInstance().notify(idChannel, 10)
        # file_operate.execFormatCmd('chmod -R 777 %s' % (file_operate.get_server_dir()+'/workspace/'))
        workDir = file_operate.get_server_dir()+'/workspace/' + channelNum
        workDir = file_operate.getFullPath(workDir)
        file_operate.delete_file_folder(workDir)
        if not os.path.exists(source):
            error_operate.error(60)
            return
        tmpApkSource = workDir + '/temp.apk'
        file_operate.copyFile(source, tmpApkSource)
        print 'tmpApkSource-->'+ tmpApkSource
        decompileDir = workDir + '/decompile'
        ret = apk_operate.decompileApk(tmpApkSource, decompileDir, taskLock)
        print 'step--decompileAPK--RET-->%d' %(ret)
        if ret:
            return
        unknownFile = decompileDir + '/AddForRoot'
        if os.path.exists(decompileDir + '/unknown'):
            os.rename(decompileDir + '/unknown', unknownFile)
        oldPackageName = apk_operate.getPackageName(decompileDir)
        isCocosPlay = apk_operate.checkForCocosPlay(decompileDir, channel, oldPackageName)
        if isCocosPlay:
            ret = apk_operate.renameApkForCocosPlay(decompileDir, oldPackageName, channel['packNameSuffix'], game,
                                                    channel, taskLock)
            if ret:
                return
        ConfigParse.shareInstance().setCocosPlayMode(isCocosPlay)
        taskManager.shareInstance().notify(idChannel, 20)
        SmaliDir = decompileDir + '/smali'
        SDKWorkDir = workDir + '/sdk/'
        for Channel_SDK in channel['sdkLs']:
            idSDK = Channel_SDK['idSDK']
            SDK = ConfigParse.shareInstance().findSDK(idSDK)
            if SDK == None:
                continue
            SDKSrcDir = file_operate.get_server_dir()+'/config/sdk/' + SDK['SDKName']
            SDKSrcDir = file_operate.getFullPath(SDKSrcDir)
            SDKDestDir = SDKWorkDir + SDK['SDKName']
            file_operate.copyFiles(SDKSrcDir, SDKDestDir)
            if os.path.exists(SDKDestDir + '/ForRes/drawable-xxxhdpi'):
                if file_operate.getTargetSdkVersion(tmpApkSource) < 18:
                    file_operate.delete_file_folder(SDKDestDir + '/ForRes/drawable-xxxhdpi')

        taskManager.shareInstance().notify(idChannel, 30)
        for Channel_SDK in channel['sdkLs']:
            idSDK = Channel_SDK['idSDK']
            SDK = ConfigParse.shareInstance().findSDK(idSDK)
            if SDK == None:
                continue
            SDKDir = SDKWorkDir + SDK['SDKName']
            SDKDex = os.path.join(SDKDir, 'classes.dex')
            SDKDex = file_operate.getFullPath(SDKDex)
            ret = apk_operate.dexTrans2Smali(SDKDex, SmaliDir, 4, 'baksmali.jar')
            if ret:
                return

        taskManager.shareInstance().notify(idChannel, 35)
        decompileSmaliDir = decompileDir + '/smali'
        maniFestFile = decompileDir + '/AndroidManifest.xml'
        newPackagename = apk_operate.renameApkPackage(decompileSmaliDir, maniFestFile, channel['packNameSuffix'],
                                                      channel['r_bundle_id'])

        #by tonet reset apk version
        if channel['r_gameversion_build'] != '' and channel['r_gameversion'] != '':
            apk_operate.resetApkVersion(maniFestFile, channel['r_gameversion_build'], channel['r_gameversion'])
            file_operate.printf("Reset ApkVersion success")

        taskManager.shareInstance().notify(idChannel, 45)
        print '<---- decompileDir:%s ---->' %(decompileDir)
        print '<---- channel:%s ---->' %(channel)
        print '<---- game:%s ---->' %(game)
        apk_operate.writeChannelInfoIntoDevelopInfo(decompileDir, channel, game)
        apk_operate.writeSupportInfo(decompileDir)
        taskManager.shareInstance().notify(idChannel, 50)
        bExecuteSpecialScipt = False
        for Channel_SDK in channel['sdkLs']:
            idSDK = Channel_SDK['idSDK']
            UsrSDKConfig = ConfigParse.shareInstance().findUserSDKConfigBySDK(idSDK, channel['idChannel'])
            SDK = ConfigParse.shareInstance().findSDK(idSDK)
            if SDK == None:
                continue
            ret = apk_operate.packResIntoApk(SDKWorkDir, SDK, decompileDir, newPackagename, UsrSDKConfig)
            if ret:
                return
            SDKVersionInfo = ConfigParse.shareInstance().findSDKVersion(SDK['SDKName'])
            if SDKVersionInfo is not None:
                SDK['showVersion'] = SDKVersionInfo['showVersion']
            ret = apk_operate.configDeveloperInfo(channel, SDK, UsrSDKConfig, decompileDir)
            if ret:
                return
            # apk_operate.downloadUserConfigFile(channel,game,UsrSDKConfig)
            for child in SDK['operateLs']:
                if child['name'] == 'script' or child['name'] == 'Script':
                    bExecuteSpecialScipt = True
                    break

        taskManager.shareInstance().notify(idChannel, 65)
        # bMergeR = False
        ret, bMergeR = apk_operate.addSplashScreen(channel, decompileDir)
        if ret:
            return
        ret = encode_operate.encodeXmlFiles(workDir + '/decompile')
        if ret:
            return

        taskManager.shareInstance().notify(idChannel, 60)
        if bExecuteSpecialScipt:
            ret = special_script.doSpecialOperate(channel, decompileDir, newPackagename, SDKWorkDir)
            if ret:
                return

        taskManager.shareInstance().notify(idChannel, 70)
        if(ConfigParse.shareInstance().getChannelIcon(idChannel) != ''):
            iconDir = file_operate.get_server_dir()+'/workspace/'+ConfigParse.shareInstance().getOutputDir()+'/icon/'
            if not os.path.exists(iconDir):
                os.makedirs(iconDir)
            urllib.urlretrieve(ConfigParse.shareInstance().getChannelIcon(idChannel),iconDir+'icon.png')

            ret = apk_operate.pushIconIntoApk(game['gameName'], iconDir, decompileDir)
            if ret:
                return
        newAppName = ConfigParse.shareInstance().getAppName()
        #modify app display name by game setting
        apk_operate.modifyAppName(game, decompileDir, newAppName)
        #modify app display name by channel setting
        #if channel display_name is not null,the app displayname will be set by channel
        apk_operate.modifyAppNameByChannel(channel, decompileDir)

        apk_operate.writeDataIntoAndroidManifest(decompileDir, channel)
        taskManager.shareInstance().notify(idChannel, 75)
        for Channel_SDK in channel['sdkLs']:
            idSDK = Channel_SDK['idSDK']
            SDK = ConfigParse.shareInstance().findSDK(idSDK)
            if SDK is None:
                continue
            # for child in SDK['operateLs']:
            #     if child['name'] == 'mergeR':
            #         bMergeR = True
            #         break

        ret = apk_operate.produceNewRFile(newPackagename, decompileDir)
        if ret:
            return
        ret = apk_operate.splitDex(workDir, channel)
        if ret:
           return
        taskManager.shareInstance().notify(idChannel, 80)
        tempApkDir = workDir + '/tempApk'
        tempApkDir = file_operate.getFullPath(tempApkDir)
        tempApkName = '%s/game_%s_%s%s' % (tempApkDir,
                                           channel['idChannel'],
                                           versionName,
                                           extname)
        apk_operate.encryptApkByDeveloper(decompileDir)
        ret = apk_operate.recompileApk(decompileDir, tempApkName)
        if ret:
            return
        print '<---recompileApk success--->'
        taskManager.shareInstance().notify(idChannel, 90)
        for Channel_SDK in channel['sdkLs']:
            idSDK = Channel_SDK['idSDK']
            SDK = ConfigParse.shareInstance().findSDK(idSDK)
            if SDK == None:
                continue
            SDKSrcDir = file_operate.get_server_dir()+'/config/sdk/' + SDK['SDKName']
            SDKSrcDir = file_operate.getFullPath(SDKSrcDir)
            ForRootDir = SDKSrcDir + '/ForRootDir'
            if os.path.exists(ForRootDir):
                apk_operate.addForRootDir(tempApkName, ForRootDir)

        if os.path.exists(unknownFile):
            apk_operate.addForRootDir(tempApkName, unknownFile)
        ret = apk_operate.signApkAuto(tempApkName, game, channel)
        if ret:
            return
        #outputDir = ConfigParse.shareInstance().getOutputDir()
        #print '<---outputDir--->'+outputDir
	#if outputDir == '':
        #   outputDir = '../'

        #get date for apk file name
        import time

        dateStr = time.strftime("%Y%m%d%H%M%S")

        #get final apk name
        finalAppName = ''
        print '<---start rename apk--->'
        if game.get('isModifyAppName') is not None and game['isModifyAppName'] != False:
            finalAppName = game.get('gameName').encode('utf-8')
        display_name = channel['display_name'].encode('utf-8')
        if display_name is not None and display_name != '':
            finalAppName = display_name
	
        # if finalAppName == '':
        #     finalAppName = game.get('gameName')
        channel_name = channel['name'].encode('utf-8')
        #outputDir += '/' + game['gameName'] + '/' + versionName + '/' + channel_name
        #outputDir = file_operate.getFullPath(outputDir)
        #apkName = ('%s/%s_%s_%s_%s%s' % (outputDir,
         #                               finalAppName,
          #                              channel_name,
           #                             versionName,
            #                            dateStr,
             #                           extname)).encode('utf-8')
        apkName = sys.argv[5]
        print '<---Apk PATH--->'+apkName
        #if platform.system() == 'Windows':
         #   apkName = '%s/game_%s%s' % (outputDir, versionName, extname)
          #  print '<---apk path:'+apkName+'--->'
        strlist = apkName.split('/')
        outputDir = apkName.replace('/'+strlist[len(strlist)-1],'')
        print '<---outputDir--->'+outputDir
        ret = apk_operate.alignAPK(tempApkName, apkName,outputDir)
        if ret:
            return
        taskManager.shareInstance().notify(idChannel, 100)

"""
def buildGradle(channel):
    # setting gradle environ
    # libPath = file_operate.getToolPath('')
    # os.environ['PATH'] = libPath + '/gradle/bin:' + os.environ['PATH']
    # os.environ['GRADLE_OPTS'] = '-Dorg.gradle.native=false'

    idChannel = channel.get('idChannel')
    channelName = channel.get('name')
    channelNum = channel.get('channelNum')
    threading.currentThread().setName(idChannel)
    taskManager.shareInstance().notify(idChannel, 5)
    source = ConfigParse.shareInstance().getSource()  # GameSource
    basename = os.path.basename(source)
    game = ConfigParse.shareInstance().getCurrentGame()  # GameInfo
    if game is None:
        error_operate.error(3)
        return
    if channelName is None:
        error_operate.error(5)
        return
    taskManager.shareInstance().notify(idChannel, 10)

    # create workspace and copy game source
    workDir = '../workspace/' + channelNum
    workDir = file_operate.getFullPath(workDir)
    file_operate.delete_file_folder(workDir)
    if not os.path.exists(source):
        error_operate.error(60)
        return
    gameSource = workDir + '/' + basename
    file_operate.copyFiles(source, gameSource)  # copy game source
    taskManager.shareInstance().notify(idChannel, 20)

    # copy sdkplugin
    SDKWorkDir = workDir + '/sdk/'
    for Channel_SDK in channel['sdkLs']:
        idSDK = Channel_SDK['idSDK']
        SDK = ConfigParse.shareInstance().findSDK(idSDK)
        if SDK == None:
            continue
        SDKSrcDir = '../config/sdk/' + SDK['SDKName']
        SDKSrcDir = file_operate.getFullPath(SDKSrcDir)
        SDKDestDir = SDKWorkDir + SDK['SDKName']
        file_operate.copyFiles(SDKSrcDir, SDKDestDir)
    taskManager.shareInstance().notify(idChannel, 30)

    appModule = gameSource + '/app'  # module folder
    mainDir = appModule + '/src/main'
    taskManager.shareInstance().notify(idChannel, 45)
    # create developInfo.xml and SupportInfo.xml
    apk_operate.writeChannelInfoIntoDevelopInfo(mainDir, channel, game)
    apk_operate.writeSupportInfo(mainDir)
    taskManager.shareInstance().notify(idChannel, 50)

    bExecuteSpecialScipt = False
    for Channel_SDK in channel['sdkLs']:
        idSDK = Channel_SDK['idSDK']
        # sdkplugin config.xml
        UsrSDKConfig = ConfigParse.shareInstance().findUserSDKConfigBySDK(idSDK, channel['idChannel'])
        SDK = ConfigParse.shareInstance().findSDK(idSDK)
        if SDK == None:
            continue
        # merge resource in to game
        ret = apk_operate.packResIntoGame(SDKWorkDir, SDK, appModule, UsrSDKConfig)
        if ret:
            return
        SDKVersionInfo = ConfigParse.shareInstance().findSDKVersion(SDK['SDKName'])
        if SDKVersionInfo is not None:
            SDK['showVersion'] = SDKVersionInfo['showVersion']
        # merge resource in to developerInfo.xml
        ret = apk_operate.configDeveloperInfo(channel, SDK, UsrSDKConfig, mainDir)
        if ret:
            return
        # mark sdkplugin script
        for child in SDK['operateLs']:
            if child['name'] == 'script' or child['name'] == 'Script':
                bExecuteSpecialScipt = True
                break

    taskManager.shareInstance().notify(idChannel, 65)
    # add Splash Screen
    ret = apk_operate.addSplashScreenToSource(channel, mainDir)
    if ret:
        return
    # encode developInfo.xml and SupportInfo.xml
    ret = encode_operate.encodeXmlFiles(mainDir + '/')
    if ret:
        return

    taskManager.shareInstance().notify(idChannel, 60)
    # execute sdkplugin script
    if bExecuteSpecialScipt:
        ret = special_script.doSpecialOperate(channel, gameSource, channel['r_bundle_id'], SDKWorkDir)
        if ret:
            return

    taskManager.shareInstance().notify(idChannel, 70)
    # add icon
    ret = apk_operate.pushIconIntoApk(game['gameName'], channelNum, mainDir)
    if ret:
        return

    newAppName = ConfigParse.shareInstance().getAppName()
    #modify app display name by game setting
    apk_operate.modifyAppName(game, mainDir, newAppName)
    #modify app display name by channel setting
    #if channel display_name is not null,the app displayname will be set by channel
    apk_operate.modifyAppNameByChannel(channel, mainDir)

    apk_operate.writeDataIntoAndroidManifest(mainDir, channel)

    taskManager.shareInstance().notify(idChannel, 75)
    signInfo = apk_operate.getSignInfo(game, channel)
    if signInfo == 0:
        return

    buildFile = open(appModule + '/build.gradle', 'r')
    buildFiles = buildFile.readlines()
    buildFile.close()

    libsDir = appModule + '/libs'
    libsFiles = os.listdir(libsDir)
    libstr = ''
    for lib in libsFiles:
        exttuple = os.path.splitext(lib)
        filename = exttuple[0]
        extname = exttuple[1]
        if extname == '.aar':
            libstr = libstr + 'compile(name: \'' + filename + '\', ext: \'aar\')\n'

    newBuildFile = \
        '\nandroid {\n' \
        '   signingConfigs {\n' \
        '       release {\n' + \
        '           keyAlias \'%s\'\n' % (signInfo['keystoreAlias']) + \
        '           keyPassword \'%s\'\n' % (signInfo['keystoreAliasPwd']) + \
        '           storeFile file(\'%s\')\n' % (signInfo['keystoreFile']) + \
        '           storePassword \'%s\'\n' % (signInfo['keystorePwd']) + \
        '       }\n' \
        '   }\n' \
        '   productFlavors{\n' \
        '       rsdk{\n' \
        '           applicationId \"%s\"\n' % (channel['r_bundle_id']) + \
        '           versionCode %s\n' % (channel['r_gameversion_build']) + \
        '           versionName \'%s\'\n' % (channel['r_gameversion']) + \
        '           signingConfig signingConfigs.release\n' \
        '       }\n' \
        '   }\n' \
        '}\n' \
        'dependencies {\n' + \
        libstr + \
        '}'
    buildFiles.append(newBuildFile)

    buildStr = ''
    for str in buildFiles:
        buildStr = buildStr + str
    buildFile = open(appModule + '/build.gradle', 'w')
    buildFile.write(buildStr)
    buildFile.close()
    cmd = 'cd ' + gameSource + '; gradle --stacktrace --info clean'
    ret = file_operate.execFormatCmd(cmd)
    if ret:
        error_operate.error(130)
        return
    cmd = 'cd ' + gameSource + '; gradle --info assemblersdkRelease'
    ret = file_operate.execFormatCmd(cmd)
    if ret:
        error_operate.error(130)
        return
    import time

    dateStr = time.strftime("%Y%m%d%H%M%S")

    versionName = channel['r_gameversion']
    #get final apk name
    finalAppName = ''
    if game.get('isModifyAppName') is not None and game['isModifyAppName'] != False:
        finalAppName = game.get('gameName')
    if channel['display_name'] is not None and channel['display_name'] != '':
        finalAppName = channel['display_name']

    if finalAppName == '':
        finalAppName = game.get('gameName')

    outputDir = ConfigParse.shareInstance().getOutputDir()
    if outputDir == '':
        outputDir = '../'
    outputDir += '/' + game['gameName'] + '/' + versionName + '/' + channel['name']
    outputDir = file_operate.getFullPath(outputDir)
    apkName = '%s/%s_%s_%s_%s%s' % (outputDir,
                                    finalAppName,
                                    channel['name'],
                                    versionName,
                                    dateStr,
                                    '.apk')
    file_operate.copyFile(appModule + '/build/outputs/apk/app-rsdk-release.apk', apkName)
    taskManager.shareInstance().notify(idChannel, 100)
"""

def deleteWorkspace(channel):
    channelNum = channel['channelNum']
    workDir = file_operate.get_server_dir()+'/workspace/%s' %(channelNum)
    workDir = file_operate.getFullPath(workDir)
    file_operate.delete_file_folder(workDir)
# 定义函数 8.4
def inspectJDK():
    # print '<---inspectJDK LD_LIBRARY_PATH--> '+os.environ['LD_LIBRARY_PATH']
    (status,output)= commands.getstatusoutput('java -version')
    if status == 0:
        print output
        return True
    else:
        print "请先安装jdk"
        return False
#+++ okay decompyling rsdk1.4/Script/core.pyc
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:29 CST
