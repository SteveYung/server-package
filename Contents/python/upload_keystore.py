import MySQLdb
import urllib
import os
import codecs
import subprocess
import time


backupDir = '/data/plattech/game-keystore-backup/'

def log(content,dirfile):
    logFile = codecs.open(dirfile, 'w', 'utf-8')
    logFile.write(unicode(content, 'gbk'))
    logFile.close()


def backup(database):
    conn = MySQLdb.connect(host = '10.66.118.154',port=3307,user = 'root',passwd = 'ycfwkX6312')
    conn.select_db(database)
    curs = conn.cursor(MySQLdb.cursors.DictCursor)
    curs.execute('SELECT game.gameName,channel.name,channel.keystoreFile,channel.keystorePwd,channel.keystoreAlias,channel.keystoreAliasPwd FROM tpl_channel channel JOIN game ON channel.idGame = game.gameId AND channel.keystoreFile IS NOT NULL')
    results = curs.fetchall()
    for r in results:
        if not os.path.exists(backupDir+r['gameName']+'/'+r['name']):
           os.makedirs(backupDir+r['gameName']+'/'+r['name'])

        urllib.urlretrieve(r['keystoreFile'],backupDir+r['gameName']+'/'+r['name']+'/defualt.keystore')

        content = 'keystorePwd:'+r['keystorePwd'] + '\r\n'
        content += 'keystoreAlias:'+r['keystoreAlias'] + '\r\n'
        content += 'keystoreAliasPwd:'+r['keystoreAliasPwd']
        logdir = backupDir+r['gameName']+'/'+r['name'] + '/readme.txt'
        log(content,logdir)

        print '<===Write '+backupDir+r['gameName']+'/'+r['name']+'/defualt.keystore Success===>'

    conn.close()

    subprocess.Popen('cd '+backupDir, shell=True)

    subprocess.Popen('git pull', shell=True)
    subprocess.Popen('git add --all', shell=True)
    subprocess.Popen('git commit -m "%s backup"' % (time.strftime('%Y%m%d%H%M%S', time.localtime(time.time()))), shell=True)
    subprocess.Popen('git push', shell=True)


backup('rsdk_zhangbizheng')