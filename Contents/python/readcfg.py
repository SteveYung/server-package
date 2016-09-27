
import ConfigParser

cf = ConfigParser.ConfigParser()
cf.read("../config/db_config.ini")

db_host = cf.get("mysqlconf", "host")
db_port = cf.getint("mysqlconf", "port")
db_user = cf.get("mysqlconf", "user")
db_pwd = cf.get("mysqlconf", "password")

print db_host, db_port, db_user, db_pwd

# cf.set("mysqlconf", "db_pass", "123456")
# cf.write(open("config_file_path", "w"))
