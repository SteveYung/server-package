#coding=utf-8
# 2015.01.17 10:32:29 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/coreios.py
import file_operate
import encode_operate
import error_operate
from http_manager import httpManager
import modifyManifest
from config import ConfigParse
from taskManagerModule import taskManager
import thread
import threading
import platform
import sys
import os
import time
import json
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
from xml.etree.ElementTree import Element
from xml.etree.ElementTree import ElementTree
from modifyPlist import *
from xml.dom import minidom
import codecs
from modifyProject import XcodeProject

def main(channel):
    idChannel = channel.get('idChannel')
    channelName = channel.get('name')
    channelNum = channel.get('channelNum')
    threading.currentThread().setName(idChannel)
    taskManager.shareInstance().notify(idChannel, 20)
    source = ConfigParse.shareInstance().getSource()
    basename = os.path.basename(source)
    exttuple = os.path.splitext(basename)
    basename = exttuple[0]
    extname = exttuple[1]
    originDir = ConfigParse.shareInstance().getProjFolder()
    useSDK = ConfigParse.shareInstance().getProjSDKVersion()
    systemSDKPath = ConfigParse.shareInstance().getProjSDKPath()
    ipaPackage = ConfigParse.shareInstance().getProjIpaPackage()
    game = ConfigParse.shareInstance().getCurrentGame()
    if channelName is None:
        error_operate.error(5)
        return
    versionName = ConfigParse.shareInstance().getVersionName()
    outputDir = ConfigParse.shareInstance().getOutputDir()
    if outputDir == '':
        outputDir = '../'
    #cocos2dx need cocos2dx framework,so we must put release pdroject to cocos2dx dictionary
    #outputDir += '/' + game['gameName'] + '/' + versionName + '/' + channel['name']
    outputDir+='/'+channel['name']+'_'+versionName

    outputDir = file_operate.getFullPath(outputDir)
    outputDir = os.path.realpath(outputDir)
    file_operate.delete_file_folder(outputDir)
    #workDir = outputDir + '/Project_iOS'
    workDir = outputDir
    workDir = file_operate.getFullPath(workDir)
    workDir = os.path.realpath(workDir)
    file_operate.delete_file_folder(workDir)
    iconDir = '../workspace/icon/' + channelNum
    iconDir = file_operate.getFullPath(iconDir)
    iconDir = os.path.realpath(iconDir)
    if not os.path.exists(outputDir):
        os.makedirs(outputDir)
    if not os.path.exists(workDir):
        os.makedirs(workDir)
    file_operate.copyFiles(originDir, workDir)
    pbxFile = workDir + '/' + ConfigParse.shareInstance().getProjXcode() + '/project.pbxproj'
    target_name = None
    project = XcodeProject.Load(pbxFile)
    #从congfig.py里的getTargetName取到要编译打包的target，没有的话用默认的最后一个target
    if ConfigParse.shareInstance().getTargetName():
        target_name = project_name = ConfigParse.shareInstance().getTargetName()
        print '----config ---- target name ----' + target_name
#        print 'ERROR_>'+target_name+'<_ERROR'
#        print 'WARNING_>'+target_name+'<_WARNING'
    else:
        target_name = project_name = project.get_target_name()

    project_config = project.get_configurations()
    #use release archieve ipa
    project_config = 'Release'
    project.add_other_ldflags('-ObjC')
    project.showSearchPathInfo()
    """add other flag param"""
    #project.add_other_ldflags('-lz')

    if project.modified:
        project.save()
    taskManager.shareInstance().notify(idChannel, 40)
    parentDir = ''
    for parent, dirnames, filenames in os.walk(workDir):
        for filename in filenames:
            if filename == 'Contents.json':
                if parent.find('Images.xcassets/AppIcon.appiconset') != -1:
                    parentDir = parent

    if parentDir != '':
        for parent, dirnames, filenames in os.walk(parentDir):
            for filename in filenames:
                if filename != 'Contents.json':
                    os.remove(parentDir + '/' + filename)

        jsonFile = open(parentDir + '/Contents.json')
        jsonContent = json.load(jsonFile)
        for child in jsonContent['images']:
            imgSize = int(child['size'][0:child['size'].find('x')]) * int(child['scale'][0:child['scale'].find('x')])
            imgName = 'Icon-' + str(imgSize) + '.png'
            if os.path.exists(iconDir + '/' + imgName) and not os.path.exists(parentDir + '/' + imgName):
                file_operate.copyFile(iconDir + '/' + imgName, parentDir + '/' + imgName)
            child['filename'] = imgName

        jsonContent = json.dumps(jsonContent)
        jsonFile.close()
        jsonFile = open(parentDir + '/Contents.json', 'w')
        try:
            jsonFile.write(jsonContent)
        finally:
            jsonFile.close()

    project_infoplist = workDir + '/' + ConfigParse.shareInstance().getProjXcode() + '/../' + project.get_infoplistfile()
    newAppName = ''
    if game.get('isModifyiOSName') is not None and game['isModifyiOSName'] == True:
        newAppName = ConfigParse.shareInstance().getIosName()
        if newAppName is None or newAppName == '':
            newAppName = game.get('gameName')
    #set display name by channel
    if channel['display_name']!='':
        newAppName=channel['display_name']

    customBundleId=channel['r_bundle_id'];
    if os.path.exists(project_infoplist) and (newAppName != '' or channel['packNameSuffix'] != '' or channel['r_gameversion']!='' or channel['r_gameversion_build']!='' or customBundleId!=''):
        plistModify = False
        try:
            plist = readPlist(project_infoplist)
            for key in plist:
                if key == 'CFBundleName' and newAppName != '':
                    plist['CFBundleName'] = newAppName
                    plistModify = True
                elif key == 'CFBundleIdentifier':
                    if customBundleId=='':
                        plist['CFBundleIdentifier'] = plist['CFBundleIdentifier'] + channel['packNameSuffix']
                    else:
                        plist['CFBundleIdentifier']=customBundleId
                    plistModify = True
                elif key == 'CFBundleShortVersionString' and channel['r_gameversion']!='':
                    plist['CFBundleShortVersionString'] = channel['r_gameversion']
                    plistModify = True
                elif key == 'CFBundleVersion' and channel['r_gameversion_build']!='':
                    plist['CFBundleVersion'] = channel['r_gameversion_build']
                    plistModify = True

            if plistModify == True:
                try:
                    writePlist(plist, project_infoplist)
                    project.modify_bundle_identifier(plist['CFBundleIdentifier'])
                    project.save()
                except Exception as e:
                    print 'modify bundle Id/bundle Name Error:'+e

        except:
            print 'No Plist found'

    writeChannelInfoIntoDevelopInfo(workDir, channel, game)
    writeSupportInfo(workDir)
    SDKWorkDir = workDir + '/sdk/'
    list = [0,
     2,
     1,
     3,
     4,
     5,
     6]
    for count in range(len(list)):
        for Channel_SDK in channel['sdkLs']:
            idSDK = Channel_SDK['idSDK']
            usrSDKConfig = ConfigParse.shareInstance().findUserSDKConfigBySDK(idSDK, channel['idChannel'])
            SDK = ConfigParse.shareInstance().findSDK(idSDK)
            if SDK == None:
                continue
            for plugin in SDK['pluginLs']:
                type = plugin['typePlugin']
                if type == list[count]:
                    SDKSrcDir = '../config/sdk/' + SDK['SDKName']
                    SDKSrcDir = file_operate.getFullPath(SDKSrcDir)
                    SDKDestDir = SDKWorkDir + SDK['SDKName']
                    SDKDestDir = os.path.realpath(SDKDestDir)
                    if os.path.exists(SDKDestDir):
                        continue
                    file_operate.copyFiles(SDKSrcDir, SDKDestDir)
                    lib_path = 'sdk/' + SDK['SDKName'] + '/'
                    project = XcodeProject.Load(pbxFile)
                    scriptPath = SDKDestDir + '/script.pyc'
                    if os.path.exists(scriptPath):
                        sys.path.append(SDKDestDir)
                        import script
                        script.script(SDK, workDir, target_name, usrSDKConfig, SDKDestDir,project)
                        del sys.modules['script']
                        sys.path.remove(SDKDestDir)
                    if os.path.exists(SDKDestDir + '/Frameworks'):
                        addFrameworkGroupPath(SDKDestDir + '/Frameworks',target_name,project)

                    if os.path.exists(SDKDestDir + '/Resources'):
                        for res in os.listdir(SDKDestDir + '/Resources'):
                            project.add_file(SDKDestDir + '/Resources/' + res, None, 'SOURCE_ROOT', True, False, False, target_name)

                    if os.path.exists(SDKDestDir + '/Codes'):
                        for codes in os.listdir(SDKDestDir + '/Codes'):
                            project.add_file(SDKDestDir + '/Codes/' + codes, None, 'SOURCE_ROOT', True, False, False, target_name)

                    if project.modified:
                        project.save()
                    xmlFile = SDKDestDir + '/config.xml'
                    doc = minidom.parse(xmlFile)
                    rootNode = doc.documentElement
                    sysFrameworksList = rootNode.getElementsByTagName('sysFrameworks')
                    for sysFrameworksNode in sysFrameworksList:
                        path = ''
                        required = False
                        if sysFrameworksNode.getAttribute('required') == '0':
                            required = True
                        if sysFrameworksNode.getAttribute('path') == 'xcodeFrameworks':
                            path = systemSDKPath + '/System/Library/Frameworks/' + sysFrameworksNode.getAttribute('name')
                        elif sysFrameworksNode.getAttribute('path') == 'xcodeUsrlib':
                            path = systemSDKPath + '/usr/lib/'
                            frameworkName=sysFrameworksNode.getAttribute('name')
                            #if ios 9 and above,replace .dylib to .tbd
                            if isIOS9(systemSDKPath):
                                print 'use ios 9 sdk for'+sysFrameworksNode.getAttribute('name')
                                path = path+frameworkName.replace('.dylib','.tbd')
                            else:
                                path=path+frameworkName
                                print 'donot use ios 9 sdk'
                        else:
                            path = sysFrameworksNode.getAttribute('path') + sysFrameworksNode.getAttribute('name')
                        ret = project.add_file_if_doesnt_exist(path, None, 'SOURCE_ROOT', True, required, False, target_name)
                        
                        if project.modified:
                            project.save()

                    for child in SDK['operateLs']:
                        if child['name'] == 'RemoveValidArchs_arm64':
                            project.modify_validarchs()
                            if project.modified:
                                project.save()

                    generateDeveloperInfo(channel, SDK, usrSDKConfig, workDir, game)
                    generatePluginInfo(SDK, usrSDKConfig, workDir)

    if os.path.exists(workDir + '/supportPlugin.xml'):
        encode_operate.xmlEncode(workDir + '/supportPlugin.xml')
        project.add_file(workDir + '/supportPlugin.xml', None, 'SOURCE_ROOT', True, False, False, target_name)
        if project.modified:
            project.save()
    if os.path.exists(workDir + '/developerInfo.xml'):
        encode_operate.xmlEncode(workDir + '/developerInfo.xml')
        project.add_file(workDir + '/developerInfo.xml', None, 'SOURCE_ROOT', True, False, False, target_name)
        if project.modified:
            project.save()
        taskManager.shareInstance().notify(idChannel, 70)
    if ipaPackage != 'True':
        taskManager.shareInstance().notify(idChannel, 100)
        return
    xcodeDir = workDir + '/' + ConfigParse.shareInstance().getProjXcode() + '/../'
    xcodeDir = os.path.realpath(xcodeDir)
    print 'XcodeDir '+xcodeDir
    #change dictionary first,then run build command
    os.chdir(xcodeDir)
    mode = 0
    if useSDK.find('simulator') == -1:
        mode = 1
    cmd = None
    projectFileName=ConfigParse.shareInstance().getProjXcode().replace('/','')
    if mode == 0:
        cmd = 'xcodebuild ' + useSDK + ' -target ' + target_name + ' -arch i386 >xcodebuild.txt'
    else:
        #clean project and target
        cmd = 'xcodebuild clean ' + useSDK + ' -project ' + projectFileName + ' -target ' + target_name
        ret = file_operate.execFormatCmd(cmd)
        #don't build. use archieve
        cmd = 'xcodebuild ' + useSDK + ' -target ' + target_name + '>xcodebuild.txt'
        #cmd = 'xcodebuild archive -scheme ' + target_name + '  -target ' + target_name + ' -archivePath ' + target_name + '.xcarchive >xcodearchive.txt'

    ret = file_operate.execFormatCmd(cmd)
    buildFile = workDir + '/xcodebuild.txt'
    if not os.path.exists(buildFile):
        print 'file not exists'
    else:
        file_object = open(buildFile)
        try:
            buildText = file_object.read()
            print buildText.find('BUILD SUCCEEDED')
            if buildText.find('BUILD SUCCEEDED') < 0:
                print 'BUILD FAILED!'
                error_operate.error(200)
                return
        finally:
            file_object.close()

    # ret = file_operate.execFormatCmd(cmd)
    # buildFile = workDir + '/xcodearchive.txt'
    # if not os.path.exists(buildFile):
    #     print 'file not exists'
    # else:
    #     file_object = open(buildFile)
    #     try:
    #         buildText = file_object.read()
    #         print buildText.find('** ARCHIVE SUCCEEDED **')
    #         if buildText.find('** ARCHIVE SUCCEEDED **') < 0:
    #             print 'ARCHIVE FAILED!'
    #             error_operate.error(200)
    #             return
    #     finally:
    #         file_object.close()

    appDir = None
    if mode == 0:
        appDir = project_config + '-iphonesimulator/'
    else:
        appDir = project_config + '-iphoneos/'
    ipaName = target_name + '_' + channelName + '_' + versionName + '.ipa'
    #use xcodebuild exportArchieve export ipa.this code don't contain Symbols.
    cmd = 'xcrun -sdk iphoneos PackageApplication -v ' + '"' + xcodeDir + '/build/' + appDir + project_name + '.app" -o "' + outputDir + '/' + ipaName + '"'
    #cmd = 'xcodebuild -exportArchive -archivePath ' + target_name + '.xcarchive -exportPath "' + xcodeDir + '" -exportFormat ipa >exportarchieve.txt'
    ret = file_operate.execFormatCmd(cmd)
    taskManager.shareInstance().notify(idChannel, 100)

#check xcode sdk version
def isIOS9(xcodeSDKPath):
    sdkSettingPath=xcodeSDKPath+'/SDKSettings.plist'
    if os.path.exists(sdkSettingPath):
        try:
            plist = readPlist(sdkSettingPath)
            if plist.has_key('Version'):
                sdkVersion=plist['Version']
                return float(sdkVersion)>=9.0
    
        except Exception as e:
            print 'check is ios9 Error '+e
            return False
    else:
        print sdkSettingPath+' is not exists'
        return False

def addInfoPlistConf(newPlist, confValue, confKey):
    if os.path.exists(newPlist):
        try:
            plist = readPlist(newPlist)
            try:
                plist[confKey]=confValue
                writePlist(plist, newPlist,False)
                print 'Write info.plist Success. name:'+confKey+' value:'+confValue
            except:
                print 'write info.plist Error. name:'+confKey+' value:'+confValue
        except Exception as e:
            print 'addInfoPlistConf Error'+e
    else:
        print 'addInfoPlistConf'+newPlist+' is not exists'

def addUrlSchemes(newPlist, urlSchemes, urlName):
    if os.path.exists(newPlist):
        try:
            plist = readPlist(newPlist)
            if plist.has_key('CFBundleURLTypes'):
                urlTypes=plist['CFBundleURLTypes']
            else:
                urlTypes=[]
            try:
                if isinstance(urlSchemes,list):
                    urlTypeDic={ 'CFBundleTypeRole': 'Editor', 'CFBundleURLName': urlName,'CFBundleURLSchemes':urlSchemes }
                else:
                    urlTypeDic={ 'CFBundleTypeRole': 'Editor', 'CFBundleURLName': urlName,'CFBundleURLSchemes':[urlSchemes] }

                if urlTypeDic not in urlTypes:
                    urlTypes.append(urlTypeDic)
                    plist['CFBundleURLTypes']=urlTypes
                    writePlist(plist, newPlist,False)
                print 'Write urlSechemes Success'
            except:
                print 'write plist Error'
        except Exception as e:
            print 'addUrlSechemes Error'+e
    else:
        print newPlist+' is not exists'

def addUIInterfaceOrientation(newPlist,orientationValue):
    if os.path.exists(newPlist):
        try:
            plist = readPlist(newPlist)
            if plist.has_key('UISupportedInterfaceOrientations'):
                orientationArray=plist['UISupportedInterfaceOrientations']
            else:
                orientationArray=[]
            try:
                if orientationValue not in orientationArray:
                    orientationArray.append(orientationValue)
                    writePlist(plist, newPlist,False)
                print 'Write UIInterfaceOrientation Success'
            except:
                print 'Plugin Write UIInterfaceOrientation Error'
        except Exception as e:
            print 'addUIInterfaceOrientation Error'+e
    else:
        print newPlist+' is not exists'

def deleteWorkspace(channel):
    channelNum = channel['channelNum']
    gameIconDir = '../workspace/icon/' + channelNum
    gameIconDir = file_operate.getFullPath(gameIconDir)
    file_operate.delete_file_folder(gameIconDir)


def generatePluginInfo(SDK, usrSDKConfig, workDir):
    """the infomation about Plugin would configure here"""
    PluginFile = workDir + '/supportPlugin.xml'
    targetTree = None
    targetRoot = None
    pluginLsNode = None

#    if os.path.exists(PluginFile):
#        file_operate.delete_file_folder(PluginFile)

    if not os.path.exists(PluginFile):
        targetTree = ElementTree()
        targetRoot = Element('support')
        targetTree._setroot(targetRoot)
    else:
        targetTree = ET.parse(PluginFile)
        targetRoot = targetTree.getroot()
    for plugin in SDK['pluginLs']:
        type = plugin['typePlugin']
        typeTag = '<plugin>'
        if type == 0:
            typeTag = 'user_plugin'
            if not usrSDKConfig['type'] & 32:
                continue
        elif type == 1:
            typeTag = 'ads_plugin'
            if not usrSDKConfig['type'] & 16:
                continue
        elif type == 2:
            typeTag = 'iap_plugin'
            if not usrSDKConfig['type'] & 8:
                continue
        elif type == 3:
            typeTag = 'social_plugin'
            if not usrSDKConfig['type'] & 128:
                continue
        elif type == 4:
            typeTag = 'share_plugin'
            if not usrSDKConfig['type'] & 2:
                continue
        elif type == 5:
            typeTag = 'analytics_plugin'
            if not usrSDKConfig['type'] & 1:
                continue
        elif type == 6:
            typeTag = 'push_plugin'
            if not usrSDKConfig['type'] & 64:
                continue
        pluginName = plugin['name']
        if pluginName is None:
            file_operate.printf('pluginName error')
            error_operate.error(109)
            return 1
        pluginLsNode = targetRoot.find(typeTag)
        if pluginLsNode is not None:
            for plugin in pluginLsNode.getchildren():
                if plugin.text == pluginName:
                    pluginLsNode.remove(plugin)

        if pluginLsNode is None:
            pluginLsNode = SubElement(targetRoot, typeTag)
        paramNode = SubElement(pluginLsNode, 'param')
        paramNode.text = pluginName
        paramNode.set('name', pluginName)
        paramNode.set('pluginName', SDK['SDKName'])
        paramNode.set('pluginId', SDK['SDKNum'])

    targetTree.write(PluginFile, 'UTF-8')
    file_operate.printf('generate supportPlugin.xml success')
    return 0


def generateDeveloperInfo(channel, SDK, usrSDKConfig, workDir, game):
    """the infomation about developer would configure here
    the value of element's attribute cann't be int
    """
    developerFile = workDir + '/developerInfo.xml'
    targetTree = None
    targetRoot = None
    
    if not os.path.exists(developerFile):
        targetTree = ElementTree()
        targetRoot = Element('developer')
        targetTree._setroot(targetRoot)
    else:
        targetTree = ET.parse(developerFile)
        targetRoot = targetTree.getroot()
    infoNode = targetRoot.find('channel')
    if infoNode is None:
        infoNode = SubElement(targetRoot, 'channel')
    channelNum = str(channel.get('customChannelNumber'))
    if channelNum == '' or channelNum is None:
        channelNum = str(channel.get('channelNum'))
    if infoNode.get('idChannel') is None:
        infoNode.set('idChannel', channelNum)
        infoNode.set('uApiKey', channel['uapiKey'])
        infoNode.set('uApiSecret', channel['uapiSecret'])
        infoNode.set('oauthLoginServer', channel['oauthLoginServer'])
        infoNode.set('privateKey', game['privateKey'])
        if channel['extChannel'] is not None:
            infoNode.set('extChannel', channel['extChannel'])
        if game.get('order_url') is not None and game['order_url'] != '':
            infoNode.set('order_url', game['order_url'])
    if usrSDKConfig['type'] & 8:
        for plugin in SDK['pluginLs']:
            type = plugin['typePlugin']
            if type == 2:
                pluginName = plugin['name']
                notifyName = pluginName + '_notify_url'
                notifyValue = ''
                if usrSDKConfig.get('notify_url') is not None:
                    notifyValue = usrSDKConfig['notify_url']
                if notifyValue == '':
                    notifyValue = SDK['orderCallback']
                if notifyValue != '':
                    infoNode.set(notifyName, notifyValue)
                break
    if channel['r_big_app_id'] is not None:
        infoNode.set('r_big_app_id', str(channel['r_big_app_id']))
    if channel['r_sub_app_id'] is not None:
        infoNode.set('r_sub_app_id', str(channel['r_sub_app_id']))
    if SDK.get('showVersion') is not None:
        attrName = SDK['SDKName'] + '_Version'
        infoNode.set(attrName, SDK['showVersion'])
    for param in usrSDKConfig['param']:
        if param['bWriteIntoClient'] and not param['bWriteIntoManifest']:
            paramName = param['name']
            pos = paramName.find('##')
            if pos != -1:
                paramName = paramName[pos + 2:]
            infoNode.set(paramName, param['value'])

    targetTree.write(developerFile, 'UTF-8')
    file_operate.printf('generate developerInfo.xml success')


def writeChannelInfoIntoDevelopInfo(workDir, channel, game):
    """
    the infomation about channel would configure here
    """
    developerFile = workDir + '/developerInfo.xml'
    targetTree = None
    targetRoot = None
    
    if os.path.exists(developerFile):
        file_operate.delete_file_folder(developerFile)
    
    if not os.path.exists(developerFile):
        targetTree = ElementTree()
        targetRoot = Element('developer')
        targetTree._setroot(targetRoot)
    else:
        print 'exists developerInfo!!!----'+developerFile
        targetTree = ET.parse(developerFile)
        targetRoot = targetTree.getroot()
    infoNode = targetRoot.find('channel')
    if infoNode is None:
        infoNode = SubElement(targetRoot, 'channel')
    channelNum = str(channel.get('customChannelNumber'))
    if channelNum == '' or channelNum is None:
        channelNum = str(channel.get('channelNum'))
    if infoNode.get('idChannel') is None:
        infoNode.set('idChannel', channelNum)
        infoNode.set('uApiKey', channel['uapiKey'])
        infoNode.set('uApiSecret', channel['uapiSecret'])
        infoNode.set('oauthLoginServer', channel['oauthLoginServer'])
        if channel['extChannel'] is not None:
            infoNode.set('extChannel', channel['extChannel'])
        if game.get('privateKey') is not None:
            infoNode.set('privateKey', game['privateKey'])
        if game.get('order_url') is not None and game['order_url'] != '':
            infoNode.set('order_url', game['order_url'])
        infoNode.set('standby_domain_name', 'pay.rsdk.com')
    targetTree.write(developerFile, 'UTF-8')
    file_operate.printf("Save channel's information to developerInfo.xml success")

def writeSupportInfo(workDir):
    PluginFile = workDir + '/supportPlugin.xml'
    targetTree = None
    targetRoot = None
    pluginLsNode = None
    if not os.path.exists(PluginFile):
        targetTree = ElementTree()
        targetRoot = Element('support')
        targetTree._setroot(targetRoot)
        targetTree.write(PluginFile, 'UTF-8')


#根据传入的replaceFlag替换指定方法里的相应的 代码标记 达到为该方法添加代码的目的
def modify_file(workDir,strForReplace,funName):
    #AppController.mm的路径(appctrl_path帝国争霸，超级舰队的。appctrl_path2是战舰传奇的)
    appctrlPath = workDir + '/AppController.mm'
    appctrlPath2 = workDir + '/ios/AppController.mm'

    #如果没有AppController.mm就去找AppDelegate.m的路径
    xcodeProjPath = workDir +'/'+ ConfigParse.shareInstance().getProjXcode()
    AppDelegatePath = xcodeProjPath[:-10] + '/AppDelegate.m'

    replaceFlag = '#pragma mark rsdk_'+funName+'_end' #根据传入的funName拼接 代码标记
    replaceStr = strForReplace +'\n'+ replaceFlag #要添加的代码 + 代码标记
    print 'replaceStr===>' + replaceStr

    #判断AppController.mm或者AppDelegate.m文件路径
    if os.path.exists(appctrlPath):
        content = replace_file(appctrlPath,replaceFlag,replaceStr)
        write_str_to_file(appctrlPath,content)
    elif os.path.exists(appctrlPath2):
        content = replace_file(appctrlPath2,replaceFlag,replaceStr)
        write_str_to_file(appctrlPath2,content)
    elif os.path.exists(AppDelegatePath):
        content = replace_file(AppDelegatePath,replaceFlag,replaceStr)
        write_str_to_file(AppDelegatePath,content)
    else:
        print 'not exist appcontroller.mm or appdelegate.m'
    return

#根据AppController.mm或者AppDelegate.m路径和修改后的content重新写入文件
def write_str_to_file(appPath,content):
    tempFile = open(appPath,'w')
    try:
        tempFile.write(content)
    finally:
        tempFile.close()

#替换AppController.mm或者AppDelegate.m文件内容
def replace_file(appPath,replaceFlag,replaceStr):
    allFileStr = read_file_to_str(appPath)
    content = allFileStr.replace(replaceFlag,replaceStr) #用（要添加的代码 + 代码标记）去替换 代码标记，确保每次替换完后 代码标记 还存在
    return content

#把AppController.mm或者AppDelegate.mm读到一个fileStr字符串里
def read_file_to_str(filePath):
    fileStr = ''
    fileObj = open(filePath)
    try:
        fileStr = fileObj.read().rstrip('\n')
    finally:
        fileObj.close()
    return fileStr

#遍历rsdk里的Frameworks文件夹，将所有的资源引入到工程
def addFrameworkGroupPath(GroupPath,target_name,project):
    extname = os.path.splitext(GroupPath)[1]
    if os.path.isdir(GroupPath) and extname != '.framework' and extname != '.bundle':
        for fwork_GroupPath in os.listdir(GroupPath):
            addFrameworkGroupPath(GroupPath+'/'+fwork_GroupPath,target_name,project)
            # print '124'
    else:
        project.add_file(GroupPath, None, 'SOURCE_ROOT', True, False, False, target_name)
        project.add_framework_search_paths(GroupPath, target_name)

#+++ okay decompyling rsdk1.4/Script/coreios.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:30 CST