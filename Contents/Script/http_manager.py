# 2015.01.17 10:32:31 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/http_manager.py
from httplib import HTTPConnection as httpconn

class httpManager(object):

    def download(self, host = 'installers.xicp.net', filename = '/download/repo.xml'):
        conn = httpconn(host)
        conn.request('GET', filename)
        buff = conn.getresponse().read()
        localFile = open('/download/repo.xml', 'w')
        localFile.write(buff)
        localFile.close()
# +++ okay decompyling rsdk1.4/Script/http_manager.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:31 CST
