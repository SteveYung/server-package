import MySQLdb

conn = MySQLdb.connect(host = '10.66.118.154',port=3307,user = 'root',passwd = 'ycfwkX6312')
conn.select_db('rsdk_zhangbizheng')
curs = conn.cursor(MySQLdb.cursors.DictCursor)
curs.execute('select * from game where gameId = "1"')
results = curs.fetchall()
for r in results:
    print r['gameId']
conn.close() 
