# 2015.03.29 16:07:30 CST
#Embedded file name: D:\AnySDK_Package\Env\Script\Channel\tencent.py
from xml.etree import ElementTree as ET
from xml.etree.ElementTree import SubElement
import os
import file_operate
import error_operate
import platform
from xml.dom import minidom
import codecs
androidNS = 'http://schemas.android.com/apk/res/android'

def dexTrans2Smali(dexFile, targetDir, step):
    if not os.path.exists(targetDir):
        os.mkdir(targetDir)
    if os.path.exists(dexFile):
        dexFile = file_operate.getFullPath(dexFile)
        smaliFile = file_operate.getToolPath('baksmali.jar')
        targetDir = file_operate.getFullPath(targetDir)
        cmd = '"%s" -jar -Xms512m -Xmx512m "%s" -o "%s" "%s"' % (file_operate.getJava(),
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
def configParser(fileName,key,value):
    print 'parser file '+fileName+ ' begin'
    file = open(fileName,'a+')
    file.write('\n'+key+'='+value)
    file.close()
    print 'write '+key+'='+value+' success'


def script(SDK, decompileDir, packageName, usrSDKConfig):
    SDKDir = decompileDir + '/../sdk/' + SDK['SDKName']
    if not os.path.exists(SDKDir):
        file_operate.printf('SDK Dir is not exist!')
        error_operate.error(101)
        return 1

    INIFILE = decompileDir+'/assets/ysdkconf.ini'
    if not os.path.exists(INIFILE):
        file_operate.printf('INIFILE is not exist!')
        error_operate.error(101)
        return 1

    tcAppId = None
    WxAppId = None
    for param in usrSDKConfig['param']:
        if param['name'] == 'QQ_APP_ID':
            tcAppId = param['value']
            configParser(INIFILE,'QQ_APP_ID',tcAppId)
        if param['name'] == 'WX_APP_ID':
            WxAppId = param['value']
            configParser(INIFILE,'WX_APP_ID',WxAppId)
        if param['name'] == 'OFFER_ID':
            configParser(INIFILE,'OFFER_ID',param['value'])
        if param['name'] == 'YSDK_URL':
            configParser(INIFILE,'YSDK_URL',param['value'])

    WXPayEntryActivityJava = os.path.join(SDKDir, 'WXEntryActivity.java')
    pay_plugin_jar = os.path.join(SDKDir, 'ysdk.jar')
    WXPayEntryActivityClass = os.path.join(SDKDir, 'WXEntryActivity.class')
    file_operate.modifyFileContent(WXPayEntryActivityJava, '.java', 'com.tencent.tmgp.sgscq', packageName)
    if platform.system() == 'Windows':
        cmd = 'javac -source 1.7 -target 1.7 "' + WXPayEntryActivityJava + '" -classpath "' + pay_plugin_jar + '";"' + file_operate.getToolPath('android.jar') + '"'
    else:
        cmd = 'javac -source 1.7 -target 1.7 "' + WXPayEntryActivityJava + '" -classpath "' + pay_plugin_jar + '":"' + file_operate.getToolPath('android.jar') + '"'
    ret = file_operate.execFormatCmd(cmd)
    if ret:
        error_operate.error(103)
        print 'java compile WXEntryActivity.java fail'
        return 1
    packDir = packageName.replace('.', '/')
    SrcDir = SDKDir + '/tmpDex'
    WXPayDir = SrcDir + '/' + packDir + '/wxapi'
    if not os.path.exists(WXPayDir):
        os.makedirs(WXPayDir)
    TargetClassFilePath = WXPayDir + '/WXEntryActivity.class'
    file_operate.copyFile(WXPayEntryActivityClass, TargetClassFilePath)
    dexPath = os.path.join(SDKDir, 'WXEntryActivity.dex')
    if platform.system() == 'Windows':
        dxTool = file_operate.getToolPath('dx.bat')
        cmd = '"%s" --dex --output="%s" "%s"' % (dxTool, dexPath, SrcDir)
    else:
        dxTool = file_operate.getToolPath('/lib/dx.jar')
        cmd = 'java -jar -Xms512m -Xmx512m "%s" --dex --output="%s" "%s"' % (dxTool, dexPath, SrcDir)
    ret = file_operate.execFormatCmd(cmd)
    if ret:
        error_operate.error(104)
        return 1
    ret = dexTrans2Smali(dexPath, decompileDir + '/smali', 10)
    if ret:
        return 1
    manifestFile = decompileDir + '/AndroidManifest.xml'

    ET.register_namespace('android', androidNS)
    keyname = '{' + androidNS + '}name'
    excludeFromRecents = '{' + androidNS + '}excludeFromRecents'
    exported = '{' + androidNS + '}exported'
    labelAttr = '{' + androidNS + '}label'
    launchMode = '{' + androidNS + '}launchMode'
    taskAffinity = '{' + androidNS + '}taskAffinity'    
    schemename = '{' + androidNS + '}scheme'
    
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        return 1
    if applicationNode is not None:
        activityNode = SubElement(applicationNode, 'activity')
        activityNode.set(keyname, packageName + '.wxapi.WXEntryActivity')
        activityNode.set(exported, 'true')
        activityNode.set(labelAttr, 'WXEntryActivity')
        activityNode.set(taskAffinity, packageName+'.diff')
        activityNode.set(excludeFromRecents, 'true')
        activityNode.set(launchMode, 'singleTop')

        intentNode = SubElement(activityNode, 'intent-filter')
        actionNode = SubElement(intentNode, 'action', {keyname: 'android.intent.action.VIEW'})
        cateNode = SubElement(intentNode, 'category', {keyname: 'android.intent.category.DEFAULT'})
        dataNode = SubElement(intentNode, 'data', {schemename: WxAppId})

        dataList = applicationNode.iter('data')
        for data in dataList:
            value = data.get(schemename, None);
            if value == 'tencentAppId':
                data.set(schemename, 'tencent' + tcAppId)
    targetTree.write(manifestFile, 'UTF-8')