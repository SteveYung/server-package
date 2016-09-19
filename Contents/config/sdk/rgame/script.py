# coding=utf-8
import commands
import os
import platform
import shutil
import file_operate
import error_operate
import xml.etree.ElementTree as ET
import urllib

def script(SDK, decompileDir, packageName, usrSDKConfig):
    sourceFile=''
    allparams=usrSDKConfig['param']
    for param in allparams:
        if param['name']=='resource':
            sourceFile=param['value']
            print '<---Sdk Config sourceFile URL --->'+sourceFile
            strlist = sourceFile.split('/')
            fileName = strlist[len(strlist)-1]
            assetsDir = decompileDir + '/assets/'
            if not os.path.exists(assetsDir):
                os.makedirs(assetsDir)
            urllib.urlretrieve(sourceFile,assetsDir+fileName)



