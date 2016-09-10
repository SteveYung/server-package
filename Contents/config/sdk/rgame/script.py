# coding=utf-8
import commands
import os
import platform
import shutil
import file_operate
import error_operate
import xml.etree.ElementTree as ET

def script(SDK, decompileDir, packageName, usrSDKConfig):

    sourceFile=''
    allparams=usrSDKConfig['param']
    for param in allparams:
        if param['name']=='resource':
            sourceFile=param['value']
            print 'config file:'+sourceFile
            break
    # targetFile=decompileDir+'assets/ShareSDK.xml'
    assetsDir = decompileDir + '/assets'
    targetFile = assetsDir + '/RgameSDK.xml'

    if not os.path.exists(assetsDir):
        os.makedirs(assetsDir)
        
    sourceFile = os.path.join(sourceFile)
    targetFile = os.path.join(targetFile)
    if not os.path.exists(sourceFile):
        return False
    file_operate.copyFile(sourceFile,targetFile)