import os
import file_operate
import error_operate
import platform
import apk_operate
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
androidNS = 'http://schemas.android.com/apk/res/android'

class OpenApi:

    __SDK = None
    __decompileDir = ''
    __packageName = ''
    __usrSDKConfig = None

    def __init__(self, SDK, decompileDir, packageName, usrSDKConfig):
        self.__SDK = SDK
        self.__decompileDir = decompileDir
        self.__packageName = packageName
        self.__usrSDKConfig = usrSDKConfig

    def custom_package_r_file(self, packageName, androidManiFest = 'AndroidManifest.xml'):
        '''
        create custom packageName R file
        :param packageName:
        :param androidManiFest:
        :return:
        '''
        # bMerge = mergeValueXml(decompileFullDir)
        # if bMerge:
        #     error_operate.error(102)
        #     return 1
        fullPath = self.__decompileDir
        tempPath = os.path.dirname(self.__decompileDir)
        tempPath = tempPath + '/tempRFile'
        if os.path.exists(tempPath):
            file_operate.delete_file_folder(tempPath)
        if not os.path.exists(tempPath):
            os.makedirs(tempPath)
        resPath = os.path.join(self.__decompileDir, 'res')
        targetResPath = os.path.join(tempPath, 'res')
        file_operate.copyFiles(resPath, targetResPath)
        genPath = os.path.join(tempPath, 'gen')
        if not os.path.exists(genPath):
            os.mkdir(genPath)
        androidPath = file_operate.getToolPath('android.jar')
        srcManifest = os.path.join(fullPath, androidManiFest)
        aaptPath = file_operate.getToolPath('aapt')
        cmd = '"%s" p -f -m -J "%s" --custom-package "%s" -S "%s" -I "%s" -M "%s"' % (aaptPath,
         genPath,
         packageName,
         targetResPath,
         androidPath,
         srcManifest)
        ret = file_operate.execFormatCmd(cmd)
        if ret:
            error_operate.error(102)
            return 1
        RPath = packageName.replace('.', '/')
        RPath = os.path.join(genPath, RPath)
        RFile = os.path.join(RPath, 'R.java')
        cmd = '"%sjavac" -source 1.7 -target 1.7 -encoding UTF-8 "%s"' % (file_operate.getJavaBinDir(), RFile)
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
            cmd = 'java -jar -Xms512m -Xmx512m "%s" --dex --output="%s" "%s"' % (dxTool, dexPath, genPath)
        ret = file_operate.execFormatCmd(cmd)
        if ret:
            error_operate.error(104)
            return 1
        smaliPath = os.path.join(fullPath, 'smali')
        ret = apk_operate.dexTrans2Smali(dexPath, smaliPath, 10, 'baksmali.jar')
        if ret:
            return 1
        else:
            return 0
        pass

    def modifySmaliRstr(self, oldPackageName):
        smaliDir = self.__decompileDir +'/smali'
        fileList = []
        apk_operate.file_list(smaliDir, fileList)

        oldRPath = oldPackageName.replace('.', '/') + '/R$'
        newRPath = self.__packageName.replace('.', '/') + '/R$'

        for f in fileList:
            file_operate.modifyFileContent(f, '.smali', oldRPath, newRPath)
            pass
        pass

    def addMetaDataIntoManifestApplication(self, metaKey , metaValue):

        manifestFile = self.__decompileDir + '/AndroidManifest.xml'
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
            if name == metaKey:
                applicationNode.remove(metaNode)

        metaNode = SubElement(applicationNode, 'meta-data')
        metaNode.set(key, metaKey)
        metaNode.set(value, metaValue)
        targetTree.write(manifestFile, 'UTF-8')