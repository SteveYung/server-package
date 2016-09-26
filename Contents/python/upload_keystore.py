import MySQLdb
import urllib
import os

backupDir = '/data/plattech/game-keystore-backup/'

conn = MySQLdb.connect(host = '10.66.118.154',port=3307,user = 'root',passwd = 'ycfwkX6312')
conn.select_db('rsdk_zhangbizheng')
curs = conn.cursor(MySQLdb.cursors.DictCursor)
curs.execute('SELECT game.gameName,channel.name,channel.keystoreFile,channel.keystorePwd,channel.keystoreAlias,channel.keystoreAliasPwd FROM tpl_channel channel JOIN game ON channel.idGame = game.gameId AND channel.keystoreFile IS NOT NULL')
results = curs.fetchall()
for r in results:
    if not os.path.exists('/data/plattech/game-keystore-backup/'+r['gameName']+'/'+r['name']):
       os.makedirs('/data/plattech/game-keystore-backup/'+r['gameName']+'/'+r['name'])
    urllib.urlretrieve(r['keystoreFile'],'/data/plattech/game-keystore-backup/'+r['gameName']+'/'+r['name']+'/defualt.keystore')
    print '<===Write '+'/data/plattech/game-keystore-backup/'+r['gameName']+'/'+r['name']+'/defualt.keystore Success===>'
conn.close()
