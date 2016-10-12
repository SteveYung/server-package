# 2015.01.17 10:32:35 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/packThreadModule.py
import threading
import time

import core
import os
import file_operate
import traceback
import error_operate

class PackThread(threading.Thread):
    __status = 0
    __task = {}
    __stop = False
    __curWorkDir = ''
    __platform = 0

    def __init__(self, Num, workDir):
        threading.Thread.__init__(self)
        self.__NO = Num
        self.__curWorkDir = workDir

    def run(self):
        """Overwrite run() method, put what you want the thread do here"""
        print '<---packThread run()--->'
        while not self.__stop:
            if self.__status == 0:
                time.sleep(1)
            elif self.__status == 1:
                try:
                    os.chdir(self.__curWorkDir)
                    if self.__platform == 0:
                        core.main(self.__task)
                        core.deleteWorkspace(self.__task)
                    # elif self.__platform == 1:
                    #     coreios.main(self.__task)
                    #     coreios.deleteWorkspace(self.__task)
                    self.__status = 0
                except Exception as e:
                    print '<---packThread Exception--->%s' %(e)
                    self.__status = 0
                    file_operate.reportError(traceback.format_exc()+'\r\n%s' % (e), int(threading.currentThread().getName()))
                    error_operate.error(80)

    def assignPackTask(self, task):
        """assign new package task"""
        if self.__status == 1:
            file_operate.printf('A task is running in this thread')
            return
        self.__task = task
        self.__status = 1

    def getStatus(self):
        return self.__status

    def setStatus(self, status):
        self.__status = status

    def getPlatform(self):
        return self.__platform

    def setPlatform(self, platform):
        self.__platform = platform

    def stop(self):
        self.__stop = True

    def setCurWorkDir(self, workDir):
        self.__curWorkDir = workDir
# +++ okay decompyling rsdk1.4/Script/packThreadModule.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:35 CST
