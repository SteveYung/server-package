.class public Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "RCocos2dxActivity.java"


# instance fields
.field public handler:Landroid/os/Handler;

.field private isEffect:Z

.field public rActivityDelegate:Lcom/raysns/gameapi/util/RActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->isEffect:Z

    return-void
.end method

.method static synthetic access$0(Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->isEffect:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->rActivityDelegate:Lcom/raysns/gameapi/util/RActivityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->rActivityDelegate:Lcom/raysns/gameapi/util/RActivityDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/raysns/gameapi/util/RActivityDelegate;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/raysns/gameapi/GameAPI;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "destroy base start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->onGameDestroy()V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "destroy base start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x579

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/raysns/gameapi/GameAPI;->apiCall(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xe

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/raysns/gameapi/GameAPI;->apiCall(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMarketForBind(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public onMarketForCreateRole(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public onMarketForLaunch(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public onMarketForLogin(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public onMarketForPayment(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public onMarketForPaymentSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public onMarketForRegist(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public onMarketSDKInit(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public onMarketSetAccount(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/raysns/gameapi/GameAPI;->onGameNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->onGamePause()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestart()V

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->onGameRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->onGameResume()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-boolean v1, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->isEffect:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->isEffect:Z

    new-instance v1, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity$1;

    invoke-direct {v1, p0}, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity$1;-><init>(Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->rActivityDelegate:Lcom/raysns/gameapi/util/RActivityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->rActivityDelegate:Lcom/raysns/gameapi/util/RActivityDelegate;

    invoke-interface {v0, p1}, Lcom/raysns/gameapi/util/RActivityDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    invoke-static {p1}, Lcom/raysns/gameapi/GameAPI;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSizeChanged_R()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSizeChanged_R()V

    const/16 v0, 0x270c

    invoke-static {v0, v1, v1}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->onGameStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->onGameStop()V

    return-void
.end method
