# 2015.01.17 10:32:27 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/apk_operate.py
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
from xml.etree.ElementTree import Element
from xml.etree.ElementTree import ElementTree
import time
import file_operate
import os
import os.path
import zipfile
import re
import modifyManifest
import subprocess
import platform
import error_operate
from xml.dom import minidom
import codecs
import hashlib
import threading
import json
from config import ConfigParse
import urllib
import sys
import stat
sys.path.append('module')
androidNS = 'http://schemas.android.com/apk/res/android'

def dexTrans2Smali(dexFile, targetDir, step, baksmali = 'baksmali.jar'):
    if not os.path.exists(targetDir):
        os.mkdir(targetDir)
    if os.path.exists(dexFile):
        dexFile = file_operate.getFullPath(dexFile)
        smaliFile = file_operate.getToolPath(baksmali)
        targetDir = file_operate.getFullPath(targetDir)
        cmd = '"%s" -jar "%s" -o "%s" "%s"' % (file_operate.getJava(),
         smaliFile,
         targetDir,
         dexFile)
        ret = file_operate.execFormatCmd(cmd)
        if ret:
            if step == 3:
                error_operate.error(30)
                return 1
            elif step == 4:
                error_operate.error(40)
                return 1
            else:
                error_operate.error(105)
                return 1
        else:
            return 0


def smaliTrans2dex(smaliDir, targetFile):
    smaliDir = file_operate.getFullPath(smaliDir)
    targetFile = file_operate.getFullPath(targetFile)
    smaliFile = file_operate.getToolPath('smali.jar')
    cmd = '"%s" -jar "%s" "%s" -o "%s"' % (file_operate.getJava(),
     smaliFile,
     smaliDir,
     targetFile)
    ret = file_operate.execFormatCmd(cmd)
    if ret:
        error_operate.error(50)
        return 1
    else:
        file_operate.delete_file_folder('file/smali')
        return 0


def addFileToApk(srcfile, apkFile):
    if os.path.exists(srcfile) and os.path.exists(apkFile):
        apkFile = file_operate.getFullPath(apkFile)
        aapt = file_operate.getToolPath('aapt')
        rmcmd = '"%s" remove "%s" "%s"' % (aapt, apkFile, 'classes.dex')
        bReturn = file_operate.execFormatCmd(rmcmd)
        if bReturn:
            error_operate.error(70)
            return 1
        f = zipfile.ZipFile(apkFile, 'a', zipfile.ZIP_DEFLATED)
        f.write(srcfile, 'classes.dex')
        f.close()
        file_operate.printf('add file:' + srcfile)
        return 0


def addForRootDir(tempApkName, SrcDir):
    f = zipfile.ZipFile(tempApkName, 'a', zipfile.ZIP_DEFLATED)
    for parent, dirnames, filenames in os.walk(SrcDir):
        for file in filenames:
            sourceFile = parent + '/' + file
            targetFile = (parent + '/' + file)[len(SrcDir):]
            f.write(sourceFile, targetFile)

    f.close()


def addOldRootResource(tempApkName, sourceFile, workDir):
    """addOldRootResource"""
    bNeedAdd = False
    fSource = zipfile.ZipFile(sourceFile)
    lsFiles = fSource.namelist()
    for filetmp in lsFiles:
        filename = filetmp
        idxFind = filetmp.find('/')
        if idxFind != -1:
            filename = filename[:idxFind]
        if filename != 'assets' and filename != 'lib' and filename != 'res' and filename != 'classes.dex' and filename != 'META-INF' and filename != 'AndroidManifest.xml' and filename != 'resources.arsc':
            bNeedAdd = True
            break

    if bNeedAdd == False:
        return 0
    unzipFile = workDir + '/unzip'
    file_operate.decompression(sourceFile, unzipFile)
    f = zipfile.ZipFile(tempApkName, 'a', zipfile.ZIP_DEFLATED)
    for filetmp in os.listdir(unzipFile):
        if filetmp != 'assets' and filetmp != 'lib' and filetmp != 'res' and filetmp != 'classes.dex' and filetmp != 'META-INF' and filetmp != 'AndroidManifest.xml' and filetmp != 'resources.arsc':
            filepath = unzipFile + '/' + filetmp
            if os.path.isdir(filepath):
                for parent, dirnames, filenames in os.walk(filepath):
                    for filename in filenames:
                        sourceFile = parent + '/' + filename
                        targetFile = (parent + '/' + filename)[len(unzipFile):]
                        f.write(sourceFile, targetFile)

            elif os.path.isfile(filepath):
                targetFile = filepath[len(unzipFile):]
                f.write(filepath, targetFile)

    f.close()

def getSignInfo(game, channel):
    """"""
    keystorePath = file_operate.getFullPath('../config/games/' + game['gameName'] + '/keystore/')
    defaultPath = file_operate.getFullPath('')
    keystoreFile = channel['keystoreFile']
    keystorePwd = channel['keystorePwd']
    keystoreAlias = channel['keystoreAlias']
    keystoreAliasPwd = channel['keystoreAliasPwd']
    keystore = {}
    keystore['file'] = game['keystoreFile']
    keystore['storepassword'] = game['keystorePwd']
    keystore['keyalias'] = game['keystoreAlias']
    keystore['aliaspassword'] = game['keystoreAliasPwd']
    if keystoreFile != '' and keystorePwd != '' and keystoreAlias != '' and keystoreAliasPwd != '':
        print('apk sign with channelInfo')
        if not os.path.exists(keystoreFile):
            keystoreFile = keystorePath + keystoreFile
            if not os.path.exists(keystoreFile):
                keystoreFile = defaultPath + channel['keystoreFile']
        ret = {'keystoreFile' : keystoreFile, 'keystorePwd': keystorePwd, 'keystoreAlias': keystoreAlias, 'keystoreAliasPwd': keystoreAliasPwd}
        if ret:
            return ret
    else:
        print('apk sign with gameInfo')
        keystoreFile = keystore.get('file')
        if keystoreFile != '' and keystore.get('storepassword') != '' and keystore.get('keyalias') != '' and keystore.get('aliaspassword') != '':
            if not os.path.exists(keystoreFile):
                keystoreFile = keystorePath + keystoreFile
            ret = {'keystoreFile': keystoreFile, 'keystorePwd': keystore.get('storepassword'), 'keystoreAlias': keystore.get('keyalias'), 'keystoreAliasPwd': keystore.get('aliaspassword')}
            if ret:
                return ret
        else:
            keystoreFile = file_operate.getFullPath(file_operate.get_server_dir()+'/config/keystore/default.keystore')
            ret = {'keystoreFile' : keystoreFile, 'keystorePwd': '123456', 'keystoreAlias': '123456', 'keystoreAliasPwd': '123456'}
            if ret:
                return ret
    return 0

def signApk(apkFile, keyStore, storepassword, keyalias, aliaspassword):
    if not os.path.exists(keyStore):
        print('apk sign------keyStoreFile not exists')
        return 0
    print '<---sign apk begin--->'
    apkFile = file_operate.getFullPath(apkFile)
    print '<---apkFile--->'+apkFile
    keyStore = file_operate.getFullPath(keyStore)
    print '<---keyStore--->'+keyStore
    aapt = file_operate.getToolPath('aapt')
    listcmd = '%s list %s' % (aapt, apkFile)
    listcmd = listcmd.encode('gb2312')
    output = os.popen(listcmd).read()
    for filename in output.split('\n'):
        if filename.find('META-INF') == 0:
            rmcmd = '"%s" remove "%s" "%s"' % (aapt, apkFile, filename)
            bReturn = file_operate.execFormatCmd(rmcmd)
    #os.environ['LD_LIBRARY_PATH']=''
    jarsingnCmd = '"%sjarsigner" -keystore "%s" -storepass "%s"         -keypass "%s" "%s"  "%s" -sigalg SHA1withRSA -digestalg SHA1' % (file_operate.getJavaBinDir(),
     keyStore,
     storepassword,
     aliaspassword,
     apkFile,
     keyalias)
    ret = file_operate.execFormatCmd(jarsingnCmd)
    if ret:
        error_operate.error(140)
        return 1
    print('<---apk sign successed--->')
    return 0


def signApkAuto(apkFile, game, channel,keystore_dir=None):
    """"""
    # keystorePath = file_operate.getFullPath(file_operate.get_server_dir()+'/config/games/' + game['gameName'] + '/keystore/')
    # defaultPath = file_operate.getFullPath('')
    if keystore_dir is None:
        keystore_dir = ConfigParse.shareInstance().getOutputDir()
    keystoreFile = channel['keystoreFile']
    keystorePwd = channel['keystorePwd']
    keystoreAlias = channel['keystoreAlias']
    keystoreAliasPwd = channel['keystoreAliasPwd']
    keystore = {}
    keystore['file'] = game['keystoreFile']
    keystore['storepassword'] = game['keystorePwd']
    keystore['keyalias'] = game['keystoreAlias']
    keystore['aliaspassword'] = game['keystoreAliasPwd']
    if keystoreFile != '' and keystorePwd != '' and keystoreAlias != '' and keystoreAliasPwd != '':
        print '<---Sign apk with ChannelInfo--->'
        channelkeystoreDir = file_operate.get_server_dir()+'/workspace/'+keystore_dir+'/keystore/'
        if not os.path.exists(channelkeystoreDir):
            os.makedirs(channelkeystoreDir)
        urllib.urlretrieve(keystoreFile,channelkeystoreDir+'channel.keystore')
        print '<---channelkeystoreFile--->'+channelkeystoreDir+'channel.keystore'
            # keystoreFile = keystorePath.encode('utf-8') + keystoreFile.encode('utf-8')
            # print '<---keystoreFile2--->'+keystoreFile
            # if not os.path.exists(keystoreFile):
            #     keystoreFile = file_operate.get_server_dir()+'/config/keystore/1.keystore'
        ret = signApk(apkFile, channelkeystoreDir+'channel.keystore', keystorePwd, keystoreAlias, keystoreAliasPwd)
        # print ('<---sign Apk ret--->%d' %(ret))
        if ret:
            return 1
    else:
        print('<---apk sign with gameInfo--->')
        keystoreFile = keystore.get('file')
        if keystoreFile != '' and keystore.get('storepassword') != '' and keystore.get('keyalias') != '' and keystore.get('aliaspassword') != '':
            gamekeystoreDir = file_operate.get_server_dir()+'/workspace/'+keystore_dir+'/keystore/'
            if not os.path.exists(keystoreFile):
                os.makedirs(gamekeystoreDir)
            urllib.urlretrieve(keystoreFile,gamekeystoreDir+'game.keystore')
            print '<---gamekeystoreFile--->'+gamekeystoreDir+'game.keystore'
            ret = signApk(apkFile, gamekeystoreDir+'game.keystore', keystore.get('storepassword'), keystore.get('keyalias'), keystore.get('aliaspassword'))
            if ret:
                return 1
        else:
            keystoreFile = file_operate.getFullPath('../config/keystore/default.keystore')
            ret = signApk(apkFile, keystoreFile, '123456', '123456', '123456')
            if ret:
                return 1
    return 0


def alignAPK(tempApkFile, apkFile,outputDir):
    if not os.path.exists(outputDir):
        os.makedirs(outputDir)
    align = file_operate.getToolPath('zipalign')
    aligncmd = '"%s" -f 4 "%s" "%s"' % (align, tempApkFile.encode('utf-8'), apkFile.encode('utf-8'))
    print '<---align cmd--->%s' %(aligncmd)
    ret = file_operate.execFormatCmd(aligncmd)
    if ret:
        error_operate.error(250)
        return 1
    print '{"ret":"success","msg":"run pack success"}'
    return 0


def decompileApk(apkFile, targetDir, lock, apkTool = 'apktool2.jar'):
    """
        Decompile apk
    """
    print '<---decompileApk begin--->'
    apkFile = file_operate.getFullPath(apkFile)
    targetDir = file_operate.getFullPath(targetDir)
    apkTool = file_operate.getToolPath(apkTool)
    if os.path.exists(targetDir):
        file_operate.delete_file_folder(targetDir)
    if not os.path.exists(targetDir):
        os.makedirs(targetDir)
    if lock != None:
        lock.acquire()
  #  print '<---LD_LIBRRY_PATH-->'+os.environ['LD_LIBRARY_PATH']
    cmd = '"%s" -jar "%s" -q d -b -f "%s" -o "%s"' % (file_operate.getJava(),
     apkTool,
     apkFile,
     targetDir)
    print '<---decompile apk cmd:'+cmd
    ret = file_operate.execFormatCmd(cmd)
    if lock != None:
        lock.release()
    if ret:
        error_operate.error(80)
        return 1
    else:
        return 0


def recompileApk(srcFolder, apkFile, apkTool = 'apktool2.jar'):
    """
        recompile Apk after decompile apk.
    """
    os.chdir(file_operate.curDir)
    apkFile = file_operate.getFullPath(apkFile)
    srcFolder = file_operate.getFullPath(srcFolder)
    apkTool = file_operate.getToolPath(apkTool)
    if os.path.exists(srcFolder):
        cmd = '"%s" -jar "%s" -q b -f "%s" -o "%s"' % (file_operate.getJava(),
         apkTool,
         srcFolder,
         apkFile)
        ret = file_operate.execFormatCmd(cmd)
        if ret:
            error_operate.error(130)
            return 1
        else:
            return 0


def getPackageName(decompileDir):
    """
    
    """
    manifest = decompileDir + '/AndroidManifest.xml'
    ET.register_namespace('android', androidNS)
    targetTree = ET.parse(manifest)
    root = targetTree.getroot()
    package = root.attrib.get('package')
    old_package = package
    return old_package

#by tonet reset android version
def resetApkVersion(manifest = 'file/decompile/AndroidManifest.xml',versionCode='1.0.0',versionName='1.0'):
    """
    :param manifest:manifest path
    :param versionCode:
    :param versionName:
    :return:
    """
    manifest = file_operate.getFullPath(manifest)
    ET.register_namespace('android', androidNS)
    targetTree = ET.parse(manifest)
    root = targetTree.getroot()
    root.attrib['android:versionCode'] = versionCode
    root.attrib['android:versionName']=versionName
    targetTree.write(manifest, 'UTF-8')

def renameApkPackage(smaliFolder = 'file/decompile/smali', manifest = 'file/decompile/AndroidManifest.xml', pluginPackageName = '.nd91',newPackageNameString=''):
    """
        rename apk package name.
    """
    manifest = file_operate.getFullPath(manifest)
    ET.register_namespace('android', androidNS)
    targetTree = ET.parse(manifest)
    root = targetTree.getroot()
    bRet = False
    package = root.attrib.get('package')
    old_package = package
    applicationNode = root.find('application')
    if applicationNode != None:
        activityLs = applicationNode.findall('activity')
        key = '{' + androidNS + '}name'
        if activityLs != None and len(activityLs) > 0:
            for node in activityLs:
                activityName = node.attrib[key]
                if activityName[0:1] == '.':
                    activityName = old_package + activityName
                elif activityName.find('.') == -1:
                    activityName = old_package + '.' + activityName
                node.attrib[key] = activityName

        serviceLs = applicationNode.findall('service')
        key = '{' + androidNS + '}name'
        if serviceLs != None and len(serviceLs) > 0:
            for node in serviceLs:
                serviceName = node.attrib[key]
                if serviceName[0:1] == '.':
                    serviceName = old_package + serviceName
                elif serviceName.find('.') == -1:
                    serviceName = old_package + '.' + serviceName
                node.attrib[key] = serviceName
    #custom packagename by chenxunhua
    if newPackageNameString=='':
        package = package + pluginPackageName
    else:
        package=newPackageNameString;
    root.attrib['package'] = package
    targetTree.write(manifest, 'UTF-8')
    packagename = package
    return packagename


def packResIntoApk(SDKWorkDir, SDK, decompileDir, packageName, usrSDKConfig):
    """There are different in different channels"""
    SDKDir = SDKWorkDir + SDK['SDKName']
    for child in SDK['operateLs']:
        if child['name'] == 'modifyManifest':
            modifyFrom = child['from']
            modifyTo = child['to']
            if modifyFrom == None and modifyTo == None:
                file_operate.printf('Operate error, Please check your config in config.xml')
                error_operate.error(100)
                return 1
            modifyFrom = os.path.join(SDKDir, modifyFrom)
            modifyTo = os.path.join(decompileDir, modifyTo)
            modifyFrom = file_operate.getFullPath(modifyFrom)
            modifyTo = file_operate.getFullPath(modifyTo)
            modifyManifest.modify(modifyTo, modifyFrom, SDK['SDKName'], usrSDKConfig)
        elif child['name'] == 'copy':
            copyFrom = child['from']
            copyTo = child['to']
            if copyFrom == None and copyTo == None:
                file_operate.printf('Operate error, Please check your config in config.xml')
                error_operate.error(101)
                return 1
            copyFrom = os.path.join(SDKDir, copyFrom)
            copyFrom = file_operate.getFullPath(copyFrom)
            copyTo = os.path.join(decompileDir, copyTo)
            copyTo = file_operate.getFullPath(copyTo)
            if child['to'] == 'lib':
                armPath = os.path.join(copyFrom, 'armeabi')
                armTo = os.path.join(copyTo, 'armeabi')
                armv7From = os.path.join(copyFrom, 'armeabi-v7a')
                armv7To = os.path.join(copyTo, 'armeabi-v7a')
                x86From = os.path.join(copyFrom, 'x86')
                x86To = os.path.join(copyTo, 'x86')
                isCocosPlay = ConfigParse.shareInstance().isCocosPlayMode()
                if isCocosPlay:
                    if not os.path.exists(copyTo):
                        if os.path.exists(armPath):
                            copyResToApk(armPath, armTo)
                        if os.path.exists(armv7From):
                            copyResToApk(armv7From, armv7To)
                        if os.path.exists(x86From):
                            copyResToApk(x86From, x86To)
                if os.path.exists(armv7From) and os.path.exists(armv7To):
                    copyResToApk(armv7From, armv7To)
                elif os.path.exists(armPath) and os.path.exists(armv7To):
                    copyResToApk(armPath, armv7To)
                if os.path.exists(armPath) and os.path.exists(armTo):
                    copyResToApk(armPath, armTo)
                if os.path.exists(x86From) and os.path.exists(x86To):
                    copyResToApk(x86From, x86To)
                continue
            copyResToApk(copyFrom, copyTo)

    return 0

def packResIntoGame(SDKWorkDir, SDK, gameDir, usrSDKConfig):
    """There are different in different channels"""
    SDKDir = SDKWorkDir + SDK['SDKName']
    for child in SDK['operateLs']:
        if child['name'] == 'modifyManifest':
            modifyFrom = child['from']
            modifyTo = child['to']
            if modifyFrom == None and modifyTo == None:
                file_operate.printf('Operate error, Please check your config in config.xml')
                error_operate.error(100)
                return 1
            modifyFrom = os.path.join(SDKDir, modifyFrom)
            modifyTo = os.path.join(gameDir + '/src/main', modifyTo)
            modifyFrom = file_operate.getFullPath(modifyFrom)
            modifyTo = file_operate.getFullPath(modifyTo)
            modifyManifest.modify(modifyTo, modifyFrom, SDK['SDKName'], usrSDKConfig)
        elif child['name'] == 'copy':
            copyFrom = child['from']
            copyTo = child['to']
            if copyFrom == None and copyTo == None:
                file_operate.printf('Operate error, Please check your config in config.xml')
                error_operate.error(101)
                return 1
            copyFrom = os.path.join(SDKDir, copyFrom)
            copyFrom = file_operate.getFullPath(copyFrom)
            copyTo = os.path.join(gameDir, copyTo)
            copyTo = file_operate.getFullPath(copyTo)
            copyResToApk(copyFrom, copyTo)

    return 0


def copyResToApk(copyFrom, copyTo):
    if not os.path.exists(copyFrom) and not os.path.exists(copyTo):
        file_operate.printf('copy Files from %s to %s Fail:file not found' % (copyFrom, copyTo))
        return
    if os.path.isfile(copyFrom):
        if not appendResXml(copyFrom, copyTo):
            file_operate.copyFile(copyFrom, copyTo)
        return
    for file in os.listdir(copyFrom):
        sourceFile = os.path.join(copyFrom, file)
        targetFile = os.path.join(copyTo, file)
        if os.path.isfile(sourceFile):
            if not os.path.exists(copyTo):
                os.makedirs(copyTo)
            if appendResXml(sourceFile, targetFile):
                continue
            if not os.path.exists(targetFile) or os.path.exists(targetFile) and os.path.getsize(targetFile) != os.path.getsize(sourceFile):
                targetFileHandle = open(targetFile, 'wb')
                sourceFileHandle = open(sourceFile, 'rb')
                targetFileHandle.write(sourceFileHandle.read())
                targetFileHandle.close()
                sourceFileHandle.close()
        if os.path.isdir(sourceFile):
            copyResToApk(sourceFile, targetFile)


def appendResXml(copyFrom, copyTo):
    """
        1.strings.xml
        2.styles.xml
        3.colors.xml
        4.dimens.xml
        5.ids.xml
        6.attrs.xml
        7.integers.xml
        8.arrays.xml
        9.bools.xml
        10.drawables.xml
    """
    basename = os.path.basename(copyFrom)
    if not os.path.exists(copyTo):
        return False

    if basename == 'values.xml' or basename == 'strings.xml' or basename == 'styles.xml' or basename == 'colors.xml' or basename == 'dimens.xml' or basename == 'ids.xml' or basename == 'attrs.xml' or basename == 'integers.xml' or basename == 'arrays.xml':
        copyToTree = ET.parse(copyTo)
        copyToRoot = copyToTree.getroot()
        copyFromTree = ET.parse(copyFrom)
        copyFromRoot = copyFromTree.getroot()
        for node in list(copyFromRoot):
            copyToRoot.append(node)

        copyToTree.write(copyTo, 'UTF-8')
        return True
    return False


def mergeValueXml(decompileDir):
    """
        check res/values resouce.xml and mergeFile
    """
    aryXml = ['strings.xml',
     'styles.xml',
     'colors.xml',
     'dimens.xml',
     'ids.xml',
     'attrs.xml',
     'integers.xml',
     'arrays.xml',
     'bools.xml',
     'drawables.xml',
     'public.xml',
     'values.xml']
    valuesDir = decompileDir + '/res/values'
    dictString = {}
    stringXml = valuesDir + '/strings.xml'
    if os.path.exists(stringXml):
        stringTree = ET.parse(stringXml)
        stringRoot = stringTree.getroot()
        for stringNode in list(stringRoot):
            dictNode = {}
            nodeName = stringNode.attrib.get('name')
            nodeText = stringNode.text
            dictNode['file'] = stringXml
            dictNode['text'] = nodeText
            dictNode['name'] = nodeName
            dictString[nodeName] = dictNode

    dictColor = {}
    colorsXml = valuesDir + '/colors.xml'
    if os.path.exists(colorsXml):
        colorsTree = ET.parse(colorsXml)
        colorsRoot = colorsTree.getroot()
        for colorNode in list(colorsRoot):
            dictNode = {}
            nodeName = colorNode.attrib.get('name')
            nodeText = colorNode.text.lower()
            dictNode['file'] = colorsXml
            dictNode['text'] = nodeText
            dictNode['name'] = nodeName
            dictColor[nodeName] = dictNode

    dictFile = {}
    for filename in os.listdir(valuesDir):
        if filename in aryXml:
            continue
        srcFile = os.path.join(valuesDir, filename)
        if os.path.splitext(srcFile)[1] != '.xml':
            continue
        srcTree = ET.parse(srcFile)
        srcRoot = srcTree.getroot()
        if srcRoot.tag != 'resources':
            continue
        for node in list(srcRoot):
            dictResource = None
            if node.tag == 'string':
                dictResource = dictString
            elif node.tag == 'color':
                dictResource = dictColor
            else:
                continue
            nodeName = node.attrib.get('name')
            nodeText = node.text
            if nodeName is None:
                continue
            nodeFind = dictResource.get(nodeName)
            if nodeFind is not None:
                text = nodeFind.get('text')
                if nodeText.lower() == text:
                    srcRoot.remove(node)
                else:
                    strErrorLog = '\xe8\xb5\x84\xe6\xba\x90\xe5\x86\xb2\xe7\xaa\x81:\r\n'
                    strErrorLog += srcFile + ' \xe6\x96\x87\xe4\xbb\xb6\xe9\x87\x8c\xef\xbc\x8cname\xe4\xb8\xba ' + nodeName + ' \xe9\xa1\xb9'
                    strErrorLog += ' \xe4\xb8\x8e ' + nodeFind.get('file') + '\xe6\x96\x87\xe4\xbb\xb6\xe9\x87\x8c\xe7\x9a\x84 ' + nodeName + ' \xe9\xa1\xb9 '
                    strErrorLog += 'name\xe4\xb8\x80\xe6\xa0\xb7\xef\xbc\x8c\xe4\xbd\x86\xe5\x80\xbc\xe4\xb8\x8d\xe4\xb8\x80\xe6\xa0\xb7\xef\xbc\x8c\xe9\x9c\x80\xe8\xa7\xa3\xe5\x86\xb3\xe8\xaf\xa5\xe9\x97\xae\xe9\xa2\x98\xe5\x90\x8e\xe6\x89\x8d\xe5\x8f\xaf\xe7\xbb\xa7\xe7\xbb\xad\xe6\x89\x93\xe5\x8c\x85\xef\xbc\x81'
                    file_operate.reportError(strErrorLog.encode('gbk'), int(threading.currentThread().getName()))
                    return 1
            else:
                dictNode = {}
                dictNode['file'] = srcFile
                dictNode['text'] = nodeText
                dictNode['name'] = nodeName
                dictResource[nodeName] = dictNode

        dictFile[srcFile] = srcTree

    for keyfile in dictFile.keys():
        dictFile[keyfile].write(keyfile, 'UTF-8')

    return 0


def produceNewRFile(packName, decompileFullDir, androidManiFest = 'AndroidManifest.xml'):
    """
        According to the merger of resources to create new R file
    """
    bMerge = mergeValueXml(decompileFullDir)
    if bMerge:
        error_operate.error(102)
        return 1
    fullPath = decompileFullDir
    tempPath = os.path.dirname(decompileFullDir)
    tempPath = tempPath + '/tempRFile'
    if os.path.exists(tempPath):
        file_operate.delete_file_folder(tempPath)
    if not os.path.exists(tempPath):
        os.makedirs(tempPath)
    resPath = os.path.join(decompileFullDir, 'res')
    targetResPath = os.path.join(tempPath, 'res')
    file_operate.copyFiles(resPath, targetResPath)
    genPath = os.path.join(tempPath, 'gen')
    if not os.path.exists(genPath):
        os.mkdir(genPath)
    androidPath = file_operate.getToolPath('android.jar')
    srcManifest = os.path.join(fullPath, androidManiFest)
    aaptPath = file_operate.getToolPath('aapt')
    cmd = '"%s" p -f -m -J "%s" -S "%s" -I "%s" -M "%s"' % (aaptPath,
     genPath,
     targetResPath,
     androidPath,
     srcManifest)
    #print '<---produceNewRFile LD_LIBRARY_PATH-->'+os.environ['LD_LIBRARY_PATH']
    print '<---produceNewRFile cmd-->'+cmd
    ret = file_operate.execFormatCmd(cmd)
    if ret:
        error_operate.error(102)
        return 1
    RPath = packName.replace('.', '/')
    RPath = os.path.join(genPath, RPath)
    RFile = os.path.join(RPath, 'R.java')
    cmd = '"%sjavac" -source 1.7 -target 1.7 -encoding UTF-8 "%s"' % (file_operate.getJavaBinDir(), RFile)
    #os.environ['LD_LIBRARY_PATH']=''
    ret = file_operate.execFormatCmd(cmd)
    if ret:
        error_operate.error(103)
        return 1
    dexPath = os.path.join(tempPath, 'class.dex')
    if platform.system() == 'Windows':
        dxTool = file_operate.getToolPath('dx.bat')
        cmd = '"%s" --dex --output="%s" "%s"' % (dxTool, dexPath, genPath)
    else:
        dxTool = file_operate.getToolPath('/lib/dx.jar')
        cmd = 'java -jar "%s" --dex --output="%s" "%s"' % (dxTool, dexPath, genPath)
    ret = file_operate.execFormatCmd(cmd)
    if ret:
        error_operate.error(104)
        return 1
    smaliPath = os.path.join(fullPath, 'smali')
    ret = dexTrans2Smali(dexPath, smaliPath, 10, 'baksmali.jar')
    if ret:
        return 1
    else:
        return 0


def configDeveloperInfo(channel, SDK, usrSDKConfig, decompileDir):
    ret = generateDeveloperInfo(channel, SDK, usrSDKConfig, decompileDir)
    if ret:
        return 1
    ret = generatePluginInfo(SDK, usrSDKConfig, decompileDir)
    if ret:
        return 1
    writeDeveloperIntoManifest(SDK, usrSDKConfig, decompileDir)
    return 0

def downloadUserConfigFile(channel, game, usrSDKConfig):
    channelNumber = channel['channelNum']
    gameName = game['gameName']
    targetFile = file_operate.get_server_dir()+'/config/games/'+gameName+'/channel/'+channelNumber+'/'
    # print '<---targetFile--->'+targetFile
    if os.path.exists(targetFile):
        file_operate.delete_file_folder(targetFile)
    os.makedirs(targetFile)
    for param in usrSDKConfig['param']:
        # print '<---param:name--->'+param['name']
        if param['name'] == 'resource':
            fileUrl = param['value']
            print '<---fileUrl--->'+fileUrl
            strlist = fileUrl.split('/')
            fileName = strlist[len(strlist)-1]
            print '<---fileName--->'+fileName
            targetFileName = targetFile+fileName
            urllib.urlretrieve(fileUrl,targetFileName)
            print '<---targetFileName--->'+targetFileName+' exists = %s' % os.path.exists(targetFileName)

def writeChannelInfoIntoDevelopInfo(decompileDir, channel, game):
    """
        the infomation about channel would configure here
    """
    assetsDir = decompileDir + '/assets'
    developerFile = assetsDir + '/developerInfo.xml'
    if not os.path.exists(assetsDir):
        os.makedirs(assetsDir)
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
        if channel['extChannel'] is not None:
            infoNode.set('extChannel', channel['extChannel'])
        if game.get('privateKey') is not None:
            infoNode.set('privateKey', game['privateKey'])
        if game.get('order_url') is not None and game['order_url'] != '':
            infoNode.set('order_url', game['order_url'])
        infoNode.set('standby_domain_name', 'pay.rsdk.com')
    targetTree.write(developerFile, 'UTF-8')
    file_operate.printf("Save channel's information to developerInfo.xml success")


def writeSupportInfo(decompileDir):
    assetsDir = decompileDir + '/assets'
    if not os.path.exists(assetsDir):
        os.makedirs(assetsDir)
    PluginFile = assetsDir + '/supportPlugin.xml'
    targetTree = None
    targetRoot = None
    pluginLsNode = None
    if not os.path.exists(PluginFile):
        targetTree = ElementTree()
        targetRoot = Element('support')
        targetTree._setroot(targetRoot)
        targetTree.write(PluginFile, 'UTF-8')


def generateDeveloperInfo(channel, SDK, usrSDKConfig, decompileDir):
    """the infomation about developer would configure here
       the value of element's attribute cann't be int
    """
    assetsDir = decompileDir + '/assets'
    developerFile = assetsDir + '/developerInfo.xml'
    if not os.path.exists(assetsDir):
        os.makedirs(assetsDir)
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
    if infoNode.get('idChannel') is None:
        infoNode.set('idChannel', str(channel['channelNum']))
        infoNode.set('uApiKey', channel['uapiKey'])
        infoNode.set('uApiSecret', channel['uapiSecret'])
        infoNode.set('oauthLoginServer', channel['oauthLoginServer'])
        if channel['extChannel'] is not None:
            infoNode.set('extChannel', channel['extChannel'])

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


def generatePluginInfo(SDK, usrSDKConfig, decompileDir):
    """the infomation about Plugin would configure here"""
    assetsDir = decompileDir + '/assets'
    if not os.path.exists(assetsDir):
        os.makedirs(assetsDir)
    PluginFile = assetsDir + '/supportPlugin.xml'
    targetTree = None
    targetRoot = None
    pluginLsNode = None
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
        paramNode.set('name', SDK['SDKName'])
        paramNode.set('pluginName', SDK['SDKName'])
        paramNode.set('pluginId', SDK['SDKNum'])

    targetTree.write(PluginFile, 'UTF-8')
    file_operate.printf('generate supportPlugin.xml success')
    return 0


def writeDeveloperIntoManifest(SDK, usrSDKConfig, decompileDir):
    """"""
    manifestFile = decompileDir + '/AndroidManifest.xml'
    ET.register_namespace('android', androidNS)
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    key = '{' + androidNS + '}name'
    value = '{' + androidNS + '}value'
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        error_operate.error(110)
        return
    metaListNode = applicationNode.findall('meta-data')
    for metaNode in metaListNode:
        name = metaNode.attrib[key]
        for child in usrSDKConfig['param']:
            if child['name'] == name and child['bWriteIntoManifest'] == 1:
                metaListNode.remove(metaNode)

    for child in usrSDKConfig['param']:
        if child['bWriteIntoClient']:
            if child['bWriteIntoManifest'] is not None and child['bWriteIntoManifest'] == 1:
                metaNode = SubElement(applicationNode, 'meta-data')
                metaNode.set(key, child['name'])
                metaNode.set(value, child['value'])

    targetTree.write(manifestFile, 'UTF-8')
    file_operate.printf('write Developer Infomation into AndroidManifest.xml success')


def pushIconIntoApk(iconDir, decompileDir):
    # gameIconDir = file_operate.get_server_dir()+'/workspace/'+ConfigParse.shareInstance().getOutputDir()+'/icon'
    # gameIconDir = file_operate.getFullPath(gameIconDir)
    if not os.path.exists(iconDir):
        return 0

    file_operate.resizeImg(ori_img=iconDir+'icon.png',dst_img=iconDir+'icon36x36.png',dst_w=36,dst_h=36,save_q=75)
    file_operate.resizeImg(ori_img=iconDir+'icon.png',dst_img=iconDir+'icon48x48.png',dst_w=48,dst_h=48,save_q=75)
    file_operate.resizeImg(ori_img=iconDir+'icon.png',dst_img=iconDir+'icon72x72.png',dst_w=72,dst_h=72,save_q=100)
    file_operate.resizeImg(ori_img=iconDir+'icon.png',dst_img=iconDir+'icon96x96.png',dst_w=96,dst_h=96,save_q=100)
    file_operate.resizeImg(ori_img=iconDir+'icon.png',dst_img=iconDir+'icon144x144.png',dst_w=144,dst_h=144,save_q=100)
    file_operate.resizeImg(ori_img=iconDir+'icon.png',dst_img=iconDir+'icon192x192.png',dst_w=192,dst_h=192,save_q=100)

    manifestFile = decompileDir + '/AndroidManifest.xml'
    ET.register_namespace('android', androidNS)
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    namekey = '{' + androidNS + '}name'
    key = '{' + androidNS + '}icon'
    icon = None
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        error_operate.error(121)
        return 1
    activityLsNode = applicationNode.findall('activity')
    if activityLsNode is not None:
        for activityNode in activityLsNode:
            intentLsNode = activityNode.findall('intent-filter')
            if intentLsNode is None:
                continue
            for intentNode in intentLsNode:
                bFindAction = False
                bFindCategory = False
                actionLsNode = intentNode.findall('action')
                for actionNode in actionLsNode:
                    if actionNode.attrib[namekey] == 'android.intent.action.MAIN':
                        bFindAction = True
                        break

                if not bFindAction:
                    continue
                categoryLsNode = intentNode.findall('category')
                for categoryNode in categoryLsNode:
                    if categoryNode.attrib[namekey] == 'android.intent.category.LAUNCHER':
                        bFindCategory = True
                        break

                if bFindAction and bFindCategory:
                    icon = activityNode.attrib.get(key)
                    break

    if icon is None:
        icon = applicationNode.attrib.get(key)
    if icon is None:
        icon = '@drawable/ic_launcher'
        applicationNode.attrib[key] = icon
        targetTree.write(manifestFile, 'UTF-8')
    iconName = 'ic_launcher'
    idxDrawable = icon.find('@drawable')
    if idxDrawable != -1:
        iconName = icon[idxDrawable + 10:]
    resDir = decompileDir + '/res'
    iconCopytoDrawable(os.path.join(resDir, 'drawable'), os.path.join(iconDir, 'icon48x48.png'), iconName)
    iconCopytoDrawable(os.path.join(resDir, 'drawable-ldpi'), os.path.join(iconDir, 'icon36x36.png'), iconName)
    iconCopytoDrawable(os.path.join(resDir, 'drawable-mdpi'), os.path.join(iconDir, 'icon48x48.png'), iconName)
    iconCopytoDrawable(os.path.join(resDir, 'drawable-hdpi'), os.path.join(iconDir, 'icon72x72.png'), iconName)
    iconCopytoDrawable(os.path.join(resDir, 'drawable-xhdpi'), os.path.join(iconDir, 'icon96x96.png'), iconName)
    iconCopytoDrawable(os.path.join(resDir, 'drawable-xxhdpi'), os.path.join(iconDir, 'icon144x144.png'), iconName)
    if os.path.exists(os.path.join(resDir, 'drawable-xxxhdpi')):
        iconCopytoDrawable(os.path.join(resDir, 'drawable-xxxhdpi'), os.path.join(iconDir, 'icon192x192.png'), iconName)


def doModifyAppName(decompileDir,newAppName):
    manifestFile = decompileDir + '/AndroidManifest.xml'
    ET.register_namespace('android', androidNS)
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    label = '{' + androidNS + '}label'
    namekey = '{' + androidNS + '}name'
    appName = None
    gameName = newAppName
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        return
    activityLsNode = applicationNode.findall('activity')
    if activityLsNode is not None:
        for activityNode in activityLsNode:
            intentLsNode = activityNode.findall('intent-filter')
            if intentLsNode is None:
                continue
            for intentNode in intentLsNode:
                bFindAction = False
                bFindCategory = False
                actionLsNode = intentNode.findall('action')
                for actionNode in actionLsNode:
                    if actionNode.attrib[namekey] == 'android.intent.action.MAIN':
                        bFindAction = True
                        break

                if not bFindAction:
                    continue
                categoryLsNode = intentNode.findall('category')
                for categoryNode in categoryLsNode:
                    if categoryNode.attrib[namekey] == 'android.intent.category.LAUNCHER':
                        bFindCategory = True
                        break

                if bFindAction and bFindCategory:
                    appName = activityNode.attrib.get(label)
                    if appName is not None and appName.find('@string/') == -1:
                        activityNode.set(label, gameName)
                        targetTree.write(manifestFile, 'UTF-8')
                        return
                    break

    if appName is None:
        appName = applicationNode.attrib.get(label)
    if appName is None or appName.find('@string/') == -1:
        applicationNode.set(label, gameName)
        targetTree.write(manifestFile, 'UTF-8')
        return
    appName = appName[8:]
    stringsXml = decompileDir + '/res/values/strings.xml'
    stringTree = ET.parse(stringsXml)
    stringRoot = stringTree.getroot()
    stringLsNode = stringRoot.findall('string')
    for stringNode in stringLsNode:
        if stringNode.attrib.get('name') is not None and stringNode.attrib['name'] == appName:
            stringNode.text = gameName

    stringTree.write(stringsXml, 'UTF-8')

def modifyAppNameByChannel(channel,decompileDir):
    newAppName=channel['display_name']
    if newAppName!='':
        doModifyAppName(decompileDir,newAppName)


def modifyAppName(game, decompileDir, newAppName):
    if game.get('isModifyAppName') is None or game['isModifyAppName'] == False:
        return
    if newAppName is None or newAppName == '':
        newAppName = game.get('gameName')
    doModifyAppName(decompileDir,newAppName)

def addSplashScreen(channel, decompileDir):
    """ add splash screen
        channel hasn't Splash if channel["bHasSplash"] = 0
        otherwise channel["bHasSplash"] express orientation and color
    """
    if channel['bHasSplash'] == '0' or channel['bHasSplash']=='0##' or channel['bHasSplash'] == '' or channel['bHasSplash'] == 0:
        return (0, False)
    channelNum = channel['channelNum']
    customChannel = ConfigParse.shareInstance().findCustomChannel(channelNum)
    if customChannel is not None and customChannel.get('publicChannelNum') is not None:
        channelNum = customChannel.get('publicChannelNum')
    #get channel Splash dir name
    splashDirName=str(channel['bHasSplash']).split('##')[0]
    #get Splash sdk dir name
    splashSDKName=str(channel['bHasSplash']).split('##')[1]

    #use sdk splash file
    SplashPath=file_operate.get_server_dir()+'/config/sdk/'+splashSDKName+'/ForSplash/'+splashDirName+'/'
    #don't copy sdk splash file to config/channel
    #SplashPath = '../config/channel/' + channelNum + '/' + str(channel['bHasSplash']) + '/'
    SplashPath = file_operate.getFullPath(SplashPath)
    if not os.path.exists(SplashPath):
        print 'sdk '+splashSDKName+' not exists Splash dir '+splashDirName
        error_operate.error(111)
        return (1, False)

    SplashCodePath = file_operate.get_server_dir()+'/config/channel/SplashActivity.smali'
    SplashCodePath = file_operate.getFullPath(SplashCodePath)
    SplashCode2Path = file_operate.get_server_dir()+'/config/channel/SplashActivity$1.smali'
    SplashCode2Path = file_operate.getFullPath(SplashCode2Path)
    xmlSplashSrc = file_operate.get_server_dir()+'/config/channel/plugin_splash.xml'
    xmlSplashSrc = file_operate.getFullPath(xmlSplashSrc)
    if not os.path.exists(SplashPath) or not os.path.exists(SplashCodePath) or not os.path.exists(SplashCode2Path) or not os.path.exists(xmlSplashSrc):
        error_operate.error(111)
        return (1, False)
    codeDir = decompileDir + '/smali/com/rsdk/framework'
    newSplashCodePath = codeDir + '/SplashActivity.smali'
    file_operate.copyFile(SplashCodePath, newSplashCodePath)
    newSplashCode2Path = codeDir + '/SplashActivity$1.smali'
    file_operate.copyFile(SplashCode2Path, newSplashCode2Path)
    activityName = removeStartActivity(channel['bHasSplash'], decompileDir)
    modifyManifestForSplash(channel['bHasSplash'], decompileDir)
    xmlSplashTarget = decompileDir + '/res/layout'
    if not os.path.exists(xmlSplashTarget):
        os.mkdir(xmlSplashTarget)
    xmlSplashTarget = xmlSplashTarget + '/plugin_splash.xml'
    file_operate.copyFile(xmlSplashSrc, xmlSplashTarget)
    resDir = decompileDir + '/res'
    file_operate.copyFiles(SplashPath, resDir)
    assetsDir = decompileDir + '/assets'
    developerFile = assetsDir + '/developerInfo.xml'
    if not os.path.exists(assetsDir):
        os.makedirs(assetsDir)
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
    infoNode.set('GameMainActivity', activityName)
    targetTree.write(developerFile, 'UTF-8')
    file_operate.modifyFileContent(newSplashCodePath, '.smali', '###rsdk_Start_Activity###', activityName)
    return (0, True)

def replace_custom_res(decompileDir):
    resLs = ConfigParse.shareInstance().get_replace_res()
    if(len(resLs)>0):
        for r in resLs:
            if r['replace'] is None or r['replace'] == '' or r['url'] is None or r['url'] == '':
                continue
            print 'replace:'+r['replace']
            tempstr = r['replace']
            if tempstr[0] != '/':
                tempstr = '/' + tempstr

            tempstr = tempstr.replace('\\', '/')
            tempstr = re.sub('/+', '/', tempstr)



            file_path = decompileDir + tempstr
            print 'replace res path : '+file_path
            file_url = r['url']

            strlist = file_path.split('/')
            file_dir = file_path.replace('/'+strlist[len(strlist)-1],'')
            if(not os.path.exists(file_dir)):
                os.makedirs(file_dir)


            urllib.urlretrieve(file_url,file_path)
            print 'replace custom res %s success' %(file_path)

def removeStartActivity(bHasSplash, decompileDir, bRemove = True):
    """
        if bRemove is True then remove start activity's action and category
        otherwise only return original activity's name
        @return original activity's name.
    """
    manifestFile = decompileDir + '/AndroidManifest.xml'
    ET.register_namespace('android', androidNS)
    key = '{' + androidNS + '}name'
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        return
    if applicationNode is not None:
        activityLsNode = applicationNode.findall('activity')
    if activityLsNode is None:
        return
    activityName = ''
    for activityNode in activityLsNode:
        bMainActivity = False
        intentLsNode = activityNode.findall('intent-filter')
        if intentLsNode is None:
            return
        for intentNode in intentLsNode:
            bFindAction = False
            bFindCategory = False
            actionLsNode = intentNode.findall('action')
            for actionNode in actionLsNode:
                if actionNode.attrib[key] == 'android.intent.action.MAIN':
                    bFindAction = True
                    break

            if not bFindAction:
                continue
            categoryLsNode = intentNode.findall('category')
            for categoryNode in categoryLsNode:
                if categoryNode.attrib[key] == 'android.intent.category.LAUNCHER':
                    bFindCategory = True
                    break

            if bFindAction and bFindCategory:
                if bRemove:
                    # intentNode.remove(actionNode)
                    # intentNode.remove(categoryNode)
                    activityNode.remove(intentNode)
                bMainActivity = True
                break

        if bMainActivity:
            activityName = activityNode.attrib[key]
            break

    targetTree.write(manifestFile, 'UTF-8')
    return activityName


def modifyManifestForSplash(bHasSplash, decompileDir):
    manifestFile = decompileDir + '/AndroidManifest.xml'
    ET.register_namespace('android', androidNS)
    key = '{' + androidNS + '}name'
    screenkey = '{' + androidNS + '}screenOrientation'
    theme = '{' + androidNS + '}theme'
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        return
    if applicationNode is not None:
        activityLsNode = applicationNode.findall('activity')
    if activityLsNode is None:
        return
    splashNode = None
    for actNode in activityLsNode:
        actName = actNode.attrib.get(key)
        if actName is None:
            continue
        if actName == 'com.rsdk.framework.SplashActivity':
            splashNode = actNode
            break

    if splashNode == None:
        splashNode = SubElement(applicationNode, 'activity')
        splashNode.set(key, 'com.rsdk.framework.SplashActivity')
    splashNode.set(theme, '@android:style/Theme.Black.NoTitleBar.Fullscreen')
    strSplashType = str(bHasSplash)
    if strSplashType[:1] == '1':
        splashNode.set(screenkey, 'landscape')
    else:
        splashNode.set(screenkey, 'portrait')
    intNode = splashNode.find('intent-filter')
    if intNode is None:
        intNode = SubElement(splashNode, 'intent-filter')
        actionNode = SubElement(intNode, 'action')
        actionNode.set(key, 'android.intent.action.MAIN')
        intentNode = SubElement(intNode, 'category')
        intentNode.set(key, 'android.intent.category.LAUNCHER')
    else:
        actionLsNode = intNode.findall('action')
        bFindAction = False
        for actionNode in actionLsNode:
            if actionNode.attrib[key] == 'android.intent.action.MAIN':
                bFindAction = True
                break

        if not bFindAction:
            actionNode = SubElement(intNode, 'action')
            actionNode.set(key, 'android.intent.action.MAIN')
        bFindCategory = False
        categoryLsNode = intNode.findall('category')
        for categoryNode in categoryLsNode:
            if categoryNode.attrib[key] == 'android.intent.category.LAUNCHER':
                bFindCategory = True
                break

        if not bFindCategory:
            intentNode = SubElement(intNode, 'category')
            intentNode.set(key, 'android.intent.category.LAUNCHER')
    targetTree.write(manifestFile, 'UTF-8')


def iconCopytoDrawable(drawableDir, needIconName, iconName):
    if not os.path.exists(drawableDir):
        os.mkdir(drawableDir)
    file_operate.copyFile(needIconName, drawableDir + '/' + iconName + '.png')


def delUselessResource(decompileDir):
    if os.path.exists(decompileDir + '/res/values/public.xml'):
        os.remove(decompileDir + '/res/values/public.xml')
    if os.path.exists(decompileDir + '/res/drawable/btn_close.png'):
        os.remove(decompileDir + '/res/drawable/btn_close.png')
    if os.path.exists(decompileDir + '/res/drawable/ui_ad.png'):
        os.remove(decompileDir + '/res/drawable/ui_ad.png')
    if os.path.exists(decompileDir + '/res/layout/plugin_ads.xml'):
        os.remove(decompileDir + '/res/layout/plugin_ads.xml')
    if os.path.exists(decompileDir + '/res/layout/plugin_login.xml'):
        os.remove(decompileDir + '/res/layout/plugin_login.xml')
    if os.path.exists(decompileDir + '/res/values/plugin_string.xml'):
        os.remove(decompileDir + '/res/values/plugin_string.xml')


def deleteXmlResource(decompileFile):
    if os.path.exists(decompileFile):
        impl = minidom.getDOMImplementation()
        newDom = impl.createDocument(None, 'resources', None)
        newRoot = newDom.documentElement
        doc = minidom.parse(decompileFile)
        rootNode = doc.documentElement
        activityList = rootNode.getElementsByTagName('public')
        for node in activityList:
            if not (node.getAttribute('type') == 'drawable' and node.getAttribute('name') == 'btn_close' or node.getAttribute('type') == 'drawable' and node.getAttribute('name') == 'ui_ad' or node.getAttribute('type') == 'layout' and node.getAttribute('name') == 'plugin_ads' or node.getAttribute('type') == 'layout' and node.getAttribute('name') == 'plugin_login' or node.getAttribute('type') == 'values' and node.getAttribute('name') == 'plugin_string'):
                newPublic = newDom.createElement('public')
                newPublic.setAttribute('type', node.getAttribute('type'))
                newPublic.setAttribute('name', node.getAttribute('name'))
                newPublic.setAttribute('id', node.getAttribute('id'))
                newRoot.appendChild(newPublic)

        f = codecs.open(decompileFile, 'w', 'utf-8')
        newDom.writexml(f, addindent='  ', newl='\n', encoding='utf-8')
        f.close()


def checkForCocosPlay(decompileDir, channel, oldPackageName):
    """check Whether or not the apk  for cocosplay"""
    hostDir = decompileDir + '/smali/com/chukong/cocosplay/host'
    if not os.path.exists(hostDir):
        return False
    manifestXml = decompileDir + '/AndroidManifest.xml'
    if not os.path.exists(manifestXml):
        return False
    newPackageName = oldPackageName
    if channel['packNameSuffix'] != '':
        newPackageName += channel['packNameSuffix']

    ET.register_namespace('android', androidNS)
    androidName = '{' + androidNS + '}name'
    process = '{' + androidNS + '}process'
    authorities = '{' + androidNS + '}authorities'
    androidValue = '{' + androidNS + '}value'
    targetTree = ET.parse(manifestXml)
    targetRoot = targetTree.getroot()
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        return False
    if applicationNode is not None:
        activityLsNode = applicationNode.findall('activity')
        serviceLsNode = applicationNode.findall('service')
        provideLsNode = applicationNode.findall('provider')
        receiveLsNode = applicationNode.findall('receiver')
        metaLsNode = applicationNode.findall('meta-data')
    if activityLsNode is None:
        return False
    newProcess = newPackageName + '.COCOSPLAY_PROCESS_REMOTE'
    for activityNode in activityLsNode:
        attr = activityNode.get(process)
        attrName = activityNode.get(androidName)
        if attr != None:
            activityNode.set(process, newProcess)
        if attrName != None:
            if attrName == 'com.chukong.cocosplay.host.CocosPlayHostProvider':
                activityNode.set(authorities, newPackageName + '.COCOSPLAY_PROVIDER')
            elif attrName == 'com.chukong.cocosplay.host.CocosPlayHostRemoteProvider':
                activityNode.set(authorities, newPackageName + '.COCOSPLAY_PROVIDER_REMOTE')

    for serviceNode in serviceLsNode:
        attr = serviceNode.get(process)
        attrName = serviceNode.get(androidName)
        if attr != None:
            serviceNode.set(process, newProcess)
        if attrName != None:
            if attrName == 'com.chukong.cocosplay.host.CocosPlayHostProvider':
                serviceNode.set(authorities, newPackageName + '.COCOSPLAY_PROVIDER')
            elif attrName == 'com.chukong.cocosplay.host.CocosPlayHostRemoteProvider':
                serviceNode.set(authorities, newPackageName + '.COCOSPLAY_PROVIDER_REMOTE')

    for provideNode in provideLsNode:
        attr = provideNode.get(process)
        attrName = provideNode.get(androidName)
        if attr != None:
            provideNode.set(process, newProcess)
        if attrName != None:
            if attrName == 'com.chukong.cocosplay.host.CocosPlayHostProvider':
                provideNode.set(authorities, newPackageName + '.COCOSPLAY_PROVIDER')
            elif attrName == 'com.chukong.cocosplay.host.CocosPlayHostRemoteProvider':
                provideNode.set(authorities, newPackageName + '.COCOSPLAY_PROVIDER_REMOTE')

    for receiveNode in receiveLsNode:
        attr = receiveNode.get(process)
        attrName = receiveNode.get(androidName)
        if attr != None:
            receiveNode.set(process, newProcess)
        if attrName != None:
            if attrName == 'com.chukong.cocosplay.host.CocosPlayHostProvider':
                receiveNode.set(authorities, newPackageName + '.COCOSPLAY_PROVIDER')
            elif attrName == 'com.chukong.cocosplay.host.CocosPlayHostRemoteProvider':
                receiveNode.set(authorities, newPackageName + '.COCOSPLAY_PROVIDER_REMOTE')

    bFindPackage = False
    bFindCocosPlay = False
    bFindAppId = False
    for metaNode in metaLsNode:
        attrName = metaNode.get(androidName)
        if attrName != None:
            if attrName == 'cocosplay_game_pkg':
                metaNode.set(androidValue, newPackageName)
                bFindPackage = True
            elif attrName == 'cocosplay_mode':
                metaNode.set(androidValue, '2')
                bFindCocosPlay = True
            elif attrName == 'cocosplay_appid':
                metaNode.set(androidValue, channel['channelNum'])
                bFindAppId = True

    if bFindCocosPlay == False:
        metaNode = SubElement(applicationNode, 'meta-data')
        metaNode.set(androidName, 'cocosplay_mode')
        metaNode.set(androidValue, '2')
    if bFindPackage == False:
        metaNode = SubElement(applicationNode, 'meta-data')
        metaNode.set(androidName, 'cocosplay_game_pkg')
        metaNode.set(androidValue, newPackageName)
    if bFindAppId == False:
        metaNode = SubElement(applicationNode, 'meta-data')
        metaNode.set(androidName, 'cocosplay_appid')
        metaNode.set(androidValue, channel['channelNum'])
    targetTree.write(manifestXml, 'UTF-8')
    return True


def renameApkForCocosPlay(decompileDir, oldPackageName, packSuffixName, game, channel, lock):
    if packSuffixName == '':
        return 0
    playApkFile = decompileDir + '/assets/cocosplay_game/' + oldPackageName + '.apk'
    if not os.path.exists(playApkFile):
        playApkFile = decompileDir + '/assets/' + oldPackageName + '.apk'
        if not os.path.exists(playApkFile):
            return 0
    cocosPlayDecompileDir = decompileDir + '/../CocosPlayDecompileDir'
    ret = decompileApk(playApkFile, cocosPlayDecompileDir, lock)
    if ret:
        return 1
    PackageName = renameApkPackage(cocosPlayDecompileDir + '/smali', cocosPlayDecompileDir + '/AndroidManifest.xml', packSuffixName)
    ret = produceNewRFile(PackageName, cocosPlayDecompileDir)
    if ret:
        return 1
    ret = recompileApk(cocosPlayDecompileDir, playApkFile)
    if ret:
        return 1
    newPlayApkFile = os.path.dirname(playApkFile) + '/' + PackageName + '.apk'
    os.rename(playApkFile, newPlayApkFile)
    ret = signApkAuto(newPlayApkFile, game, channel)
    if ret:
        return 1
    return 0


def encryptApkByDeveloper(decompileDir):
    """"""
    developerXml = decompileDir + '/assets/developerInfo.xml'
    fDev = open(developerXml, 'rb')
    text_dev = fDev.read()
    hash_dev = hashlib.md5()
    hash_dev.update(text_dev)
    fDev.close()
    md5_dev = hash_dev.hexdigest()
    md5_dev = 'awd&ce' + md5_dev + 'cwqnw@w'
    hash_encrypt = hashlib.md5()
    hash_encrypt.update(md5_dev)
    newContent = hash_encrypt.hexdigest()
    aryLibDir = ['armeabi', 'armeabi-v7a', 'armeabi-x86']
    for libDirName in aryLibDir:
        libPath = decompileDir + '/lib/' + libDirName
        if not os.path.exists(libPath):
            continue
        for filename in os.listdir(libPath):
            filePath = os.path.join(libPath, filename)
            if not os.path.isfile(filePath):
                continue
            if os.path.splitext(filePath)[1] != '.so':
                continue
            file_operate.modifyFileContentByBinary(filePath, 'rsdk_CLASSES_DEX_MD5_UNENCRYPT', newContent)


def writeDataIntoAndroidManifest(decompileDir, channel):
    """write meta into manifest.xml"""
    manifestFile = decompileDir + '/AndroidManifest.xml'
    if not os.path.exists(manifestFile):
        return False
    objJson = {}
    jsonMeta = channel.get('jsonMeta')
    if jsonMeta != '' and jsonMeta is not None:
        objJson = json.loads(jsonMeta)
    ET.register_namespace('android', androidNS)
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    key = '{' + androidNS + '}name'
    value = '{' + androidNS + '}value'
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        return
    channelNum = channel.get('customChannelNumber')
    if channelNum == '' or channelNum is None:
        channelNum = channel.get('channelNum')
    if channelNum is None:
        return
    channelNum = '\\ ' + channelNum
    objJson['ASC_ChannelID'] = channelNum
    for metaName in objJson.keys():
        metaValue = objJson.get(metaName)
        if metaValue is None:
            continue
        metaListNode = applicationNode.findall('meta-data')
        for metaNode in metaListNode:
            name = metaNode.attrib[key]
            if name == metaName:
                metaListNode.remove(metaNode)

        metaNode = SubElement(applicationNode, 'meta-data')
        metaNode.set(key, metaName)
        metaNode.set(value, str(metaValue))

    targetTree.write(manifestFile, 'UTF-8')

def get_all_method_count(workDir, channel):
    """ get number value in sdk classes.xml, the number value is smali method count in classes.dex """
    methodNum = 0
    for Channel_SDK in channel['sdkLs']:
        idSDK = Channel_SDK['idSDK']
        SDK = ConfigParse.shareInstance().findSDK(idSDK)
        if SDK == None:
            continue
        SDKDestDir = workDir + '/sdk/' + SDK['SDKName']
        classesXml = SDKDestDir + '/classfilter.xml'
        if not os.path.exists(classesXml):
            continue
        tree = ET.parse(classesXml)
        rootLabel = tree.getroot()
        for num in rootLabel.findall('number'):
            methodNum += int(num.text)
    return methodNum

def get_all_class_fillter(workDir, channel):
    """ get packages value in sdk classes.xml file, the packages value is mainClassList"""
    clasFillters = []
    for Channel_SDK in channel['sdkLs']:
        idSDK = Channel_SDK['idSDK']
        SDK = ConfigParse.shareInstance().findSDK(idSDK)
        if SDK == None:
            continue
        SDKDestDir = workDir + '/sdk/' + SDK['SDKName']
        classesXml = SDKDestDir + '/classfilter.xml'
        if not os.path.exists(classesXml):
            continue
        tree = ET.parse(classesXml)
        rootLabel = tree.getroot()
        for pack in rootLabel.findall('package'):
            clasFillters.append(pack.text)
    return clasFillters

def file_list(dir, filelist = []):
    """ get smali list in decompile folder """
    for root, dirs, files in os.walk(dir):
        for file in files:
            filelist.append(root + '/' + file)

def get_smali_method_count(smaliFile, allMethods, allClasNums):
    """ smali method count """
    if not os.path.exists(smaliFile):
        allClasNums[smaliFile] = 0
        return 0

    f = open(smaliFile)
    lines = f.readlines()
    f.close()

    classLine = lines[0]
    classLine.strip()
    if not classLine.startswith(".class"):
        # log_utils.error(f + " not startswith .class")
        print (f + " not startswith .class")
        return 0

    className = parse_class(classLine)
    #log_utils.debug("the class Name is "+className)

    count = 0
    for line in lines:
        line = line.strip()

        method = None
        if line.startswith(".method"):
            method = parse_method_default(className, line)
        elif line.startswith("invoke-"):
            method = parse_method_invoke(line)

        if method is None:
            continue

        #log_utils.debug("the method is "+method)

        if method not in allMethods:
            count = count + 1
            allMethods.append(method)
        else:
            pass
            #log_utils.debug(method + " is already exists in allMethods.")
    allClasNums[smaliFile] = count
    return count



def parse_class(line):

    if not line.startswith(".class"):
        # log_utils.error("line parse error. not startswith .class : "+line)
        print ("line parse error. not startswith .class : "+line)
        return None

    blocks = line.split()
    return blocks[len(blocks)-1]



def parse_method_default(className, line):
    if not line.startswith(".method"):
        # log_utils.error("the line parse error in parse_method_default:"+line)
        print ("the line parse error in parse_method_default:"+line)
        return None

    blocks = line.split()
    return className + "->" + blocks[len(blocks)-1]


def parse_method_invoke(line):
    if not line.startswith("invoke-"):
        # log_utils.error("the line parse error in parse_method_invoke:"+line)
        print("the line parse error in parse_method_invoke:"+line)

    blocks = line.split()
    return blocks[len(blocks)-1]

def modifyFileContentByRule(source, fileType, oldContent, newContent):
    if os.path.isdir(source):
        for file in os.listdir(source):
            sourceFile = os.path.join(source, file)
            modifyFileContentByRule(sourceFile, fileType, oldContent, newContent)

    elif os.path.isfile(source) and os.path.splitext(source)[1] == fileType:
        file1 = open(source, 'r+')

        inConstructor = False
        for line in open(source):
            if '.super ' + oldContent in line or 'invoke-super' in line:
                idx = line.find(oldContent)
                line = line[:idx] + newContent + line[idx + len(oldContent):]
                print line
            if 'constructor' in line:
                inConstructor = True
            if inConstructor:
                if 'invoke-direct' in line and 'init' in line and oldContent in line:
                    idx = line.find(oldContent)
                    line = line[:idx] + newContent + line[idx + len(oldContent):]
                    print line
            if '.end method' in line:
                inConstructor = False

            file1.write(line)
        file1.close()

def modifySmaliForApplication(applicationName, smaliDir,sdkapplicationStr):
    print 'modifySmaliForApplication sdkapplicationStr:%s '%(sdkapplicationStr)
    applicationSmali = smaliDir + applicationName + '.smali'
    if not os.path.exists(applicationSmali):
        return False
    htxtSmali = open(applicationSmali, 'r')
    data = str(htxtSmali.read())
    htxtSmali.close()
    superPrefix = '.super L'
    idxStart = data.find(superPrefix)
    idxEnd = data.find(';', idxStart)
    superName = data[idxStart + len(superPrefix):idxEnd]
    if superName == 'android/app/Application':
        modifyFileContentByRule(applicationSmali, '.smali', 'L' + superName, 'L'+sdkapplicationStr)
    else:
        modifySmaliForApplication(superName, smaliDir,sdkapplicationStr)

def splitDex(workDir, channel):
    """ multidex """
    currDexFunNum = get_all_method_count(workDir, channel)


    extChannel = channel.get('extChannel')
    if extChannel.find("androidsupportv4") != -1:
        public_number_xml = file_operate.get_server_dir()+'/config/channel/public_number.xml'
        if os.path.exists(public_number_xml):
            public_number_xml_tree = ET.parse(public_number_xml)
            public_number_xml_root = public_number_xml_tree.getroot()
            androidsupportv4_note = public_number_xml_root.find('androidsupportv4')
            androidsupportv4_number = androidsupportv4_note.text
            print 'public androidsupportv4_number :%s' % androidsupportv4_number
            currDexFunNum += int(androidsupportv4_number)
        else:
            print 'default androidsupportv4_number 11734'
            currDexFunNum += 11734

    '''
    the max method number in one dex file is 65535,but not one smali contains only one method
    '''
    maxMainFucNum = 65535

    if (channel.get('idChannel') == 27 and channel.get('channelNum') == '110009'):
        maxMainFucNum = 50000
    # maxMinorFucNum = 40000

    if currDexFunNum < maxMainFucNum:
        print "=======currDexFunNum:%s" %(currDexFunNum)
        return 0

    currDexFunNum = currDexFunNum - maxMainFucNum - 1000
    print "=======need moveFucNum:%s" %(currDexFunNum)
    samilDir = workDir + '/decompile/smali/'
    decompileDir = workDir + '/decompile'

    multidexPath = file_operate.get_server_dir()+'/config/channel/android-support-multidex.dex'
    multidexPath = file_operate.getFullPath(multidexPath)
    ret = dexTrans2Smali(multidexPath, samilDir, 10)
    if ret:
        return 1

    ManifestDir = os.path.join(decompileDir, 'AndroidManifest.xml')
    ET.register_namespace('android', androidNS)
    tree = ET.parse(ManifestDir)
    root = tree.getroot()
    applicationNode = root.find('application')
    attr_Name = '{' + androidNS + '}name'
#   application.set(attr_Name, 'android.support.multidex.MultiDexApplication')

    applicationName = applicationNode.get(attr_Name)
    sdkApplicationName = 'android.support.multidex.MultiDexApplication'
    if applicationName is None:
        applicationNode.set(attr_Name,sdkApplicationName )
    else:
        applicationSmali = applicationName.replace('.', '/')
        sdkApplicationStr = sdkApplicationName.replace('.', '/')
        modifySmaliForApplication(applicationSmali, samilDir,sdkApplicationStr)
    tree.write(ManifestDir, 'utf-8')

    fileList = []
    file_list(samilDir, fileList)
    currDexIndex = 2

    newDexPath = os.path.join(decompileDir, "smali_classes"+str(currDexIndex))
    os.makedirs(newDexPath)

    clasFillters = get_all_class_fillter(workDir, channel)

    moveFuncNum = 0
    moveFunCount = 0
    allRefs = []

    for f in fileList:
        if 'android/support' in f:
            continue

        if 'com/rsdk/framework' in f:
            continue

        isContinue = False
        for c in clasFillters:
            if c in f:
                isContinue = True
                break

        if isContinue:
            continue

        allClasNum = {}
        get_smali_method_count(f, allRefs, allClasNum)
        moveFuncNum += allClasNum[f]
        moveFunCount += allClasNum[f]

        if moveFunCount >= currDexFunNum:
            print "=======movedFunCount:%s;break" %(moveFunCount)
            break

        if moveFuncNum >= maxMainFucNum:
            moveFuncNum = 0
            currDexIndex += 1
            newDexPath = os.path.join(decompileDir, "smali_classes"+str(currDexIndex))
            os.makedirs(newDexPath)

        targetPath = f[0:len(decompileDir)] + "/smali_classes"+str(currDexIndex) + f[len(samilDir) - 1:]
        file_operate.copyFiles(f, targetPath)
        file_operate.delete_file_folder(f)
    return 0
#+++ okay decompyling rsdk1.4/Script/apk_operate.pyc
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:28 CST
