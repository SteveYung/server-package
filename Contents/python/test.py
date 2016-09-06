#import os
#import subprocess


#os.environ['PATH']=os.environ['PATH']+ ':/usr/java/android/android-sdk-linux/build-tools/24.0.1/'
#rint os.environ['PATH']
#os.environ['LD_LIBRARY_PATH']='/opt/glibc-2.14/lib'

#s = subprocess.Popen('aapt', stdout=subprocess.PIPE, shell=True)
# str = '/data/plattech/tmp/channel_pg/rsdk_zhangbizheng/1/000550/mrdg_20160901183338.apk'
# strlist = str.split('/')

#for value in strlist:
 #   str_final += value;
  #  print value

# str_final = str.replace(strlist[len(strlist)-1],'')
# outputDir = '/'+strlist[len(strlist)-4]+'/'+strlist[len(strlist)-3]+'/'+strlist[len(strlist)-2]+'/'
# print outputDir
# print str_final
import urllib
from PIL import Image as image



url = 'http://123.207.92.160/rsdk-set/upload/rsdk_zhangbizheng/1/600072/icon/game.png '



def resizeImg(**args):
    args_key = {'ori_img':'','dst_img':'','dst_w':'','dst_h':'','save_q':75}
    arg = {}
    for key in args_key:
        if key in args:
            arg[key] = args[key]
        
    im = image.open(arg['ori_img'])
    ori_w,ori_h = im.size
    widthRatio = heightRatio = None
    ratio = 1
    if (ori_w and ori_w > arg['dst_w']) or (ori_h and ori_h > arg['dst_h']):
        if arg['dst_w'] and ori_w > arg['dst_w']:
            widthRatio = float(arg['dst_w']) / ori_w #
        if arg['dst_h'] and ori_h > arg['dst_h']:
            heightRatio = float(arg['dst_h']) / ori_h

        if widthRatio and heightRatio:
            if widthRatio < heightRatio:
                ratio = widthRatio
            else:
                ratio = heightRatio

        if widthRatio and not heightRatio:
            ratio = widthRatio
        if heightRatio and not widthRatio:
            ratio = heightRatio
            
        newWidth = int(ori_w * ratio)
        newHeight = int(ori_h * ratio)
    else:
        newWidth = ori_w
        newHeight = ori_h
        
    im.resize((newWidth,newHeight),image.ANTIALIAS).save(arg['dst_img'],quality=arg['save_q'])

    '''
    image.ANTIALIAS
    NEAREST: use nearest neighbour
    BILINEAR: linear interpolation in a 2x2 environment
    BICUBIC:cubic spline interpolation in a 4x4 environment
    ANTIALIAS:best down-sizing filter
    '''

def reporthook(count,block_size,total_size):
    per = (100.0 * count * block_size ) / total_size
    print "Downloading: %d%%" % per

down_log = urllib.urlretrieve(url,'icon.png',reporthook)
resizeImg(ori_img='icon.png',dst_img='icon144.png',dst_w=144,dst_h=144,save_q=100)
