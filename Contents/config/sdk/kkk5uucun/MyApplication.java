package com.rsdk.sample;

import android.app.Application;
import android.content.Context;
import cn.kkk.commonsdk.CommonSdkManger;

public class MyApplication extends Application{

	@Override
	protected void attachBaseContext(Context base) {
		CommonSdkManger.getInstance().initPluginInAppcation(base);
		super.attachBaseContext(base);
	}
	
	@Override
	public void onCreate() {
		// TODO Auto-generated method stub
		CommonSdkManger.getInstance().initGamesApi(this);
		super.onCreate();
	}
}
