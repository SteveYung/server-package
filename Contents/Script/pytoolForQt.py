# 2015.01.17 10:32:35 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/pytoolForQt.py
import os
import zipfile

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


def unZip(src, dest, apkFile):
    src = str(src).decode('utf8')
    dest = str(dest).decode('utf8')
    delete_file_folder(dest)
    if not os.path.exists(dest):
        os.makedirs(dest)
    f = zipfile.ZipFile(src)
    f.extractall(dest)
    f.close()


def zip(src, dest, apkFile):
    src = str(src).decode('utf8')
    dest = str(dest).decode('utf8')
    apkFile = str(apkFile).decode('utf8')
    filelist = []
    if os.path.isfile(src):
        filelist.append(src)
    else:
        if not os.path.exists(src + '/desc.txt'):
            if os.path.exists(src + '/../desc.txt'):
                filelist.append(src + '/../desc.txt')
        if not os.path.exists(src + '/update.txt'):
            if os.path.exists(src + '/../update.txt'):
                filelist.append(src + '/../update.txt')
        if not os.path.exists(src + 'image'):
            if os.path.exists(src + '/../image'):
                filelist.append(src + '/../image')
                for root, dirs, files in os.walk(src + '/../image'):
                    for name in files:
                        filelist.append(os.path.join(root, name))

        outputName = src + '/../../../Output/' + dest + '.zip'
        if not os.path.exists(src + '/../../../Output'):
            os.mkdir(src + '/../../../Output', 511)
        delete_file_folder(outputName)
        for root, dirs, files in os.walk(src):
            for name in files:
                fileName, ext = os.path.splitext(name)
                if not ext == '.apk' and not ext == '.app' and not ext == '.ipa':
                    if 'DS_Store' not in name and 'Project_iOS' not in root:
                        filelist.append(os.path.join(root, name))
                pathSrc = os.path.realpath(src + '/' + name)
                pathSrc = os.path.normcase(pathSrc)
                apkFile = os.path.realpath(apkFile)
                apkFile = os.path.normcase(apkFile)
                if pathSrc == apkFile:
                    if os.path.isfile(apkFile):
                        filelist.append(os.path.join(apkFile))

    zf = zipfile.ZipFile(outputName, 'w', zipfile.zlib.DEFLATED)
    for tar in filelist:
        arcname = os.path.basename(tar)
        zf.write(tar, arcname)

    zf.close()


def importSDK(src, dest):
    src = str(src).decode('utf8')
    dest = str(dest).decode('utf8')
    f = zipfile.ZipFile(src)
    filelist = f.namelist()
    bFindConfig = False
    for name in filelist:
        if name == 'config.xml':
            bFindConfig = True

    if not bFindConfig:
        f.close()
        return 0
    delete_file_folder(dest)
    if not os.path.exists(dest):
        os.makedirs(dest)
    f.extractall(dest)
    f.close()
    return 1
# +++ okay decompyling rsdk1.4/Script/pytoolForQt.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:35 CST
