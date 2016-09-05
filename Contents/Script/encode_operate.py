# 2015.01.17 10:32:30 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/encode_operate.py
import hashlib
import re
import base64
import urllib
import error_operate
import os

def replaceMD5(oldDexFile, newDexFile, libgameSo):
    file_dex1 = open(oldDexFile)
    try:
        file_dex2 = open(newDexFile)
        try:
            file_so = open(libgameSo, 'r')
            try:
                text_dex1 = file_dex1.read()
                hash_dex1 = hashlib.md5()
                hash_dex1.update(text_dex1)
                md5_dex1 = hash_dex1.hexdigest()
                md5_dex1 += 'ap9abmacde9856c'
                hash_dexs1 = hashlib.md5()
                hash_dexs1.update(md5_dex1)
                md5_dexs1 = hash_dexs1.hexdigest()
                text_dex2 = file_dex2.read()
                hash_dex2 = hashlib.md5()
                hash_dex2.update(text_dex2)
                md5_dex2 = hash_dex2.hexdigest()
                md5_dex2 += 'ap9abmacde9856c'
                hash_dexs2 = hashlib.md5()
                hash_dexs2.update(md5_dex2)
                md5_dexs2 = hash_dexs2.hexdigest()
                text_so = file_so.read()
                text_so = text_so.replace(md5_dexs1, md5_dexs2)
            finally:
                file_so.close()
                file_so_write = open(libgameSo, 'w')
                try:
                    file_so_write.write(text_so)
                finally:
                    file_so_write.close()

        finally:
            file_dex2.close()

    finally:
        file_dex1.close()


def xmlEncode(xmlFile):
    file_xml = open(xmlFile, 'r')
    try:
        text_xml = file_xml.read()
        base64_xml = base64.b64encode(text_xml)
        if len(base64_xml) % 2 == 0:
            n = 5
        else:
            n = 4
        encode_xml = ''
        for i in range(0, (len(base64_xml) - n + 1) / 2):
            encode_xml += base64_xml[2 * i + 1]
            encode_xml += base64_xml[2 * i]

        encode_xml += base64_xml[len(base64_xml) - n + 1:]
        urllib_xml = urllib.quote(encode_xml)
    finally:
        file_xml.close()
        file_xml_write = open(xmlFile, 'w')
        try:
            file_xml_write.write(urllib_xml)
        finally:
            file_xml_write.close()


def encodeXmlFiles(workDir):
    devInfo = workDir + '/assets/developerInfo.xml'
    supPlug = workDir + '/assets/supportPlugin.xml'
    if not os.path.exists(devInfo):
        error_operate.error(112)
        return 1
    xmlEncode(devInfo)
    if os.path.exists(supPlug):
        xmlEncode(supPlug)
    return 0
# +++ okay decompyling rsdk1.4/Script/encode_operate.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:30 CST
