# 2015.01.17 10:32:34 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/packThreadManagerModule.py
import threading
from packThreadModule import PackThread
from config import ConfigParse
import file_operate

class packThreadManager(object):
    """
    1.\xe7\xba\xbf\xe7\xa8\x8b\xe7\xae\xa1\xe7\x90\x86
    2.\xe7\xba\xbf\xe7\xa8\x8b\xe4\xbb\xbb\xe5\x8a\xa1\xe5\xae\x89\xe6\x8e\x92
    """
    __instance = None
    __Lock = threading.Lock()
    __taskThreads = []
    __finishChannel = []
    __curworkDir = ''

    def __init__(self):
        pass

    @staticmethod
    def shareInstance():
        packThreadManager.__Lock.acquire()
        if packThreadManager.__instance == None:
            packThreadManager.__instance = object.__new__(packThreadManager)
            object.__init__(packThreadManager.__instance)
        packThreadManager.__Lock.release()
        return packThreadManager.__instance

    def getIdleThread(self):
        for thread in self.__taskThreads:
            if thread.getStatus() == 0:
                return thread

        if len(self.__taskThreads) < 3:
            pkThread = PackThread(len(self.__taskThreads), self.__curworkDir)
            self.__taskThreads.append(pkThread)
            return pkThread

    def startTask(self, platform):
        packageLs = ConfigParse.shareInstance().getPackageLs()
        #print '<---TASK INFO--->%s' %(packageLs)
    	for package in packageLs:
	    idChannel = package['idChannel']
            if idChannel in self.__finishChannel:
                #print '<---...CONTINUE WORKING...--->'
		continue
            pkThread = self.getIdleThread()
            if pkThread is None:
                return
            pkThread.setPlatform(platform)
            channel = ConfigParse.shareInstance().findChannel(idChannel)
            print '<---Channel--->%s' %(channel)
	    if channel is None:
                continue
            pkThread.assignPackTask(channel)
            print '<---packThreadStart--->'
	    if not pkThread.isAlive():
                pkThread.start()
            self.__finishChannel.append(idChannel)

        bOver = True
        for thread in self.__taskThreads:
            if thread.getStatus() != 0:
                bOver = False
                break

        if bOver == True:
            for thread in self.__taskThreads:
                thread.stop()
                self.__taskThreads.remove(thread)

    def getFinishChannelLs(self):
        return self.__finishChannel

    def isRunning(self):
        return len(self.__taskThreads)

    def setCurWorkDir(self, workDir):
        self.__curworkDir = workDir
        file_operate.curDir = workDir

    def stopAllTask(self):
        for thread in self.__taskThreads:
            thread.stop()
            self.__taskThreads.remove(thread)

    def clearRecord(self):
        self.__finishChannel = []
# +++ okay decompyling rsdk1.4/Script/packThreadManagerModule.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:35 CST
