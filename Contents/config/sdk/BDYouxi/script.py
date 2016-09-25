# 2015.06.15 09:50:55 CST
#Embedded file name: D:\AnySDK_Package\Env\config\sdk\BDGame\script.py
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
from xml.etree.ElementTree import Element
from xml.etree.ElementTree import ElementTree
import file_operate
import os
androidNS = 'http://schemas.android.com/apk/res/android'



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
        applicationNode.set(key, 'com.rsdk.framework.MyApplication')
        targetTree.write(manifestFile, 'UTF-8')
    file_operate.modifyFileContent(manifestFile, '.xml', 'com.baidu.bdgamesdk.demo',packageName)