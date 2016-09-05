#import os
#import subprocess


#os.environ['PATH']=os.environ['PATH']+ ':/usr/java/android/android-sdk-linux/build-tools/24.0.1/'
#rint os.environ['PATH']
#os.environ['LD_LIBRARY_PATH']='/opt/glibc-2.14/lib'

#s = subprocess.Popen('aapt', stdout=subprocess.PIPE, shell=True)
str = '/data/plattech/tmp/channel_pg/rsdk_zhangbizheng/1/000550/mrdg_20160901183338.apk'
strlist = str.split('/')

#for value in strlist:
 #   str_final += value;
  #  print value

str_final = str.replace(strlist[len(strlist)-1],'')
outputDir = '/'+strlist[len(strlist)-4]+'/'+strlist[len(strlist)-3]+'/'+strlist[len(strlist)-2]+'/'
print outputDir
print str_final
