# 2015.01.17 10:32:30 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/file_operate.py
import os
import os.path
import zipfile
import re
import subprocess
import platform
from config import ConfigParse
import inspect
import sys
import codecs
import threading
import time
import error_operate

from PIL import Image as image

bPrint = False
Language = 'Chinese'
curDir = os.getcwd()

def get_server_dir():
    return '/data/plattech/server_sdk_pack/Contents'

def delete_file_folder(src):
    if os.path.exists(src):
        if os.path.isfile(src):
            try:
                src = src.replace('\\', '/')
                os.remove(src)
            except:
                pass

        elif os.path.isdir(src):
            for item in os.listdir(src):
                itemsrc = os.path.join(src, item)
                delete_file_folder(itemsrc)

            try:
                os.rmdir(src)
            except:
                pass


def copyFiles(sourceDir, targetDir):
    if not os.path.exists(sourceDir) and not os.path.exists(targetDir):
        printf('copy Files from %s to %s Fail:file not found' % (sourceDir, targetDir))
        return
    if os.path.isfile(sourceDir):
        copyFile(sourceDir, targetDir)
        return
    for file in os.listdir(sourceDir):
        sourceFile = os.path.join(sourceDir, file)
        targetFile = os.path.join(targetDir, file)
        if os.path.isfile(sourceFile):
            if not os.path.exists(targetDir):
                os.makedirs(targetDir)
            if not os.path.exists(targetFile) or os.path.exists(targetFile) and os.path.getsize(targetFile) != os.path.getsize(sourceFile):
                targetFileHandle = open(targetFile, 'wb')
                sourceFileHandle = open(sourceFile, 'rb')
                targetFileHandle.write(sourceFileHandle.read())
                targetFileHandle.close()
                sourceFileHandle.close()
        if os.path.isdir(sourceFile):
            copyFiles(sourceFile, targetFile)


def copyFile(sourceFile, targetFile):
    sourceFile = getFullPath(sourceFile)
    targetFile = getFullPath(targetFile)
    if not os.path.exists(sourceFile):
        return
    if not os.path.exists(targetFile) or os.path.exists(targetFile) and os.path.getsize(targetFile) != os.path.getsize(sourceFile):
        targetDir = os.path.dirname(targetFile)
        if not os.path.exists(targetDir):
            os.makedirs(targetDir)
            file_operate.execFormatCmd('chmod -R 777 %s' % targetFile)
        execFormatCmd('cp -f -a %s %s ' %(sourceFile,targetDir+'/temp.apk'))
        execFormatCmd('chmod 777 %s' % (targetDir+'/temp.apk'))
        # targetFileHandle = open(targetFile, 'wb')
        # sourceFileHandle = open(sourceFile, 'rb')
        # targetFileHandle.write(sourceFileHandle.read())
        # targetFileHandle.close()
        # sourceFileHandle.close()


def copyApkToZip(filename):
    dotIndex = filename.find('.')
    newfilename = filename
    if dotIndex >= 0 and os.path.exists(filename):
        name = filename[:dotIndex]
        ext = filename[dotIndex:]
        newext = '.zip'
        newfilename = name + newext
        if not os.path.exists(newfilename) or os.path.exists(newfilename) and os.path.getsize(newfilename) != os.path.getsize(filename):
            targetFileHandle = open(newfilename, 'wb')
            sourceFileHandle = open(filename, 'rb')
            targetFileHandle.write(sourceFileHandle.read())
            targetFileHandle.close()
            sourceFileHandle.close()
            printf('copy success')


def decompression(filename, unziptodir):
    delete_file_folder(unziptodir)
    if not os.path.exists(unziptodir):
        os.mkdir(unziptodir, 511)
    f = zipfile.ZipFile(filename)
    f.extractall(unziptodir)
    printf('decompression success!')
    f.close()
    delete_file_folder(filename)


def getCurDir():
    global curDir
    retPath = curDir
    if platform.system() == 'Windows':
        retPath = retPath.decode('gbk')
    return retPath


def getFullPath(filename):
    if os.path.isabs(filename):
        return filename
    dirname = getCurDir()
    filename = os.path.join(dirname, filename)
    filename = filename.replace('\\', '/')
    filename = re.sub('/+', '/', filename)
    return filename


def getToolPath(filename):
    print '<---getToolPath,filename of Tool--->'+filename
    # if (filename == 'aapt' or filename == 'zipalign'):
    #     return filename
    # os.environ['LD_LIBRARY_PATH']='/opt/glibc-2.14/lib'
	#print '<---AAPT_LD_LIBRARY_PATH--->'+os.environ['LD_LIBRARY_PATH'] 

    #else:
#	os.environ['LD_LIBRARY_PATH']=''
	#print '<---LD_LIBRARY_PATH--->'+os.environ['LD_LIBRARY_PATH']
    toolPath = get_server_dir()+'/tool/mac/' + filename
    return toolPath


def modifyFileContentByBinary(source, oldContent, newContent):
    f = open(source, 'rb')
    data = f.read()
    f.close()
    bRet = False
    idx = data.find(oldContent)
    while idx != -1:
        data = data[:idx] + newContent + data[idx + len(oldContent):]
        idx = data.find(oldContent, idx + len(oldContent))
        bRet = True

    if bRet:
        fhandle = open(source, 'wb')
        fhandle.write(data)
        fhandle.close()


def modifyFileContent(source, fileType, oldContent, newContent):
    if os.path.isdir(source):
        for file in os.listdir(source):
            sourceFile = os.path.join(source, file)
            modifyFileContent(sourceFile, fileType, oldContent, newContent)

    elif os.path.isfile(source) and os.path.splitext(source)[1] == fileType:
        f = open(source, 'r+')
        data = str(f.read())
        f.close()
        bRet = False
        idx = data.find(oldContent)
        while idx != -1:
            data = data[:idx] + newContent + data[idx + len(oldContent):]
            idx = data.find(oldContent, idx + len(oldContent))
            bRet = True

        if bRet:
            fhandle = open(source, 'w')
            fhandle.write(data)
            fhandle.close()
            printf('modify file:%s' % source)
        else:
            error_operate.error(108)


def execFormatCmd(cmd):
    cmd = cmd.replace('\\', '/')
    cmd = re.sub('/+', '/', cmd)
    ret = 0
    if platform.system() == 'Windows':
        st = subprocess.STARTUPINFO
        st.dwFlags = subprocess.STARTF_USESHOWWINDOW
        st.wShowWindow = subprocess.SW_HIDE
        cmd = str(cmd).encode('gbk')
    s = subprocess.Popen(cmd, shell=True)
    ret = s.wait()
    if ret:
        s = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
        stdoutput, erroutput = s.communicate()
        reportCmdError(cmd, stdoutput, erroutput)
        cmd = 'ERROR:' + cmd + ' ===>>> exec Fail <<<=== '
    else:
        cmd += ' ===>>> exec success <<<=== '
    printf(cmd)
    return ret


def getApkVersion(apkFile):
    """get the version about apk"""
    #os.environ['PATH']=os.environ['PATH']+ ':/usr/java/android/android-sdk-linux/build-tools/24.0.1/'
    #print os.environ['PATH']
    # os.environ['LD_LIBRARY_PATH']='/opt/glibc-2.14/lib'

    cmd = getToolPath('aapt') +' d badging "' + apkFile + '"'
    cmd = cmd.replace('\\', '/')
    cmd = re.sub('/+', '/', cmd)
    ret = 0
    if platform.system() == 'Windows':
        st = subprocess.STARTUPINFO
        st.dwFlags = subprocess.STARTF_USESHOWWINDOW
        st.wShowWindow = subprocess.SW_HIDE
        cmd = str(cmd).encode('gbk')
    print '<---getApkVersion cmd:'+cmd
    s = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True)
    info = s.communicate()[0]
    nPos = info.find('versionName')
    nEnd = info.find("'", nPos + 13)
    versionName = info[nPos + 13:nEnd]
    # os.environ['LD_LIBRARY_PATH']=''
    if versionName == '':
        versionName = 'UnknownVersion'
    return versionName


def getTargetSdkVersion(apkFile):
    cmd = getToolPath('aapt') + " d badging '" + apkFile + "'"
    cmd = cmd.replace('\\', '/')
    cmd = re.sub('/+', '/', cmd)
    cmd = str(cmd).encode('utf-8')
    ret = 0
    if platform.system() == 'Windows':
        st = subprocess.STARTUPINFO
        st.dwFlags = subprocess.STARTF_USESHOWWINDOW
        st.wShowWindow = subprocess.SW_HIDE
    s = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True)
    info = s.communicate()[0]
    nPos = info.find('targetSdkVersion')
    nEnd = info.find("'", nPos + 18)
    sdkVersionName = info[nPos + 18:nEnd]
    return int(sdkVersionName)


def backupApk(source, game, versionName):
    """
    outputDir = ConfigParse.shareInstance().getOutputDir()
    #if outputDir == '':
    outputDir = get_server_dir()+'/backupApk/'+outputDir
    # outputDir += '/'+game['gameName'].encode('utf-8')+'/' + versionName + '/common'
    outputDir = getFullPath(outputDir)
    backupName = '%s/common.apk' % outputDir
    print '<---backupApk apkname--->'+backupName
    if os.path.exists(backupName):
        os.remove(backupName)
    copyFile(source, backupName)
    """

def getJavaBinDir():
    javaBinDir = '/usr/java/jdk1.7.0_79/bin/'
    return javaBinDir


def getJava():
    return 'java'


def printf(str):
    """
    print info in debug mode
    or
    write info into pythonLog.txt in release mode
    """
    global bPrint
    if bPrint:
        print str


def reportCmdError(cmd, stdoutput, erroutput):
    """
    """
    errorLog = stdoutput + '\r\n' + erroutput
    reportError(errorLog, int(threading.currentThread().getName()))


def reportError(errorOuput, idChannel):
    """
    """
    packageName = ''
    channel = ConfigParse.shareInstance().findChannel(idChannel)
    if channel != None and channel.get('packNameSuffix') != None:
        packageName = str(channel['packNameSuffix'])
        channelName = str(channel['name'])
        if platform.system() == 'Windows':
            channelName = str(channel['name']).encode('gbk')
        else:
            channelName = channel['name'].decode('utf8').encode('gbk')
    error = '==================>>>> ERROR <<<<==================\r\n'
    error += '[rsdk_Channel]: ' + threading.currentThread().getName() + '\r\n'
    error += '[rsdk_ChannelName]: ' + channelName + '\r\n'
    error += '[rsdk_Package]: ' + packageName + '\r\n'
    error += '[rsdk_Time]: ' + time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time())) + '\r\n'
    error += '[rsdk_Error]:\r\n'
    error += errorOuput + '\r\n'
    error += '===================================================\r\n'
    log(error)


def log(str):
    outputDir = ConfigParse.shareInstance().getOutputDir()
    logDir = get_server_dir()+'/Log/'+outputDir + '/'
    if not os.path.exists(logDir):
        os.makedirs(logDir)
    logFile = codecs.open(logDir + 'error.txt', 'a+', 'utf-8')
    print '<---logFile--->'+logDir + 'error.txt'
    content = str + '\r\n'
    if platform.system() == 'Windows':
        logFile.write(unicode(content, 'gbk'))
    else:
        logFile.write(unicode(content, 'gbk'))
    logFile.close()


def setPrintEnable(bEnable):
    global bPrint
    global curDir
    bPrint = bEnable
    curDir = sys.path[0]


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

# +++ okay decompyling rsdk1.4/Script/file_operate.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 201501.17 10:32:31 CST
