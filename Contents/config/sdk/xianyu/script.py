# 2015.03.29 16:07:30 CST
#Embedded file name: D:\AnySDK_Package\Env\Script\Channel\tencent.py
from xml.etree import ElementTree as ET
import os
import file_operate
import error_operate

androidNS = 'http://schemas.android.com/apk/res/android'


def script(SDK, decompileDir, packageName, usrSDKConfig):
    SDKDir = decompileDir + '/../sdk/' + SDK['SDKName']
    if not os.path.exists(SDKDir):
        file_operate.printf('SDK Dir is not exist!')
        error_operate.error(101)
        return 1

    manifestFile = decompileDir + '/AndroidManifest.xml'

    ET.register_namespace('android', androidNS)
    keytheme = '{' + androidNS + '}theme'
    
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        return 1
    if applicationNode is not None:
        applicationNode.set(keytheme,'@style/AppTheme')
    targetTree.write(manifestFile, 'UTF-8')