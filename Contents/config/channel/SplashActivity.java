package com.rsdk.framework;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public class SplashActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getResources().getIdentifier("plugin_splash", "layout", getPackageName()));
        AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
        localAlphaAnimation.setRepeatMode(2);
        localAlphaAnimation.setRepeatCount(0);
        localAlphaAnimation.setDuration(2000L);
        localAlphaAnimation.setFillAfter(true);
        ImageView localImageView = (ImageView)findViewById(getResources().getIdentifier("plugin_splash_img", "id", getPackageName()));
        if (localImageView == null)
            localImageView = (ImageView)((RelativeLayout) LayoutInflater.from(this).inflate(getResources().getIdentifier("plugin_splash_layout", "id", getPackageName()), null)).getChildAt(0);
        localImageView.setAnimation(localAlphaAnimation);
        localAlphaAnimation.setAnimationListener(new Animation.AnimationListener()
        {
            public void onAnimationEnd(Animation paramAnonymousAnimation)
            {
                SplashActivity.this.startGameActivity();
            }

            public void onAnimationRepeat(Animation paramAnonymousAnimation)
            {
            }

            public void onAnimationStart(Animation paramAnonymousAnimation)
            {
            }
        });
    }

    private void startGameActivity()
    {
        try
        {
            startActivity(new Intent(this, Class.forName("###rsdk_Start_Activity###")));
            finish();
            return;
        }
        catch (Exception localException)
        {
            localException.printStackTrace();
        }
    }
}
