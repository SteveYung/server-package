# 2015.01.17 10:32:30 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/error_operate.py
from taskManagerModule import taskManager
import thread
import threading
import file_operate
import core

def error(code):
    idChannel = int(threading.currentThread().getName())
    taskManager.shareInstance().notify(idChannel, 100 + code)
    print '<---error code---> %d' %(code)
    file_operate.printf('%s Failed at code %s!' % (idChannel, -100 - code))
#+++ okay decompyling rsdk1.4/Script/error_operate.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:30 CST
