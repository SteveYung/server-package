# 2015.01.17 10:32:27 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/rsdk.py
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
import start
import file_operate

file_operate.curDir = sys.path[0]
file_operate.setPrintEnable(True)

if sys.argv[1] == 'ios':
    start.startIos()
else:
    start.start()

#+++ okay decompyling rsdk1.4/Script/rsdk.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:27 CST
