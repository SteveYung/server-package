import MySQLdb
import urllib
import os
import codecs
import subprocess
import time
import ConfigParser

db_host = ''
db_port = ''
db_user = ''
db_pwd = ''

db_config_dir = '/data/plattech/server_sdk_pack/config/db_config.ini'
backupDir = '/data/plattech/game-keystore-backup/'

def log(content,dirfile,mode):
    logFile = codecs.open(dirfile, mode, 'utf-8')
    logFile.write(unicode(content, 'gbk'))
    logFile.close()


def updataKeystoreFile(database):


    conn = MySQLdb.connect(host = db_host,port=db_port,user = db_user,passwd = db_pwd)
    conn.select_db(database)
    curs = conn.cursor(MySQLdb.cursors.DictCursor)
    curs.execute('SELECT game.gameName,channel.name,channel.keystoreFile,channel.keystorePwd,channel.keystoreAlias,channel.keystoreAliasPwd FROM tpl_channel channel JOIN game ON channel.idGame = game.gameId AND channel.keystoreFile IS NOT NULL AND channel.keystoreFile != ""')
    results = curs.fetchall()
    for r in results:
        if not os.path.exists(backupDir+r['gameName']+'/'+r['name']):
           os.makedirs(backupDir+r['gameName']+'/'+r['name'])

        urllib.urlretrieve(r['keystoreFile'],backupDir+r['gameName']+'/'+r['name']+'/channel.keystore')

        content = 'keystorePwd:'+r['keystorePwd'] + '\r\n'
        content += 'keystoreAlias:'+r['keystoreAlias'] + '\r\n'
        content += 'keystoreAliasPwd:'+r['keystoreAliasPwd']
        logdir = backupDir+r['gameName']+'/'+r['name'] + '/readme.txt'
        log(content,logdir,'w')

    curs.execute('SELECT gameName,keystoreFile,keystorePwd,keystoreAlias,keystoreAliasPwd FROM game WHERE keystoreFile IS NOT NULL AND keystoreFile != ""')
    results = curs.fetchall()
    for r in results:
        if not os.path.exists(backupDir+r['gameName']):
           os.makedirs(backupDir+r['gameName'])

        urllib.urlretrieve(r['keystoreFile'],backupDir+r['gameName']+'/defualt.keystore')

        content = 'GAME DEFUALT KEYSTORE\r\nkeystorePwd:'+r['keystorePwd'] + '\r\n'
        content += 'keystoreAlias:'+r['keystoreAlias'] + '\r\n'
        content += 'keystoreAliasPwd:'+r['keystoreAliasPwd']
        logdir = backupDir+r['gameName'] + '/readme.txt'
        log(content,logdir,'w')


    conn.close()





def updateToGit():
    subprocess.Popen('cd '+backupDir, shell=True)
    dateDIR = backupDir+'backup.log'
    s = subprocess.Popen('git pull', stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
    stdoutput, erroutput = s.communicate()
    content = '\r\n======================backupTime:'+time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))+'======================\r\n++++>cmd:git pull\r\n++++>output:'+stdoutput+'\r\n++++>result:'+erroutput

    s = subprocess.Popen('git add --all', stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
    stdoutput, erroutput = s.communicate()
    content =  content+'\r\n++++>cmd:git add --all'

    s = subprocess.Popen('git commit -m "%s backup"' % (time.strftime('%Y%m%d%H%M%S', time.localtime(time.time()))), stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
    stdoutput, erroutput = s.communicate()
    content =  content+'\r\n++++>cmd:git commit\r\n++++>output:'+stdoutput+'\r\n++++>result:'+erroutput

    s = subprocess.Popen('git push', stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
    stdoutput, erroutput = s.communicate()
    content =  content+'\r\n++++>cmd:git push\r\n++++>output:'+stdoutput+'\r\n++++>result:'+erroutput+'\r\n'+'<++++END++++>'+'\r\n'
    log(content,dateDIR,'a+')




cf = ConfigParser.ConfigParser()
cf.read(db_config_dir)
databasesList = cf.options("dbconf")


db_host = cf.get("mysqlconf", "host")
db_port = cf.getint("mysqlconf", "port")
db_user = cf.get("mysqlconf", "user")
db_pwd = cf.get("mysqlconf", "password")

for database in databasesList:
    updataKeystoreFile(database)


updateToGit()

print 'success'