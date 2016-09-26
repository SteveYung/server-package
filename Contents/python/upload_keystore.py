import MySQLdb
import urllib
import os
import codecs
import file_operate

backupDir = '/data/plattech/game-keystore-backup/'

conn = MySQLdb.connect(host = '10.66.118.154',port=3307,user = 'root',passwd = 'ycfwkX6312')
conn.select_db('rsdk_zhangbizheng')
curs = conn.cursor(MySQLdb.cursors.DictCursor)
curs.execute('SELECT game.gameName,channel.name,channel.keystoreFile,channel.keystorePwd,channel.keystoreAlias,channel.keystoreAliasPwd FROM tpl_channel channel JOIN game ON channel.idGame = game.gameId AND channel.keystoreFile IS NOT NULL')
results = curs.fetchall()
for r in results:
    if not os.path.exists(backupDir+r['gameName']+'/'+r['name']):
       os.makedirs(backupDir+r['gameName']+'/'+r['name'])

    urllib.urlretrieve(r['keystoreFile'],backupDir+r['gameName']+'/'+r['name']+'/defualt.keystore')
    logFile = codecs.open(backupDir+r['gameName']+'/'+r['name'] + '/readme.txt', 'a+', 'utf-8')
    content = 'keystorePwd:'+r['keystorePwd'] + '\r\n'
    content += 'keystoreAlias:'+r['keystoreAlias'] + '\r\n'
    content += 'keystoreAliasPwd:'+r['keystoreAliasPwd']
    logFile.write(unicode(content, 'gbk'))
    logFile.close()
    print '<===Write '+backupDir+r['gameName']+'/'+r['name']+'/defualt.keystore Success===>'

conn.close()

file_operate.execFormatCmd('cd '+backupDir)
file_operate.execFormatCmd('git pull')
file_operate.execFormatCmd('git status')
