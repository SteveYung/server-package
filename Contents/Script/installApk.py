import sys
import file_operate

print 'install apk path----' + sys.argv[1]
cmd = 'chmod 777 ../tool/mac/adb'
file_operate.execFormatCmd(cmd)
cmd = '../tool/mac/adb install -r ' + sys.argv[1]
file_operate.execFormatCmd(cmd)
