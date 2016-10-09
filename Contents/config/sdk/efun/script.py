# 2015.03.29 16:07:30 CST
#Embedded file name: D:\AnySDK_Package\Env\Script\Channel\tencent.py
from xml.etree import ElementTree as ET

androidNS = 'http://schemas.android.com/apk/res/android'


def script(SDK, decompileDir, packageName, usrSDKConfig):
    manifestFile = decompileDir + '/AndroidManifest.xml'

    ET.register_namespace('android', androidNS)
    keyname = '{' + androidNS + '}name'
    schemename = '{' + androidNS + '}scheme'
    
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    applicationNode = targetRoot.find('application')
    if applicationNode is None:
        return 1
    activityLsNode = applicationNode.findall('activity')
    for activityNode in activityLsNode:
        intentLsNode = activityNode.findall('intent-filter')
        if intentLsNode is None:
            continue
        for intentNode in intentLsNode:
            bFindAction = False
            bFindCategory = False
            actionLsNode = intentNode.findall('action')
            for actionNode in actionLsNode:
                if actionNode.attrib[keyname] == 'android.intent.action.MAIN':
                    bFindAction = True
                    break

            if not bFindAction:
                continue
            categoryLsNode = intentNode.findall('category')
            for categoryNode in categoryLsNode:
                if categoryNode.attrib[keyname] == 'android.intent.category.LAUNCHER':
                    bFindCategory = True
                    break

            if bFindAction and bFindCategory:
                intentFilter = ET.SubElement(activityNode,'intent-filter')
                action = ET.SubElement(intentFilter,'action')
                action.set(keyname,'android.intent.action.VIEW')
                category1 = ET.SubElement(intentFilter,'category')
                category1.set(keyname,'android.intent.category.DEFAULT')
                category2 = ET.SubElement(intentFilter,'category')
                category2.set(keyname,'android.intent.category.BROWSABLE')
                data = ET.SubElement(intentFilter,'data')
                data.set(schemename,'twtwjjdgg1')
                break

    targetTree.write(manifestFile, 'UTF-8')