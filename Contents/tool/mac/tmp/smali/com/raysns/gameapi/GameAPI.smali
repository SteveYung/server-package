.class public Lcom/raysns/gameapi/GameAPI;
.super Ljava/lang/Object;
.source "GameAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raysns/gameapi/GameAPI$RRunnable;
    }
.end annotation


# static fields
.field public static BDPushKeyName:Ljava/lang/String;

.field public static BDPushPower:Ljava/lang/String;

.field public static checkIfCanClickRet:Z

.field private static config:Lorg/w3c/dom/Document;

.field private static parent:Landroid/app/Activity;

.field public static platformAPI:Lcom/raysns/gameapi/PlatformService;

.field public static tuType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/raysns/gameapi/GameAPI;->checkIfCanClickRet:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/raysns/gameapi/GameAPI;->tuType:Z

    const-string v0, "BDPush_api_key"

    sput-object v0, Lcom/raysns/gameapi/GameAPI;->BDPushKeyName:Ljava/lang/String;

    const-string v0, "BDPushPower"

    sput-object v0, Lcom/raysns/gameapi/GameAPI;->BDPushPower:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apiCall(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p0    # I
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/raysns/gameapi/GameAPI;->getObjectFromJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, ""

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    instance-of v7, p2, Lcom/raysns/gameapi/util/ActionListener;

    if-eqz v7, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/raysns/gameapi/util/ActionListener;

    :cond_0
    sparse-switch p0, :sswitch_data_0

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "error,no this action type :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x234b

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return-object v5

    :sswitch_1
    invoke-static {v1, v0}, Lcom/raysns/gameapi/GameAPI;->purchase(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_2
    invoke-static {v1}, Lcom/raysns/gameapi/GameAPI;->consumePurchase(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_3
    invoke-static {v1, v0}, Lcom/raysns/gameapi/GameAPI;->login(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_4
    invoke-static {v1, v0}, Lcom/raysns/gameapi/GameAPI;->onExit(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_5
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->onExitDown(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_6
    invoke-static {v1}, Lcom/raysns/gameapi/GameAPI;->onToolbar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_7
    invoke-static {v1, v0}, Lcom/raysns/gameapi/GameAPI;->checkPay(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_8
    invoke-static {v1}, Lcom/raysns/gameapi/GameAPI;->enterPlatform(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_9
    invoke-static {v1, v0}, Lcom/raysns/gameapi/GameAPI;->login(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_a
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->bindAccount(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_b
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v9}, Lcom/raysns/gameapi/PlatformService;->postFeed(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto :goto_0

    :sswitch_c
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1}, Lcom/raysns/gameapi/PlatformService;->getFriend(Lorg/json/JSONObject;)V

    goto :goto_0

    :sswitch_d
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1}, Lcom/raysns/gameapi/PlatformService;->getMyInfo(Lorg/json/JSONObject;)V

    goto :goto_0

    :sswitch_e
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "ACTION_TYPE_FB_INVITE_FRIEND"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v9}, Lcom/raysns/gameapi/PlatformService;->inviteFriend(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto :goto_0

    :sswitch_f
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7}, Lcom/raysns/gameapi/PlatformService;->destroy()V

    :cond_1
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->parent:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :sswitch_10
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1}, Lcom/raysns/gameapi/PlatformService;->updateUserInfo(Lorg/json/JSONObject;)V

    goto :goto_0

    :sswitch_11
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->antiAddict(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_12
    move-object v5, v4

    goto :goto_0

    :sswitch_13
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7}, Lcom/raysns/gameapi/PlatformService;->getLocaleName()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_14
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->forceUpdateApp(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_15
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->logout(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_16
    const/4 v7, 0x1

    sput-boolean v7, Lcom/raysns/gameapi/GameAPI;->checkIfCanClickRet:Z

    goto/16 :goto_0

    :sswitch_17
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getUserMobileInfo()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_18
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getTestUserMobileInfo()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_19
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->contactGM(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_1a
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->openURLWithBrowser(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_1b
    const-string v7, "key"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "valuetype"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/raysns/gameapi/GameAPI;->parent:Landroid/app/Activity;

    invoke-static {v7, v2, v6}, Lcom/raysns/gameapi/util/RayMetaUtil;->getMetaValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v5, ""

    :cond_2
    move-object v5, v3

    goto/16 :goto_0

    :sswitch_1c
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->setLanguage(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V

    goto/16 :goto_0

    :sswitch_1d
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7}, Lcom/raysns/gameapi/PlatformService;->getLanguage()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_1e
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7}, Lcom/raysns/gameapi/PlatformService;->removeWebView()V

    goto/16 :goto_0

    :sswitch_1f
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7}, Lcom/raysns/gameapi/PlatformService;->getPlatformCustomChannelId()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_20
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->openUrlInApp(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_21
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getAndroidID()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_22
    invoke-static {v1, v0}, Lcom/raysns/gameapi/GameAPI;->login(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_23
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1}, Lcom/raysns/gameapi/PlatformService;->showFloatBall(Lorg/json/JSONObject;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_24
    invoke-static {v1}, Lcom/raysns/gameapi/GameAPI;->getLoadPath(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_25
    invoke-static {v1}, Lcom/raysns/gameapi/GameAPI;->gameLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_26
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7}, Lcom/raysns/gameapi/PlatformService;->getCVersion()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_27
    invoke-static {v1}, Lcom/raysns/gameapi/GameAPI;->getRayUserLvUp(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_28
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getRayNoviceGuideStart()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_29
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getRayNoviceGuideEnd()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_2a
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->isEncryptRequest()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_2b
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1}, Lcom/raysns/gameapi/PlatformService;->showLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_2c
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1}, Lcom/raysns/gameapi/PlatformService;->quickLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_2d
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1}, Lcom/raysns/gameapi/PlatformService;->facebookLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_2e
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "apicall : ACTION_TYPE_BDPUSH_BIND"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/java/RSDKPush;->startPush()V

    goto/16 :goto_0

    :sswitch_2f
    invoke-static {}, Lcom/rsdk/framework/java/RSDKPush;->getInstance()Lcom/rsdk/framework/java/RSDKPush;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rsdk/framework/java/RSDKPush;->closePush()V

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "apicall : ACTION_TYPE_BDPUSH_UNBIND"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_30
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->quickLogin(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_31
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->bindAccount(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_32
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->showOfferWall(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_33
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->showCustomPanel(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_34
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->showLine(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_35
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->loginWithMultiChannel(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_36
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1}, Lcom/raysns/gameapi/PlatformService;->onServerLoginReturn(Lorg/json/JSONObject;)Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_37
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7}, Lcom/raysns/gameapi/PlatformService;->onSettingWindowOpen()V

    goto/16 :goto_0

    :sswitch_38
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7}, Lcom/raysns/gameapi/PlatformService;->onSettingWindowClose()V

    goto/16 :goto_0

    :sswitch_39
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_3a
    sget-object v7, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v7, v1, v0}, Lcom/raysns/gameapi/PlatformService;->getAndroidOSVersion(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_3b
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->get_rsdk_custom_parm()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_3c
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->get_rsdk_custom_parm()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_3d
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->get_rsdk_custom_parm()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_3e
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->get_rsdk_custom_parm()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_6
        0x10 -> :sswitch_7
        0x12 -> :sswitch_8
        0x14 -> :sswitch_9
        0x15 -> :sswitch_0
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x18 -> :sswitch_10
        0x19 -> :sswitch_11
        0x1a -> :sswitch_c
        0x1b -> :sswitch_15
        0x1c -> :sswitch_19
        0x1d -> :sswitch_d
        0x1e -> :sswitch_22
        0x1f -> :sswitch_35
        0x20 -> :sswitch_36
        0x579 -> :sswitch_5
        0x7d5 -> :sswitch_e
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_0
        0xbbc -> :sswitch_0
        0x2329 -> :sswitch_12
        0x232a -> :sswitch_13
        0x232e -> :sswitch_16
        0x232f -> :sswitch_17
        0x2330 -> :sswitch_18
        0x2331 -> :sswitch_1a
        0x2333 -> :sswitch_1b
        0x2334 -> :sswitch_1c
        0x2336 -> :sswitch_1d
        0x233a -> :sswitch_1e
        0x233b -> :sswitch_1f
        0x233c -> :sswitch_20
        0x233d -> :sswitch_21
        0x233e -> :sswitch_23
        0x233f -> :sswitch_24
        0x2340 -> :sswitch_25
        0x2341 -> :sswitch_26
        0x2342 -> :sswitch_27
        0x2343 -> :sswitch_0
        0x2344 -> :sswitch_28
        0x2345 -> :sswitch_29
        0x2346 -> :sswitch_2a
        0x2347 -> :sswitch_2b
        0x2348 -> :sswitch_2c
        0x2349 -> :sswitch_2d
        0x234a -> :sswitch_30
        0x234b -> :sswitch_31
        0x234c -> :sswitch_32
        0x234d -> :sswitch_33
        0x234e -> :sswitch_34
        0x2377 -> :sswitch_3a
        0x251c -> :sswitch_2e
        0x251d -> :sswitch_2f
        0x2527 -> :sswitch_37
        0x2528 -> :sswitch_38
        0x2558 -> :sswitch_39
        0x270d -> :sswitch_14
        0x270f -> :sswitch_f
        0xf6568 -> :sswitch_3b
        0xf6569 -> :sswitch_3c
        0xf656a -> :sswitch_3d
        0xf656b -> :sswitch_3e
    .end sparse-switch
.end method

.method public static apiResponse(ILjava/lang/String;)V
    .locals 2
    .param p0    # I
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/raysns/gameapi/GameAPI$RRunnable;

    invoke-direct {v0, p0, p1}, Lcom/raysns/gameapi/GameAPI$RRunnable;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native apiResponseToGame(ILjava/lang/String;)V
.end method

.method public static native apiSendRequestToGame(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native callApiWithRetToGame(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public static callApiWithRetToGame(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p0    # I
    .param p1    # Lorg/json/JSONObject;

    const-string v1, ""

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-static {p0, v1}, Lcom/raysns/gameapi/GameAPI;->callApiWithRetToGame(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static checkIfHasBDPushFunction()Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/raysns/gameapi/GameAPI;->parent:Landroid/app/Activity;

    sget-object v3, Lcom/raysns/gameapi/GameAPI;->BDPushPower:Ljava/lang/String;

    const-string v4, "string"

    invoke-static {v2, v3, v4}, Lcom/raysns/gameapi/util/RayMetaUtil;->getMetaValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "On"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkIfHasFacebookFunction()Z
    .locals 2

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "googleplay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "memoriki"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "efunandroidtw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "efunandroiddny"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidsevenga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidzhongshouyouru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidkunlun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidlongzhong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "efunandroidmemoriki"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "efunandroid360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "efunandroidnm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "efunandroidnmopera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidzhongshouyouko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android360ausgoogle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android360ausgoogle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidkunlun1mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidArab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidjapan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidfeiliutw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidfltwmycard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidom2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidkunlunz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidklfy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidtuerqi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkIfHasVKFunction()Z
    .locals 2

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidzhongshouyouru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkPay(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/json/JSONObject;
    .param p1    # Lcom/raysns/gameapi/util/ActionListener;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0, p1}, Lcom/raysns/gameapi/PlatformService;->checkPay(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static consumePurchase(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/json/JSONObject;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0}, Lcom/raysns/gameapi/PlatformService;->consumePurchase(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static enterPlatform(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/json/JSONObject;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0}, Lcom/raysns/gameapi/PlatformService;->enterPlatform(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static errorHandler(ILjava/lang/String;)V
    .locals 3
    .param p0    # I
    .param p1    # Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static formatCppData(ILjava/lang/Object;)Lorg/json/JSONObject;
    .locals 5
    .param p0    # I
    .param p1    # Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "code"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "data"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const/4 v3, 0x5

    const-string v4, "Format json data error!"

    invoke-static {v3, v4}, Lcom/raysns/gameapi/GameAPI;->errorHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static gameLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/json/JSONObject;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0}, Lcom/raysns/gameapi/PlatformService;->gameLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAnalyticsPluginIdList()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/rsdk/framework/java/RSDKAnalytics;->getInstance()Lcom/rsdk/framework/java/RSDKAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rsdk/framework/java/RSDKAnalytics;->getPluginId()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAndroidID()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v2, Lcom/raysns/gameapi/GameAPI;->parent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v0, "Not get AndroidID"

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v0, "Not get AndroidID"

    goto :goto_0
.end method

.method public static getConfigData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v2, Lcom/raysns/gameapi/GameAPI;->config:Lorg/w3c/dom/Document;

    invoke-interface {v2, p0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-gtz v2, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/raysns/gameapi/GameAPI;->parent:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getLoadPath(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0    # Lorg/json/JSONObject;

    :try_start_0
    const-string v2, "iftest"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "rayloadpath"

    invoke-static {v2}, Lcom/raysns/gameapi/GameAPI;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v2, "rayloadpathtest"

    invoke-static {v2}, Lcom/raysns/gameapi/GameAPI;->getConfigData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static getLoginPluginIdList()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/rsdk/framework/java/RSDKUser;->getInstance()Lcom/rsdk/framework/java/RSDKUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rsdk/framework/java/RSDKUser;->getPluginId()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getObjectFromJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0    # Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x5

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/raysns/gameapi/GameAPI;->errorHandler(ILjava/lang/String;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static getPaymentPluginIdList()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/rsdk/framework/java/RSDKIAP;->getInstance()Lcom/rsdk/framework/java/RSDKIAP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rsdk/framework/java/RSDKIAP;->getPluginId()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPlatformName()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->getChannelId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "999999"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "platform"

    invoke-static {v1}, Lcom/raysns/gameapi/GameAPI;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->getSubAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPlatformService()Lcom/raysns/gameapi/PlatformService;
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    return-object v0
.end method

.method private static getPlatformService(Ljava/lang/String;)Lcom/raysns/gameapi/PlatformService;
    .locals 2
    .param p0    # Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getSDKName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private static getRayNoviceGuideEnd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0}, Lcom/raysns/gameapi/PlatformService;->getRayNoviceGuideEnd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRayNoviceGuideStart()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0}, Lcom/raysns/gameapi/PlatformService;->getRayNoviceGuideStart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRayUserLvUp(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/json/JSONObject;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0}, Lcom/raysns/gameapi/PlatformService;->getRayUserLvUp(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKName()Ljava/lang/String;
    .locals 3

    const-string v2, "sdk_name"

    invoke-static {v2}, Lcom/raysns/gameapi/GameAPI;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "platform"

    invoke-static {v2}, Lcom/raysns/gameapi/GameAPI;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method private static getTestUserMobileInfo()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v7, "\\."

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v7, v6

    if-le v7, v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "__"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "__"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :goto_1
    return-object v5

    :cond_0
    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Unknown"

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v5, "Unknown"

    goto :goto_1
.end method

.method private static getUserMobileInfo()Ljava/lang/String;
    .locals 6

    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ";!;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";!;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    const-string v4, "Unknown"

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "Unknown"

    goto :goto_0
.end method

.method public static get_rsdk_custom_parm()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->getInstance()Lcom/rsdk/framework/java/RSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/java/RSDK;->getCustomParam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initConfig()V
    .locals 8

    const/4 v7, 0x2

    sget-object v6, Lcom/raysns/gameapi/GameAPI;->parent:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "rjoyconfig.xml"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    sput-object v6, Lcom/raysns/gameapi/GameAPI;->config:Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    return-void

    :catch_0
    move-exception v2

    :try_start_2
    const-string v6, "config.xml"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v6, "config.xml not found!"

    invoke-static {v7, v6}, Lcom/raysns/gameapi/GameAPI;->errorHandler(ILjava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v6, "config.xml not found!"

    invoke-static {v7, v6}, Lcom/raysns/gameapi/GameAPI;->errorHandler(ILjava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v2

    const-string v6, "config.xml is not a correct xml!"

    invoke-static {v7, v6}, Lcom/raysns/gameapi/GameAPI;->errorHandler(ILjava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v2

    const-string v6, "config.xml error!"

    invoke-static {v7, v6}, Lcom/raysns/gameapi/GameAPI;->errorHandler(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public static initCustomFunctions(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
    .param p1    # Landroid/app/Activity;

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->checkIfHasFacebookFunction()Z

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->checkIfHasVKFunction()Z

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->checkIfHasBDPushFunction()Z

    return-void
.end method

.method private static isEncryptRequest()Ljava/lang/String;
    .locals 4

    const-string v1, "rayencrypt"

    invoke-static {v1}, Lcom/raysns/gameapi/GameAPI;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=============isEncrypt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "0"

    goto :goto_0
.end method

.method private static login(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/json/JSONObject;
    .param p1    # Lcom/raysns/gameapi/util/ActionListener;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0, p1}, Lcom/raysns/gameapi/PlatformService;->login(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # Landroid/content/Intent;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/raysns/gameapi/PlatformService;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static onExit(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 3
    .param p0    # Lorg/json/JSONObject;
    .param p1    # Lcom/raysns/gameapi/util/ActionListener;

    sget-boolean v1, Lcom/raysns/gameapi/GameAPI;->checkIfCanClickRet:Z

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/raysns/gameapi/PaymentManager;->instance()Lcom/raysns/gameapi/PaymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raysns/gameapi/PaymentManager;->onExit()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/raysns/gameapi/util/ActionListener;->callback(ILorg/json/JSONObject;)V

    :cond_1
    const-string v1, ""

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v1, p0, p1}, Lcom/raysns/gameapi/PlatformService;->onExit(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static onGameDestroy()V
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0}, Lcom/raysns/gameapi/PlatformService;->destroy()V

    return-void
.end method

.method public static onGameNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0    # Landroid/content/Intent;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0}, Lcom/raysns/gameapi/PlatformService;->onGameNewIntent(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public static onGamePause()V
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0}, Lcom/raysns/gameapi/PlatformService;->onGamePause()Ljava/lang/String;

    return-void
.end method

.method public static onGameRestart()V
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0}, Lcom/raysns/gameapi/PlatformService;->onGameRestart()Ljava/lang/String;

    return-void
.end method

.method public static onGameResume()V
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0}, Lcom/raysns/gameapi/PlatformService;->onGameResume()Ljava/lang/String;

    return-void
.end method

.method public static onGameStart()V
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0}, Lcom/raysns/gameapi/PlatformService;->onGameStart()Ljava/lang/String;

    return-void
.end method

.method public static onGameStop()V
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0}, Lcom/raysns/gameapi/PlatformService;->onGameStop()Ljava/lang/String;

    return-void
.end method

.method public static onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0}, Lcom/raysns/gameapi/PlatformService;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method private static onToolbar(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/json/JSONObject;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0}, Lcom/raysns/gameapi/PlatformService;->onOperateToolbar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onWindowFocusChanged(Z)V
    .locals 1
    .param p0    # Z

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0}, Lcom/raysns/gameapi/PlatformService;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public static outputResponse(ILjava/lang/String;)V
    .locals 1
    .param p0    # I
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/raysns/gameapi/GameAPI;->apiResponse(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/raysns/gameapi/GameAPI;->apiResponse(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static outputResponse(ILorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V
    .locals 1
    .param p0    # I
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/raysns/gameapi/util/ActionListener;->callback(ILorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/raysns/gameapi/GameAPI;->apiResponse(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/raysns/gameapi/GameAPI;->apiResponse(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static purchase(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 3
    .param p0    # Lorg/json/JSONObject;
    .param p1    # Lcom/raysns/gameapi/util/ActionListener;

    new-instance v0, Lcom/raysns/gameapi/util/StoreItem;

    invoke-direct {v0, p0}, Lcom/raysns/gameapi/util/StoreItem;-><init>(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/raysns/gameapi/PaymentManager;->instance()Lcom/raysns/gameapi/PaymentManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/raysns/gameapi/PaymentManager;->purchase(Lcom/raysns/gameapi/util/StoreItem;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static sendSynRequestToServer(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # I
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/raysns/gameapi/GameAPI;->apiSendRequestToGame(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCurrentAcitivity(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0}, Lcom/raysns/gameapi/PlatformService;->setCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static setup(Landroid/app/Activity;Lcom/raysns/gameapi/PlatformService;Lcom/raysns/gameapi/util/ActionListener;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
    .param p1    # Lcom/raysns/gameapi/PlatformService;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    sput-object p0, Lcom/raysns/gameapi/GameAPI;->parent:Landroid/app/Activity;

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->initConfig()V

    sput-object p1, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/raysns/gameapi/PaymentManager;->instance()Lcom/raysns/gameapi/PaymentManager;

    move-result-object v0

    sget-object v1, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    iput-object v1, v0, Lcom/raysns/gameapi/PaymentManager;->platform:Lcom/raysns/gameapi/PlatformService;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0, p2}, Lcom/raysns/gameapi/PlatformService;->setup(Landroid/app/Activity;Lcom/raysns/gameapi/util/ActionListener;)V

    :cond_0
    return-void
.end method

.method public static setup(Landroid/app/Activity;Lcom/raysns/gameapi/util/ActionListener;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
    .param p1    # Lcom/raysns/gameapi/util/ActionListener;

    sput-object p0, Lcom/raysns/gameapi/GameAPI;->parent:Landroid/app/Activity;

    invoke-static {}, Lcom/raysns/gameapi/GameAPI;->initConfig()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/raysns/gameapi/GameAPI;->getPlatformService(Ljava/lang/String;)Lcom/raysns/gameapi/PlatformService;

    move-result-object v0

    sput-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p0, p1}, Lcom/raysns/gameapi/PlatformService;->setup(Landroid/app/Activity;Lcom/raysns/gameapi/util/ActionListener;)V

    invoke-static {}, Lcom/raysns/gameapi/PaymentManager;->instance()Lcom/raysns/gameapi/PaymentManager;

    move-result-object v0

    sget-object v1, Lcom/raysns/gameapi/GameAPI;->platformAPI:Lcom/raysns/gameapi/PlatformService;

    iput-object v1, v0, Lcom/raysns/gameapi/PaymentManager;->platform:Lcom/raysns/gameapi/PlatformService;

    :cond_0
    return-void
.end method
