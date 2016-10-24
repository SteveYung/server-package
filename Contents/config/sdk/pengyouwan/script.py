#!/usr/bin/env python
# encoding: utf-8
# 如果觉得不错，可以推荐给你的朋友！http://tool.lu/pyc
import commands
import os
import platform
import shutil
import file_operate
import error_operate
import xml.etree.ElementTree as ET
androidNS = 'http://schemas.android.com/apk/res/android'
attr_authorities = '{' + androidNS + '}authorities'
attr_scheme = '{' + androidNS + '}scheme'
attr_theme = '{' + androidNS + '}theme'
attr_Name = '{' + androidNS + '}name'
changeActionName = '.pyw.MAIN'
actionName = 'android.intent.action.MAIN'
categoryName = 'android.intent.category.DEFAULT'
PENGYOUWAN_ACTIVITY = 'com.pengyouwan.sdk.activity.LauncherActivity'
INTENT_MAIN = 'android.intent.action.MAIN'

def script(SDK, decompileDir, packageName, usrSDKConfig):
    ManifestDir = os.path.join(decompileDir, 'AndroidManifest.xml')
    ET.register_namespace('android', androidNS)
    tree = ET.parse(ManifestDir)
    root = tree.getroot()
    application = root.find('application')
    activitys = application.findall('activity')
    for mainAct in activitys:
        value_name = mainAct.get(attr_Name, 'null')
        tag_intent = mainAct.find('intent-filter')
        if None is tag_intent:
            continue
        keys = tag_intent.getchildren()
        if len(keys) == 0:
            continue
        if None is not tag_intent:
            action = tag_intent.find('action')
            actionValue = action.get(attr_Name, 'null')
            if value_name != PENGYOUWAN_ACTIVITY and actionValue == INTENT_MAIN:
                action.set(attr_Name, packageName+changeActionName)
                category = tag_intent.find('category')
                category.set(attr_Name, categoryName)
                print value_name, actionValue
            
    tree.write(ManifestDir, 'utf-8')

