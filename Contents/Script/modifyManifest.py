# 2015.01.17 10:32:31 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/modifyManifest.py
import sys, string, os
from xml.etree import ElementTree as ET
import re
import file_operate
from xml.dom import minidom
import codecs
androidNS = 'http://schemas.android.com/apk/res/android'

def doModify(manifestFile, sourceFile, root):
    """
        modify AndroidManifest.xml by ForManifest.xml
    """
    if not os.path.exists(manifestFile):
        return False
    if not os.path.exists(sourceFile):
        return False
    bRet = False
    sourceTree = ET.parse(sourceFile)
    sourceRoot = sourceTree.getroot()
    f = open(manifestFile)
    targetContent = f.read()
    f.close()
    appCfgNode = sourceRoot.find('applicationCfg')
    if appCfgNode is not None and len(appCfgNode) > 0:
        for node in list(appCfgNode):
            key = '{' + androidNS + '}name'
            nodeValue = node.get(key)
            if nodeValue != None and len(nodeValue) > 0:
                attrIndex = targetContent.find(nodeValue)
                if -1 == attrIndex:
                    bRet = True
                    root.find('application').append(node)
                else:
                    print '===========>SAME NOTE:'+nodeValue

    perCfgNode = sourceRoot.find('permissionCfg')
    if perCfgNode is not None and len(perCfgNode) > 0:
        for oneNode in list(perCfgNode):
            key = '{' + androidNS + '}name'
            perAttr = oneNode.get(key)
            if perAttr != None and len(perAttr) > 0:
                bRet = True
                root.append(oneNode)

    return bRet


def modify(manifestFile, sourceCfgFile, pluginName, usrSDKConfig):
    manifestFile = file_operate.getFullPath(manifestFile)
    sourceXml = sourceCfgFile
    sourceXml = file_operate.getFullPath(sourceXml)
    if not os.path.exists(sourceXml):
        ForManifestDir = os.path.dirname(sourceXml)
        screenOrientation = getOrientation(manifestFile, usrSDKConfig)
        if screenOrientation == 'landscape' or screenOrientation == 'auto':
            sourceXml = ForManifestDir + '/ForManifestLandscape.xml'
        else:
            sourceXml = ForManifestDir + '/ForManifestPortrait.xml'
    if not os.path.exists(sourceXml):
        return
    ET.register_namespace('android', androidNS)
    targetTree = ET.parse(manifestFile)
    targetRoot = targetTree.getroot()
    haveChanged = doModify(manifestFile, sourceXml, targetRoot)
    if haveChanged:
        keyname = '{' + androidNS + '}name'
        usesPermissionNodes = targetRoot.findall('uses-permission')
        usesPermissionNodes2 = []

        for note in usesPermissionNodes:
            keyValue = note.get(keyname)
            deleteFlag = False
            addFlag = True
            for subnote in usesPermissionNodes2:
                subkeyValue = subnote.get(keyname)
                if(keyValue == subkeyValue):
                    deleteFlag = True
                    addFlag = False
            if addFlag:
                usesPermissionNodes2.append(note)
            if deleteFlag:
                print "REMOVE-SAME-uses-permission->"+keyValue
                targetRoot.remove(note)
        file_operate.printf('Modify AndroidManifest.xml for plugin ' + pluginName)
        targetTree.write(manifestFile, 'UTF-8')


def getOrientation(manifestFile, usrSDKConfig):
    for param in usrSDKConfig['param']:
        if param['name'].count('Orientation') > 0 or param['name'].count('orientation') > 0:
            return param['value']

    if os.path.exists(manifestFile):
        doc = minidom.parse(manifestFile)
        rootNode = doc.documentElement
        applicationList = rootNode.getElementsByTagName('application')
        for applicationNode in applicationList:
            activityList = rootNode.getElementsByTagName('activity')
            for activityNode in activityList:
                categoryList = activityNode.getElementsByTagName('category')
                for categoryNode in categoryList:
                    if categoryNode.getAttribute('android:name') == 'android.intent.category.LAUNCHER':
                        if activityNode.getAttribute('android:screenOrientation') == 'portrait' or activityNode.getAttribute('android:screenOrientation') == 'landscape':
                            return activityNode.getAttribute('android:screenOrientation')
                        if applicationNode.getAttribute('android:screenOrientation') == 'portrait' or applicationNode.getAttribute('android:screenOrientation') == 'landscape':
                            return applicationNode.getAttribute('android:screenOrientation')

    file_operate.printf('Default Orientation')
    return 'landscape'
# +++ okay decompyling rsdk1.4/Script/modifyManifest.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:31 CST
