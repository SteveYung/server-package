# 2015.01.17 10:37:45 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/start.py
import thread
import time
from packThreadManagerModule import packThreadManager
from taskManagerModule import taskManager
from config import ConfigParse
import os
import sys
import file_operate

def checkTaskThread():
    while 1:
        time.sleep(5)
        result = packThreadManager.shareInstance().isRunning()
        if result == 0:
            break
        packThreadManager.shareInstance().startTask(0)
    taskManager.shareInstance().missionComplete()
    file_operate.printf('Mission Complete!')
    thread.exit_thread()


def checkTaskThreadForIos():
    while 1:
        time.sleep(5)
        result = packThreadManager.shareInstance().isRunning()
        if result == 0:
            break
        packThreadManager.shareInstance().startTask(1)

    taskManager.shareInstance().missionComplete()
    file_operate.printf('Mission Complete!')
    thread.exit_thread()


def start():
    reload(sys)
    sys.setdefaultencoding('utf8')
    ConfigParse.shareInstance().readUserConfig(0)
    taskManager.shareInstance().clearRecord()
    packThreadManager.shareInstance().clearRecord()
    packThreadManager.shareInstance().setCurWorkDir(os.getcwd())
    source = ConfigParse.shareInstance().getSource()
    #print '<---source-->'+source
    game = ConfigParse.shareInstance().getCurrentGame()
    if os.path.isfile(source):
        versionName = ConfigParse.shareInstance().getVersionName()
        print '<---Config VersionName-->'+versionName
	file_operate.backupApk(source, game, versionName)
    packThreadManager.shareInstance().startTask(0)
    thread.start_new_thread(checkTaskThread, ())

def startIos():
    reload(sys)
    sys.setdefaultencoding('utf8')
    ConfigParse.shareInstance().readUserConfig(1)
    taskManager.shareInstance().clearRecord()
    packThreadManager.shareInstance().clearRecord()
    packThreadManager.shareInstance().setCurWorkDir(os.getcwd())
    source = ConfigParse.shareInstance().getSource()
    game = ConfigParse.shareInstance().getCurrentGame()
    versionName = ConfigParse.shareInstance().getVersionName()
    packThreadManager.shareInstance().startTask(1)
    thread.start_new_thread(checkTaskThreadForIos, ())


def getCompletionDict():
    return taskManager.shareInstance().getCompletionDict()


def stopAllTask():
    """Stop all of the tasks"""
    taskManager.shareInstance().clearRecord()
    packThreadManager.shareInstance().stopAllTask()


def getVersionName():
    return ConfigParse.shareInstance().getVersionName()
# +++ okay decompyling rsdk1.4/Script/start.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:37:45 CST
