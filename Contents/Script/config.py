#coding=utf-8
# 2015.01.17 10:32:29 CST
#Embedded file name: /Projects/GitLab/rsdk_package/Env/Script/config.py
import threading
from xml.etree import ElementTree as ET

import os
import file_operate

import platform
from modifyProject import XcodeProject

from modifyPlist import *
import MySQLdb
import sys
reload(sys)
sys.setdefaultencoding('utf-8')

import ConfigParser

class ConfigParse(object):
    """The class can parse project config file of xml """

    def __init__(self):
        """disable the __init__ method"""
        pass

    __configParse = None
    __lock = threading.Lock()

    __appName = ''
    __iOSName = ''
    _projFolder = ''
    _projXcode = ''
    _projSDKVersion = ''
    _projSDKPath = ''
    _projIpaPackage = ''
    _outputDir = ''
    _keystore = {}
    _oldPackagename = ''
    _packagename = ''
    __gameLs = []
    __gamekey = 0
    __gameVersionName = ''
    __SDKLs = {}
    __channelCustomLs = {}
    __channelLs = {}
    __userSDKConfigLs = {}
    __resReplaceLs = {}
    __packageLs = []
    __subPackageLs = {}
    __SDKVersionLs = []
    __isCocosPlayMode = False
    _targetName = '' #存放target
    __log_dir = None
    _channel_num = None

    _db_name = sys.argv[1]
    _game_id = sys.argv[2]
    _channel_id = sys.argv[3]
    _source = sys.argv[4]
    _out_put_file = sys.argv[5]
    _sub_channel_id = sys.argv[6]

    db_host = ''
    db_port = 0
    db_user = ''
    db_pwd = ''
    db_sdk_name = ''

    @staticmethod
    def shareInstance():
        ConfigParse.__lock.acquire()
        if not ConfigParse.__configParse:
            ConfigParse.__configParse = object.__new__(ConfigParse)
            object.__init__(ConfigParse.__configParse)
            ConfigParse.__configParse.projectConfigRead()
        ConfigParse.__lock.release()
        return ConfigParse.__configParse

    def projectConfigRead(self):
        """Read config.xml file and save to a dictionary"""
        self.initDatabase()

    def readUserConfig(self, platform):
        """read config about user choice"""
        #self.addLibPath()
        self.readUserDatabase()
        if platform == 0:
            self.__gameVersionName = file_operate.getApkVersion(self._source)
            # print 'gameVersionName='+self.__gameVersionName
        elif platform == 1:
            self.__gameVersionName = self.getIosProjectVersion()

    def set_log_dir(self,log_dir):
        self.__log_dir = log_dir

    def set_channel_num(self,channel_num):
        self._channel_num = channel_num

    def get_log_dir(self):
        return self.__log_dir

    def getSource(self):
        return self._source

    def getDBName(self):
        return self._db_name

    def getOutPutApkName(self):
        return self._out_put_file

    def getAppName(self):
        return self.__appName

    def getIosName(self):
        return self.__iOSName

    def getProjFolder(self):
        return self._projFolder

    def getProjXcode(self):
        return self._projXcode

    def getProjSDKVersion(self):
        return self._projSDKVersion

    def getProjSDKPath(self):
        return self._projSDKPath

    def getProjIpaPackage(self):
        return self._projIpaPackage

    def getOutputDir(self):
        return self._outputDir

    def getOutputLogDir(self):
        return self._db_name + self._game_id + self._channel_num

    def getKeyStore(self):
        return self._keystore

    def getGamekey(self):
        return self.__gamekey

    def getVersionName(self):
       return self.__gameVersionName
    #获取targetName
    def getTargetName(self):
        return self._targetName

    def initDatabase(self):
        """get the data from database."""

        cf = ConfigParser.ConfigParser()
        cf.read(file_operate.get_server_dir()+"/config/db_config.ini")

        self.db_host = cf.get("mysqlconf", "host")
        self.db_port = cf.getint("mysqlconf", "port")
        self.db_user = cf.get("mysqlconf", "user")
        self.db_pwd = cf.get("mysqlconf", "password")
        self.db_sdk_name = cf.get("mysqlconf", "sdkdbname")

        cx = MySQLdb.connect(host=self.db_host, port=self.db_port, user=self.db_user, passwd=self.db_pwd)
        cx.select_db(self.db_sdk_name)
        self.readSDKLs(cx)
        cx.close()

    def readUserDatabase(self):
        """get the config about user's sdk from database"""
        cf = ConfigParser.ConfigParser()
        cf.read(file_operate.get_server_dir()+"/config/db_config.ini")

        self.db_host = cf.get("mysqlconf", "host")
        self.db_port = cf.getint("mysqlconf", "port")
        self.db_user = cf.get("mysqlconf", "user")
        self.db_pwd = cf.get("mysqlconf", "password")

        cx = MySQLdb.connect(host=self.db_host, port=self.db_port, user=self.db_user, passwd=self.db_pwd)
        cx.select_db(self._db_name)
        #self.readSDKVersionLs(cx)
#        self.readChannelCustomLs(cx) 7.12
        self.readChannel(cx)
        self.readChannelSdk(cx)
        self.readUserSDKConfig(cx)
        self.readUserSDKParam(cx)
        self.readGameLs(cx)
        # self.readUserSource(cx)
        # self.readProjFolder(cx)
        # self.readProjSDKPath(cx)
        self.readOutputDir(cx)
        self.readPackage(cx)
        self.read_res_for_replace(cx)
        self.read_sub_channel_database(cx)
        # self.readTargetName(cx) #从user.xml里读取targetName
        cx.close()
        game = self.getCurrentGame()
        if game is None:
            print 'game == None'
            return
        self._keystore['file'] = game['keystoreFile']
        self._keystore['storepassword'] = game['keystorePwd']
        self._keystore['keyalias'] = game['keystoreAlias']
        self._keystore['aliaspassword'] = game['keystoreAliasPwd']
        # print 'keystore-->'+game['keystoreFile']

    def read_sub_channel_database(self,cx):
        self.__subPackageLs.clear()
        try:
            if self._sub_channel_id is None:
                pass
            else:
                c = cx.cursor(MySQLdb.cursors.DictCursor)
                c.execute('select * from tpl_sub_channel where id = %s' % self._sub_channel_id)
                self.__subPackageLs = c.fetchall()
                c.close()
        except:
            pass

    def readSDKLs(self, cx):
        """get the data about tpl_sdk from database"""
        self.__SDKLs.clear()
        c = cx.cursor(MySQLdb.cursors.DictCursor)
        c.execute('select * from tpl_sdk')
        rows = c.fetchall()
        for r in rows:
            dictTemp = {}
            dictTemp['idSDK'] = r['idSDK']
            dictTemp['SDKNum'] = r['SDKNum']
            dictTemp['SDKName'] = r['SDKName']
            dictTemp['pluginxType'] = r['pluginxType']
            dictTemp['SDKShowName'] = r['SDKShowName']
            dictTemp['bHasChildSDK'] = r['bHasChildSDK']
            if r['orderCallback'] is None:
                dictTemp['orderCallback'] = ''
            else:
                dictTemp['orderCallback'] = r['orderCallback']
            dictTemp['operateLs'] = []
            dictTemp['pluginLs'] = []
            dictTemp['SDKLs'] = []
            self.__SDKLs[dictTemp['idSDK']] = dictTemp

        c.close()

    def readChannelCustomLs(self, cx):
        """get the data about tpl_channel_customer from database"""
        self.__channelCustomLs.clear()
        c = cx.cursor(MySQLdb.cursors.DictCursor)
        c.execute('select * from tpl_channel_customer')
        rows = c.fetchall()
        for r in rows:
            dictTemp = {}
            dictTemp['channelNum'] = r['channelNum']
            dictTemp['channelName'] = r['channelName']
            dictTemp['channelPlatform'] = r['channelPlatform']
            dictTemp['channelSequence'] = r['channelSequence']
            dictTemp['customChannelNumber'] = r['customChannelNumber']
            dictTemp['publicChannelNum'] = r['publicChannelNum']
            self.__channelCustomLs[dictTemp['channelNum']] = dictTemp

        c.close()

    def readSDKVersionLs(self, cx):
        """get the data about tpl_sdk from database"""
        self.__SDKVersionLs = []
        c = cx.cursor(MySQLdb.cursors.DictCursor)
        c.execute('select * from tpl_version')
        rows = c.fetchall()
        for r in rows:
            dictTemp = {}
            dictTemp['name'] = r['name']
            dictTemp['version'] = r['version']
            dictTemp['type'] = r['type']
            dictTemp['showVersion'] = r['showVersion']
            self.__SDKVersionLs.append(dictTemp)

        c.close()

    def readChannel(self, cx):
        """get the data about tpl_channel from database"""
        self.__channelLs.clear()
        c = cx.cursor(MySQLdb.cursors.DictCursor)
        c.execute('set names utf8')
        c.execute('select * from tpl_channel')
        rows = c.fetchall()
        for r in rows:
            dictTemp = {}
            dictTemp['idChannel'] = r['idChannel']
            dictTemp['channelNum'] = r['channelNum']
            dictTemp['name'] = r['name'].encode('utf-8')
            dictTemp['idGame'] = r['idGame']
            dictTemp['packNameSuffix'] = r['packNameSuffix']
            if r['r_channel_game_icon'] is None:
                dictTemp['r_channel_game_icon'] = ''
            else:
                dictTemp['r_channel_game_icon'] = r['r_channel_game_icon']
            if r['keystoreFile'] is None:
                dictTemp['keystoreFile'] = ''
            else:
                dictTemp['keystoreFile'] = r['keystoreFile']
            if r['keystorePwd'] is None:
                dictTemp['keystorePwd'] = ''
            else:
                dictTemp['keystorePwd'] = r['keystorePwd']
            if r['keystoreAlias'] is None:
                dictTemp['keystoreAlias'] = ''
            else:
                dictTemp['keystoreAlias'] = r['keystoreAlias']
            if r['keystoreAliasPwd'] is None:
                dictTemp['keystoreAliasPwd'] = ''
            else:
                dictTemp['keystoreAliasPwd'] = r['keystoreAliasPwd']
            if r['uapiKey'] is None:
                dictTemp['uapiKey'] = ''
            else:
                dictTemp['uapiKey'] = r['uapiKey']
            if r['uapiSecret'] is None:
                dictTemp['uapiSecret'] = ''
            else:
                dictTemp['uapiSecret'] = r['uapiSecret']
            dictTemp['oauthLoginServer'] = r['oauthLoginServer']
            dictTemp['bHasSplash'] = r['bHasSplash']
            if r['extChannel'] is None:
                dictTemp['extChannel'] = ''
            else:
                dictTemp['extChannel'] = r['extChannel']
            if r['jsonMeta'] is None:
                dictTemp['jsonMeta'] = ''
            else:
                dictTemp['jsonMeta'] = r['jsonMeta']
            if r['customChannelNumber'] is None:
                dictTemp['customChannelNumber'] = ''
            else:
                dictTemp['customChannelNumber'] = r['customChannelNumber']
            dictTemp['r_big_app_id'] = r['r_big_app_id']
            dictTemp['r_sub_app_id'] = r['r_sub_app_id']
            if r['r_gameversion'] is None:
                dictTemp['r_gameversion'] = ''
            else:
                dictTemp['r_gameversion'] = r['r_gameversion']
            if r['r_gameversion_build'] is None:
                dictTemp['r_gameversion_build'] = ''
            else:
                dictTemp['r_gameversion_build'] = r['r_gameversion_build']
            if r['r_bundle_id'] is None:
                dictTemp['r_bundle_id'] = ''
            else:
                dictTemp['r_bundle_id'] = r['r_bundle_id']
            if r['display_name'] is None:
                dictTemp['display_name'] = ''
            else:
                dictTemp['display_name'] = r['display_name'].encode('utf-8')
            dictTemp['sdkLs'] = []
            self.__channelLs[dictTemp['idChannel']] = dictTemp

        c.close()

    def readChannelSdk(self, cx):
        """get the data about sdk in channel from database"""
        c = cx.cursor(MySQLdb.cursors.DictCursor)
        c.execute('select * from tpl_channel_sdk')
        rows = c.fetchall()
        for r in rows:
            dictTemp = {}
            dictTemp['id'] = r['id']
            dictTemp['idChannel'] = r['idChannel']
            dictTemp['idSDK'] = r['idSDK']
            dictTemp['type'] = r['type']
            dictTemp['childSDK'] = r['childSDK']
            if r['notify_url'] is None:
                dictTemp['notify_url'] = ''
            else:
                dictTemp['notify_url'] = r['notify_url']
            idChannel = dictTemp['idChannel']
            channel = self.__channelLs.get(idChannel)
            if channel is not None:
                channel['sdkLs'].append(dictTemp)

        c.close()

    def readUserSDKConfig(self, cx):
        """get the data about tpl_user_sdk_config from database"""
        self.__userSDKConfigLs.clear()
        c = cx.cursor(MySQLdb.cursors.DictCursor)
        c.execute('select * from tpl_user_sdk_config')
        rows = c.fetchall()
        for r in rows:
            dictTemp = {}
            dictTemp['idUserSDK'] = r['idUserSDK']
            dictTemp['name'] = r['name']
            dictTemp['idChannel'] = r['idChannel']
            dictTemp['idSDK'] = r['idSDK']
            dictTemp['showName'] = r['showName']
            dictTemp['type'] = r['type']
            dictTemp['childSDK'] = r['childSDK']
            if r['notify_url'] is None:
                dictTemp['notify_url'] = ''
            else:
                dictTemp['notify_url'] = r['notify_url']
            dictTemp['param'] = []
            self.__userSDKConfigLs[dictTemp['idUserSDK']] = dictTemp

        c.close()

    def readUserSDKParam(self, cx):
        """get the data about tpl_user_sdk_param from database"""
        c = cx.cursor(MySQLdb.cursors.DictCursor)
        c.execute('select * from tpl_user_sdk_param')
        rows = c.fetchall()
        for r in rows:
            dictTemp = {}
            dictTemp['id'] = r['id']
            dictTemp['name'] = r['name']
            if r['value'][1:] is None:
                dictTemp['value'] = ''
            else:
                dictTemp['value'] = r['value'][1:]
            dictTemp['idUserSDK'] = r['idUserSDK']
            dictTemp['required'] = r['required']
            dictTemp['bWriteIntoManifest'] = r['bWriteIntoManifest']
            dictTemp['bUserOffer'] = r['bUserOffer']
            dictTemp['bWriteIntoClient'] = r['bWriteIntoClient']
            sdkItem = self.__userSDKConfigLs.get(dictTemp['idUserSDK'])
            if sdkItem is not None:
                sdkItem['param'].append(dictTemp)

        c.close()


    def readOutputDir(self, cx):
        """read output dir from user.xml"""
        str = self._out_put_file
        outputDir = os.path.dirname(str).strip('/')
        print "<---outputDir--->" + outputDir
        self._outputDir = outputDir


    def readGameLs(self, cx):
        """get the data about game list from database"""
        self.__gameLs = []
        c = cx.cursor(MySQLdb.cursors.DictCursor)
        c.execute('select * from game where gameId = ' + self._game_id)
        rows = c.fetchall()
        for r in rows:
            dictTemp = {}
            dictTemp['gameId'] = r['gameId']
            dictTemp['gameName'] = r['gameName'].encode('utf-8')
            dictTemp['gameType'] = r['gameType']
            dictTemp['gameIcon'] = r['gameIcon']
            dictTemp['gameTelephone'] = r['gameTelephone']
            dictTemp['gameQQ'] = r['gameQQ']
            dictTemp['gameWx'] = r['gameWx']
            if r['gameWeibo'] is None:
                dictTemp['gameWeibo'] = ''
            else:
                dictTemp['gameWeibo'] = r['gameWeibo']
            if r['gameIconPos'] is None:
                dictTemp['gameIconPos'] = ''
            else:
                dictTemp['gameIconPos'] = r['gameIconPos']
            if r['gameIconOffsetX'] is None:
                dictTemp['gameIconOffsetX'] = ''
            else:
                dictTemp['gameIconOffsetX'] = r['gameIconOffsetX']
            if r['gameIconOffsetY'] is None:
                dictTemp['gameIconOffsetY']= ''
            else:
                dictTemp['gameIconOffsetY'] = r['gameIconOffsetY']
            if(r['keystoreFile'] is None):
                dictTemp['keystoreFile'] = ''
            else:
                dictTemp['keystoreFile'] = r['keystoreFile']
            if(r['keystorePwd'] is None):
                dictTemp['keystorePwd'] = ''
            else:
                dictTemp['keystorePwd'] = r['keystorePwd']
            if r['keystoreAlias'] is None:
                dictTemp['keystoreAlias'] = ''
            else:
                dictTemp['keystoreAlias'] = r['keystoreAlias']
            if r['keystoreAliasPwd'] is None:
                dictTemp['keystoreAliasPwd'] = ''
            else:
                dictTemp['keystoreAliasPwd'] = r['keystoreAliasPwd']
            dictTemp['privateKey'] = r['privateKey']
            dictTemp['order_url'] = r['order_url']
            dictTemp['isModifyAppName'] = r['isModifyAppName']
            dictTemp['isModifyiOSName'] = r['isModifyiOSName']
            self.__gameLs.append(dictTemp)

        c.close()

    def readPackage(self, cx):
        """get the data about tpl_package from database"""
        self.__packageLs = []
        dictTemp = {}
        dictTemp['id'] ='1'
        dictTemp['idChannel'] = int(self._channel_id)
        self.__packageLs.append(dictTemp)

        if len(self.__packageLs) > 0:
            idChannel = self.__packageLs[0]['idChannel']
            self.__gamekey = self.__channelLs[idChannel]['idGame']

    def read_res_for_replace(self, cx):
        """get the data about tpl_resource_replace from database"""
        self.__resReplaceLs.clear()
        c = cx.cursor(MySQLdb.cursors.DictCursor)
        c.execute('select * from tpl_resource_replace where channel_id = ' + self._channel_id)
        self.__resReplaceLs = c.fetchall()
        c.close()

    def findGame(self, gameId):
        for item in self.__gameLs:
            if str(item['gameId']) == str(gameId):
                return item

    def getCurrentGame(self):
        return self.findGame(self.__gamekey)

    def getChannelLs(self):
        return self.__channelLs

    def getSDKLs(self):
        return self.__SDKLs

    def getPackageLs(self):
        return self.__packageLs

    def getUserSDKConfig(self):
        return self.__userSDKConfigLs

    def get_replace_res(self):
        return self.__resReplaceLs

    def get_sub_channel_config(self):
        return self.__subPackageLs

    def findChannel(self, idChannel):
        return self.__channelLs[idChannel]

    def getChannelIcon(self,idChannel):
        return self.__channelLs[idChannel]['r_channel_game_icon']

    def findCustomChannel(self, channelNum):
        return self.__channelCustomLs.get(channelNum)

    def findSDK(self, idSDK):
        """check SDK whether has OperateLs"""
        SDK = self.__SDKLs.get(idSDK)
        if SDK is None:
            return SDK
        while True:
            if SDK['operateLs'] is not None and len(SDK['operateLs']) > 0:
                break
            configPath = file_operate.get_server_dir()+'/config/sdk/' + SDK['SDKName'] + '/config.xml'
            configPath = file_operate.getFullPath(configPath)
            if not os.path.exists(configPath):
                break
            targetTree = ET.parse(configPath)
            targetRoot = targetTree.getroot()
            if targetRoot is None:
                break
            operateLsNode = targetRoot.find('operateLs')
            if operateLsNode is None:
                break
            for operateNode in operateLsNode:
                dictTemp = {}
                dictTemp['name'] = operateNode.get('name')
                if operateNode.get('step') is not None:
                    dictTemp['step'] = int(operateNode.get('step'))
                dictTemp['from'] = operateNode.get('from')
                dictTemp['to'] = operateNode.get('to')
                dictTemp['desc'] = operateNode.get('desc')
                dictTemp['idSDK'] = int(SDK.get('idSDK'))
                SDK['operateLs'].append(dictTemp)

            if SDK['pluginLs'] is not None and len(SDK['pluginLs']) > 0:
                break
            pluginLsNode = targetRoot.find('pluginLs')
            if pluginLsNode is None:
                break
            for pluginNode in pluginLsNode:
                dictTemp = {}
                dictTemp['name'] = pluginNode.get('name')
                if pluginNode.get('typePlugin') is not None:
                    dictTemp['typePlugin'] = int(pluginNode.get('typePlugin'))
                dictTemp['desc'] = pluginNode.get('desc')
                dictTemp['idSDK'] = int(SDK.get('idSDK'))
                SDK['pluginLs'].append(dictTemp)

            if not SDK['bHasChildSDK']:
                break
            if SDK['SDKLs'] is not None and len(SDK['SDKLs']) > 0:
                break
            SDKLsNode = targetRoot.find('SDKLs')
            if SDKLsNode is None:
                break
            for SDKNode in SDKLsNode:
                dictTemp = {}
                dictTemp['SDKName'] = SDKNode.get('SDKName')
                dictTemp['SDKType'] = SDKNode.get('SDKType')
                dictTemp['SDKShowName'] = SDKNode.get('SDKShowName')
                ParamLsNode = SDKNode.find('param')
                if ParamLsNode is None:
                    continue
                for param in ParamLsNode:
                    dictParam = {}
                    dictParam['name'] = param.get('name')
                    dictParam['required'] = param.get('required')
                    dictParam['desc'] = param.get('desc')
                    dictParam['showName'] = param.get('showName')
                    dictParam['bWriteIntoManifest'] = param.get('bWriteIntoManifest')
                    dictParam['bWriteIntoClient'] = param.get('bWriteIntoClient')
                    dictTemp['param'] = dictParam

                SDK['SDKLs'].append(dictTemp)

            break

        return self.__SDKLs[idSDK]

    def findUserSDKConfig(self, idUserSDK):
        return self.__userSDKConfigLs[idUserSDK]

    def findUserSDKConfigBySDK(self, idSDK, idChannel):
        for usrConfig in self.__userSDKConfigLs.values():
            if usrConfig['idSDK'] == idSDK and usrConfig['idChannel'] == idChannel:
                return usrConfig

    def findSDKVersion(self, SDKName):
        for version in self.__SDKVersionLs:
            if version['type'] == 1 and version['name'] == SDKName:
                return version

    def addLibPath(self):
        if platform.system() == 'Darwin':
            libPath = file_operate.getToolPath('')
            os.environ['PATH'] = libPath + ':' + os.environ['PATH']
            if os.path.exists('/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/'):
                libPath = ':' + '/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/'
                os.environ['PATH'] = libPath + ':' + os.environ['PATH']
        elif platform.system() == 'Windows':
            libPath = file_operate.getToolPath('')
            libPath = libPath.encode('gbk')
            os.environ['PATH'] = libPath + ';' + os.environ['PATH']
            jrePath = file_operate.getToolPath('jre/bin')
            jrePath = jrePath.encode('gbk')
            os.environ['PATH'] = jrePath + ';' + os.environ['PATH']

    def getIosProjectVersion(self):
        #pbxFile = self._projFolder + '/' + self._projXcode + '/project.pbxproj'
        pbxFile = self._projFolder + self._projXcode + '/project.pbxproj'
        project = XcodeProject.Load(pbxFile)
        #project_infoplist = self._projFolder + '/' + self._projXcode + '/../' + project.get_infoplistfile()
        project_infoplist = self._projFolder + self._projXcode + '/../' + project.get_infoplistfile()
        if not os.path.exists(project_infoplist):
            return '1.0'
        try:
            plist = readPlist(project_infoplist)
            versionNumber = ''
            for key in plist:
                if key == 'CFBundleShortVersionString':
                    versionNumber = plist['CFBundleShortVersionString']
                elif key == 'CFBundleVersion':
                    if versionNumber == '':
                        versionNumber = plist['CFBundleVersion']

            if versionNumber != '':
                return versionNumber
        except (InvalidPlistException, NotBinaryPlistException) as e:
            return '1.0'

        return '1.0'

    def setCocosPlayMode(self, isCocosPlay):
        """set apk is cocosplay"""
        self.__isCocosPlayMode = isCocosPlay

    def isCocosPlayMode(self):
        return self.__isCocosPlayMode

#+++ okay decompyling rsdk1.4/Script/config.pyc 
# decompiled 1 files: 1 okay, 0 failed, 0 verify failed
# 2015.01.17 10:32:29 CST
