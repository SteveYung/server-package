# 2015.06.15 09:50:55 CST
#Embedded file name: D:\AnySDK_Package\Env\config\sdk\BDGame\script.py
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
from xml.etree.ElementTree import Element
from xml.etree.ElementTree import ElementTree
import file_operate
import os
androidNS = 'http://schemas.android.com/apk/res/android'

def modifySmaliForApplication(applicationName, smaliDir):
    """"""
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
        file_operate.modifyFileContent(applicationSmali, '.smali', 'L' + superName, 'Lcom/sandglass/game/SGApplication')
    else:
        modifySmaliForApplication(superName, smaliDir)


def script(SDK, decompileDir, packageName, usrSDKConfig):
    """BDGame special operate"""
    manifestFile = decompileDir + '/AndroidManifest.xml'
    ET.register_namespace('android', androidNS)
    key = '{' + androidNS + '}name'
    smaliDir = decompileDir + '/smali/'
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        return
    applicationName = applicationNode.get(key)
    if applicationName is None:
        applicationNode.set(key, 'com.sandglass.game.SGApplication')
        targetTree.write(manifestFile, 'UTF-8')
        return
    applicationSmali = applicationName.replace('.', '/')
    modifySmaliForApplication(applicationSmali, smaliDir)
    return 0
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.06.15 09:50:55 CST
