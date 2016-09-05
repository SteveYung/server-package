# File: b (Python 2.7)

import subprocess
import os
import sys
appLocalPath = '/build/Release-iphoneos/'

def main():
    global curTargets, projectPath, errTarget, targetAppName, targetPlistName
    if len(sys.argv) <= 1:
        allTargets = GetTargets()
        print 'Target is:'
        print allTargets
        print 'Using python ./buildTarget.py targetName1,targetName2,.....  to build targets'
        print 'Using python ./buildTarget.py alltargets     to build all target'
        return None
    if None.argv[1] == 'alltargets':
        curTargets = GetTargets()
    else:
        curTargets = sys.argv[1].split(',')
        print curTargets
        allTargets = GetTargets()
        print allTargets
        for targetItem in curTargets:
            if CheckItem(targetItem, allTargets) == False:
                print 'target:' + targetItem + ' is not found'
                return None
        
    projectPath = os.getcwd()
    errTarget = { }
    for target in curTargets:
        if target.find(' ') != -1:
            target = '"' + target + '"'
        buildSettings = GetBuildSettings(target)
        for line in buildSettings:
            lineBuf = line.strip()
            if lineBuf.startswith('FULL_PRODUCT_NAME'):
                targetAppName = lineBuf[lineBuf.find('=') + 2:len(lineBuf)]
            if lineBuf.startswith('INFOPLIST_FILE'):
                targetPlistName = lineBuf[lineBuf.find('=') + 2:len(lineBuf)]
                continue
        pListInfo = ReadPList(targetPlistName)
        print 'start clean ' + target
        cmd = 'xcodebuild -target ' + target + ' clean'
        r = RunCmd(cmd, projectPath)
        if r != 0:
            errstr = 'errcode:%d' % r
            errTarget[target] = 'clean'
            print errstr
        else:
            print 'clean ' + target + ' success'
        print 'start build app'
        cmd = 'xcodebuild -target ' + target
        r = RunCmd(cmd, projectPath)
        if r != 0:
            errstr = 'errcode:%d' % r
            errTarget[target] = 'build app'
            print errstr
        else:
            print 'build ' + target + ' app success'
        print 'start build ipa'
        codeVersion = pListInfo.get('CFBundleShortVersionString')
        appPath = projectPath + appLocalPath
        cmd = 'xcrun -sdk iphoneos PackageApplication -v '
        cmd += appPath
        cmd += targetAppName.replace(' ', '\\ ')
        cmd += ' -o '
        cmd += appPath
        cmd += targetAppName[0:len(targetAppName) - 4].replace(' ', '\\ ')
        cmd += '_v'
        if len(codeVersion) > 0:
            cmd += '_'
            cmd += pListInfo.get('CFBundleShortVersionString')
        cmd += '.ipa'
        r = RunCmd(cmd, projectPath)
        if r != 0:
            errstr = 'errcode:%d' % r
            errTarget[target] = 'build ipa'
            print errstr
            continue
        print 'build ' + target + ' ipa success'
    


def RunCmd(cmd, path):
    r = subprocess.Popen(cmd, shell = True, cwd = path)
    r.wait()
    return r.returncode


def GetBuildSettings(target):
    cmd = 'xcodebuild -target ' + target + ' -showBuildSettings'
    projectPath = os.getcwd()
    p = subprocess.Popen(cmd, stdout = subprocess.PIPE, stderr = subprocess.PIPE, shell = True, cwd = projectPath)
    p.wait()
    return p.stdout


def ReadPList(pListName):
    global pListInfo, isCFBundleVersion, isCFBundleShortVersionString, isCFBundleVersion, isCFBundleShortVersionString, isCFBundleVersion, isCFBundleShortVersionString
    pListInfo = { }
    plistFile = open(os.getcwd() + '/' + pListName)
    
    try:
        isCFBundleVersion = False
        isCFBundleShortVersionString = False
        for line in plistFile:
            if isCFBundleVersion:
                pListInfo['CFBundleVersion'] = line[line.find('>') + 1:line.rfind('<')]
                isCFBundleVersion = False
            if isCFBundleShortVersionString:
                pListInfo['CFBundleShortVersionString'] = line[line.find('>') + 1:line.rfind('<')]
                isCFBundleShortVersionString = False
            if line.find('CFBundleVersion') != -1:
                isCFBundleVersion = True
            if line.find('CFBundleShortVersionString') != -1:
                isCFBundleShortVersionString = True
                continue
    finally:
        plistFile.close()

    return pListInfo


def CheckItem(item, items):
    for it in items:
        if cmp(it, item) == 0:
            return True
    
    return False


def GetTargets():
    global isStart, targets, isStart
    cmd = 'xcodebuild -list'
    projectPath = os.getcwd()
    p = subprocess.Popen(cmd, stdout = subprocess.PIPE, stderr = subprocess.PIPE, shell = True, cwd = projectPath)
    p.wait()
    text = p.stdout
    isStart = False
    targets = []
    for line in text:
        if len(line.strip()) > 2 or line.find('Build Configurations:') != -1:
            break
        if isStart == True:
            targets.append(line.strip())
        if line.find('Targets:') != -1:
            isStart = True
        
    
    return targets

if __name__ == '__main__':
    main()
