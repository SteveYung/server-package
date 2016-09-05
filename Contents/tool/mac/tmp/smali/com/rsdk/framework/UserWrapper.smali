.class public Lcom/rsdk/framework/UserWrapper;
.super Ljava/lang/Object;
.source "UserWrapper.java"


# static fields
.field public static final ACTION_RET_ACCOUNTSWITCH_FAIL:I = 0x10

.field public static final ACTION_RET_ACCOUNTSWITCH_SUCCESS:I = 0xf

.field public static final ACTION_RET_ANTIADDICTIONQUERY:I = 0xd

.field public static final ACTION_RET_EXIT_PAGE:I = 0xc

.field public static final ACTION_RET_INIT_FAIL:I = 0x1

.field public static final ACTION_RET_INIT_SUCCESS:I = 0x0

.field public static final ACTION_RET_LOGIN_CANCEL:I = 0x6

.field public static final ACTION_RET_LOGIN_FAIL:I = 0x5

.field public static final ACTION_RET_LOGIN_NO_NEED:I = 0x4

.field public static final ACTION_RET_LOGIN_SUCCESS:I = 0x2

.field public static final ACTION_RET_LOGIN_TIMEOUT:I = 0x3

.field public static final ACTION_RET_LOGOUT_FAIL:I = 0x8

.field public static final ACTION_RET_LOGOUT_SUCCESS:I = 0x7

.field public static final ACTION_RET_OPENSHOP:I = 0x11

.field public static final ACTION_RET_PAUSE_PAGE:I = 0xb

.field public static final ACTION_RET_PLATFORM_BACK:I = 0xa

.field public static final ACTION_RET_PLATFORM_ENTER:I = 0x9

.field public static final ACTION_RET_REALNAMEREGISTER:I = 0xe

.field public static final ACTION_TYPE_BIND_ACCOUNT:I = 0x16

.field public static final ACTION_TYPE_FB_GET_FRIEND:I = 0x1a

.field public static final ACTION_TYPE_FB_GET_MYINFO:I = 0x1d

.field public static final ACTION_TYPE_FB_POST_FEED:I = 0x17

.field public static final ACTION_TYPE_FB_USER_EMAIL:I = 0x1f

.field public static final ACTION_TYPE_INVITE_FRIEND:I = 0x18

.field public static final LOGIN_USER_TYPE_FACEBOOK:Ljava/lang/String; = "2"

.field public static final LOGIN_USER_TYPE_GAME_PLATFORM:Ljava/lang/String; = "4"

.field public static final LOGIN_USER_TYPE_SDK:Ljava/lang/String; = "1"

.field public static final LOGIN_USER_TYPE_SNS_PLATFORM:Ljava/lang/String; = "3"

.field public static final LOGIN_USER_TYPE_TRAIL:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rsdk/framework/UserWrapper;->nativeOnUserActionResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static formatLoginRequestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # Ljava/lang/String;
    .param p11    # Ljava/lang/String;
    .param p12    # Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/rsdk/framework/Wrapper;->getChannelParm_r_big_app_id(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/rsdk/framework/Wrapper;->getSDKParm_r_sdk_platform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/rsdk/framework/Wrapper;->getSDKParm_r_login_rsdkserver_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/rsdk/framework/UserWrapper;->getLoginServerId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "token"

    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "refresh_token"

    invoke-virtual {v3, v7, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "pid"

    invoke-virtual {v3, v7, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "nickname"

    invoke-virtual {v3, v7, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "login_time"

    invoke-virtual {v3, v7, p7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "sign"

    move-object/from16 v0, p8

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "big_app_id"

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "sdk_platform"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "rsdk_server_version"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "platform_sdk_data"

    move-object/from16 v0, p9

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "user_type"

    invoke-virtual {v3, v7, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "server_id"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "custom_data"

    invoke-virtual {v3, v7, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "ext1"

    move-object/from16 v0, p10

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "ext2"

    move-object/from16 v0, p11

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "ext3"

    move-object/from16 v0, p12

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getAccessToken(Landroid/content/Context;Ljava/util/Hashtable;Lcom/rsdk/Util/SdkHttpListener;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p2    # Lcom/rsdk/Util/SdkHttpListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rsdk/Util/SdkHttpListener;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/rsdk/Util/g;->a(Landroid/content/Context;Ljava/util/Hashtable;Lcom/rsdk/Util/SdkHttpListener;)V

    return-void
.end method

.method public static getAccessTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 11
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # Ljava/lang/String;
    .param p11    # Ljava/lang/String;
    .param p12    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/rsdk/framework/Wrapper;->getChannelParm_r_big_app_id(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/rsdk/framework/Wrapper;->getSDKParm_r_sdk_platform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Lcom/rsdk/framework/Wrapper;->getSDKParm_r_login_rsdkserver_version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/rsdk/framework/UserWrapper;->getLoginServerId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "token"

    invoke-virtual {v4, v8, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "refresh_token"

    invoke-virtual {v4, v8, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "pid"

    invoke-virtual {v4, v8, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "nickname"

    invoke-virtual {v4, v8, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "login_time"

    move-object/from16 v0, p7

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "sign"

    move-object/from16 v0, p8

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "big_app_id"

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "sdk_platform"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "rsdk_server_version"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "platform_sdk_data"

    move-object/from16 v0, p9

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "user_type"

    move-object/from16 v0, p5

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "server_id"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "custom_data"

    move-object/from16 v0, p6

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ext1"

    move-object/from16 v0, p10

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ext2"

    move-object/from16 v0, p11

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "ext3"

    move-object/from16 v0, p12

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const-string v8, "rsdk_param"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "server_url"

    invoke-static {}, Lcom/rsdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v8

    const-string v10, "oauthLoginServer"

    invoke-virtual {v8, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getLoginServerIP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/UserWrapper;->nativeGetLoginServerIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginServerId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/UserWrapper;->nativeGetLoginServerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handlerLoginDataFromServer(Ljava/lang/String;)Lcom/rsdk/framework/LoginCallbackDataInfo;
    .locals 6
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "rsdk_ret"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "rsdk_ret"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/rsdk/framework/LoginCallbackDataInfo;->formatData(Lorg/json/JSONObject;)Lcom/rsdk/framework/LoginCallbackDataInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static handlerLoginDataFromServer(Ljava/lang/String;Lcom/rsdk/framework/ILoginCallback;)Lcom/rsdk/framework/LoginCallbackDataInfo;
    .locals 9
    .param p0    # Ljava/lang/String;
    .param p1    # Lcom/rsdk/framework/ILoginCallback;

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "rsdk_ret"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "rsdk_ret"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/rsdk/framework/LoginCallbackDataInfo;->formatData(Lorg/json/JSONObject;)Lcom/rsdk/framework/LoginCallbackDataInfo;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "status fail,retData:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lcom/rsdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v5}, Lcom/rsdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeGetLoginServerIP()Ljava/lang/String;
.end method

.method private static native nativeGetLoginServerId()Ljava/lang/String;
.end method

.method private static native nativeOnUserActionResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onActionResult(Lcom/rsdk/framework/InterfaceUser;ILjava/lang/String;)V
    .locals 4
    .param p0    # Lcom/rsdk/framework/InterfaceUser;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    move v2, p1

    move-object v1, p2

    move-object v0, p0

    new-instance v3, Lcom/rsdk/framework/UserWrapper$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/rsdk/framework/UserWrapper$1;-><init>(Lcom/rsdk/framework/InterfaceUser;Ljava/lang/String;I)V

    invoke-static {v3}, Lcom/rsdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
