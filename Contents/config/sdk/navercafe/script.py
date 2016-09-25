#!/usr/bin/env python
# encoding: utf-8
from open_api import OpenApi
def script(SDK, decompileDir, packageName, usrSDKConfig):
    openApi = OpenApi(SDK, decompileDir, packageName, usrSDKConfig)
    openApi.custom_package_r_file("com.naver.glink.android.sdk")