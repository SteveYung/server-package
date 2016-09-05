# 2015.01.17 10:37:27 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/special_script.py
from config import ConfigParse
import os
import sys

def doSpecialOperate(channel, decompileDir, packageName, SDKWorkDir):
    """There are special operate in some SDK"""
    for Channel_SDK in channel['sdkLs']:
        idSDK = Channel_SDK['idSDK']
        SDK = ConfigParse.shareInstance().findSDK(idSDK)
        if SDK is None:
            continue
        usrSDKConfig = ConfigParse.shareInstance().findUserSDKConfigBySDK(idSDK, channel['idChannel'])
        SDKDir = SDKWorkDir + SDK['SDKName']
        scriptPath = SDKDir+'/'+ 'script.pyc'
        if os.path.exists(scriptPath):
            sys.path.append(SDKDir)
            import script
            ret = script.script(SDK, decompileDir, packageName, usrSDKConfig)
            del sys.modules['script']
            sys.path.remove(SDKDir)
            if ret != None and ret == 1:
                return 1

    return 0
#+++ okay decompyling rsdk1.4/Script/special_script.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:37:27 CST
