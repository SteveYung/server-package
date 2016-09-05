.class public Lcom/rsdk/framework/DebugWrapper;
.super Ljava/lang/Object;
.source "DebugWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DebugWrapper"

.field private static mInstance:Lcom/rsdk/framework/DebugWrapper;


# instance fields
.field private final PLUGIN_ID:Ljava/lang/String;

.field private final PLUGIN_VERSION:Ljava/lang/String;

.field private final SDK_SERVER_NAME:Ljava/lang/String;

.field private final SDK_VERSION:Ljava/lang/String;

.field private isInited:Z

.field private isLogined:Z

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mIAPAdapter:Lcom/rsdk/framework/InterfaceIAP;

.field private mUserAdapter:Lcom/rsdk/framework/InterfaceUser;

.field private r_customData:Ljava/lang/String;

.field private r_ext1:Ljava/lang/String;

.field private r_ext2:Ljava/lang/String;

.field private r_ext3:Ljava/lang/String;

.field private r_login_time:Ljava/lang/String;

.field private r_nickname:Ljava/lang/String;

.field private r_pid:Ljava/lang/String;

.field private r_platform_sdk_data:Ljava/lang/String;

.field private r_refresh_token:Ljava/lang/String;

.field private r_sdkserver_name:Ljava/lang/String;

.field private r_sign:Ljava/lang/String;

.field private r_token:Ljava/lang/String;

.field private r_userType:Ljava/lang/String;

.field private sUid:Ljava/lang/String;

.field private userIDPrefix:Ljava/lang/String;

.field private userType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/rsdk/framework/DebugWrapper;->mInstance:Lcom/rsdk/framework/DebugWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->SDK_VERSION:Ljava/lang/String;

    const-string v0, "2.0.01.0.0"

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->PLUGIN_VERSION:Ljava/lang/String;

    const-string v0, "0000"

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->PLUGIN_ID:Ljava/lang/String;

    const-string v0, "debug"

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->SDK_SERVER_NAME:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/rsdk/framework/DebugWrapper;->mDebug:Z

    iput-object v2, p0, Lcom/rsdk/framework/DebugWrapper;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/rsdk/framework/DebugWrapper;->isLogined:Z

    iput-boolean v1, p0, Lcom/rsdk/framework/DebugWrapper;->isInited:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->sUid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->userIDPrefix:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->userType:Ljava/lang/String;

    iput-object v2, p0, Lcom/rsdk/framework/DebugWrapper;->mUserAdapter:Lcom/rsdk/framework/InterfaceUser;

    iput-object v2, p0, Lcom/rsdk/framework/DebugWrapper;->mIAPAdapter:Lcom/rsdk/framework/InterfaceIAP;

    const-string v0, "debug"

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_sdkserver_name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_refresh_token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_pid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_nickname:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_userType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_customData:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_login_time:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_sign:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_platform_sdk_data:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_ext1:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_ext2:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_ext3:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/rsdk/framework/DebugWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper;->r_pid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/rsdk/framework/DebugWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper;->r_token:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/rsdk/framework/DebugWrapper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rsdk/framework/DebugWrapper;->isLogined:Z

    return-void
.end method

.method static synthetic access$3(Lcom/rsdk/framework/DebugWrapper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_pid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rsdk/framework/DebugWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper;->sUid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/rsdk/framework/DebugWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper;->userType:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/rsdk/framework/DebugWrapper;
    .locals 1

    sget-object v0, Lcom/rsdk/framework/DebugWrapper;->mInstance:Lcom/rsdk/framework/DebugWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rsdk/framework/DebugWrapper;

    invoke-direct {v0}, Lcom/rsdk/framework/DebugWrapper;-><init>()V

    sput-object v0, Lcom/rsdk/framework/DebugWrapper;->mInstance:Lcom/rsdk/framework/DebugWrapper;

    :cond_0
    sget-object v0, Lcom/rsdk/framework/DebugWrapper;->mInstance:Lcom/rsdk/framework/DebugWrapper;

    return-object v0
.end method


# virtual methods
.method protected LogD(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    :try_start_0
    const-string v1, "DebugWrapper"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/rsdk/framework/DebugWrapper;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Exception;

    if-nez p2, :cond_0

    const-string v0, "DebugWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "DebugWrapper"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAccessToken(Lcom/rsdk/framework/ILoginCallback;)V
    .locals 14
    .param p1    # Lcom/rsdk/framework/ILoginCallback;

    const-string v0, "getAccessToken() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->r_sdkserver_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper;->r_token:Ljava/lang/String;

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper;->r_refresh_token:Ljava/lang/String;

    iget-object v3, p0, Lcom/rsdk/framework/DebugWrapper;->r_pid:Ljava/lang/String;

    iget-object v4, p0, Lcom/rsdk/framework/DebugWrapper;->r_nickname:Ljava/lang/String;

    iget-object v5, p0, Lcom/rsdk/framework/DebugWrapper;->r_userType:Ljava/lang/String;

    iget-object v6, p0, Lcom/rsdk/framework/DebugWrapper;->r_customData:Ljava/lang/String;

    iget-object v7, p0, Lcom/rsdk/framework/DebugWrapper;->r_login_time:Ljava/lang/String;

    iget-object v8, p0, Lcom/rsdk/framework/DebugWrapper;->r_sign:Ljava/lang/String;

    iget-object v9, p0, Lcom/rsdk/framework/DebugWrapper;->r_platform_sdk_data:Ljava/lang/String;

    iget-object v10, p0, Lcom/rsdk/framework/DebugWrapper;->r_ext1:Ljava/lang/String;

    iget-object v11, p0, Lcom/rsdk/framework/DebugWrapper;->r_ext2:Ljava/lang/String;

    iget-object v12, p0, Lcom/rsdk/framework/DebugWrapper;->r_ext3:Ljava/lang/String;

    invoke-static/range {v0 .. v12}, Lcom/rsdk/framework/UserWrapper;->getAccessTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAccessTokenParams:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/rsdk/framework/DebugWrapper$5;

    invoke-direct {v1, p0, p1}, Lcom/rsdk/framework/DebugWrapper$5;-><init>(Lcom/rsdk/framework/DebugWrapper;Lcom/rsdk/framework/ILoginCallback;)V

    invoke-static {v0, v13, v1}, Lcom/rsdk/framework/UserWrapper;->getAccessToken(Landroid/content/Context;Ljava/util/Hashtable;Lcom/rsdk/Util/SdkHttpListener;)V

    return-void
.end method

.method public getLoginUserType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    const-string v0, "0000"

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.01.0.0"

    return-object v0
.end method

.method public getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSDKServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "debug"

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->sUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIDPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper;->userIDPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIDWithPrefix()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rsdk/framework/DebugWrapper;->getUserIDPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rsdk/framework/DebugWrapper;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Hashtable;Ljava/lang/Object;Lcom/rsdk/framework/ILoginCallback;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p3    # Ljava/lang/Object;
    .param p4    # Lcom/rsdk/framework/ILoginCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/rsdk/framework/ILoginCallback;",
            ")Z"
        }
    .end annotation

    instance-of v0, p3, Lcom/rsdk/framework/InterfaceUser;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/rsdk/framework/InterfaceUser;

    iput-object p3, p0, Lcom/rsdk/framework/DebugWrapper;->mUserAdapter:Lcom/rsdk/framework/InterfaceUser;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/rsdk/framework/DebugWrapper;->isInited:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/rsdk/framework/DebugWrapper;->isInited:Z

    :goto_1
    return v0

    :cond_1
    instance-of v0, p3, Lcom/rsdk/framework/InterfaceIAP;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/rsdk/framework/InterfaceIAP;

    iput-object p3, p0, Lcom/rsdk/framework/DebugWrapper;->mIAPAdapter:Lcom/rsdk/framework/InterfaceIAP;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rsdk/framework/DebugWrapper;->isInited:Z

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/rsdk/framework/DebugWrapper;->setActivityCallback()V

    new-instance v0, Lcom/rsdk/framework/DebugWrapper$1;

    invoke-direct {v0, p0, p4}, Lcom/rsdk/framework/DebugWrapper$1;-><init>(Lcom/rsdk/framework/DebugWrapper;Lcom/rsdk/framework/ILoginCallback;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/rsdk/framework/DebugWrapper;->isInited:Z

    goto :goto_1
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rsdk/framework/DebugWrapper;->isInited:Z

    return v0
.end method

.method public isLogined()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rsdk/framework/DebugWrapper;->isLogined:Z

    return v0
.end method

.method public networkReachable(Landroid/content/Context;)Z
    .locals 5
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "getActiveNetworkInfo"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected setActivityCallback()V
    .locals 1

    new-instance v0, Lcom/rsdk/framework/DebugWrapper$6;

    invoke-direct {v0, p0}, Lcom/rsdk/framework/DebugWrapper$6;-><init>(Lcom/rsdk/framework/DebugWrapper;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->setActivityCallback(Lcom/rsdk/framework/IActivityCallback;)V

    return-void
.end method

.method public setUserIDPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper;->userIDPrefix:Ljava/lang/String;

    return-void
.end method

.method public showLoginDialog(Lcom/rsdk/framework/ILoginCallback;)V
    .locals 5
    .param p1    # Lcom/rsdk/framework/ILoginCallback;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "plugin_login_title"

    const-string v3, "string"

    invoke-virtual {p0, v2, v3}, Lcom/rsdk/framework/DebugWrapper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "rsdk_plugin_login"

    const-string v4, "layout"

    invoke-virtual {p0, v3, v4}, Lcom/rsdk/framework/DebugWrapper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v2, "plugin_login"

    const-string v3, "string"

    invoke-virtual {p0, v2, v3}, Lcom/rsdk/framework/DebugWrapper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/rsdk/framework/DebugWrapper$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/rsdk/framework/DebugWrapper$3;-><init>(Lcom/rsdk/framework/DebugWrapper;Landroid/view/View;Lcom/rsdk/framework/ILoginCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "plugin_cancel"

    const-string v3, "string"

    invoke-virtual {p0, v2, v3}, Lcom/rsdk/framework/DebugWrapper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/rsdk/framework/DebugWrapper$4;

    invoke-direct {v3, p0, p1}, Lcom/rsdk/framework/DebugWrapper$4;-><init>(Lcom/rsdk/framework/DebugWrapper;Lcom/rsdk/framework/ILoginCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public userLogin(Lcom/rsdk/framework/ILoginCallback;)V
    .locals 1
    .param p1    # Lcom/rsdk/framework/ILoginCallback;

    new-instance v0, Lcom/rsdk/framework/DebugWrapper$2;

    invoke-direct {v0, p0, p1}, Lcom/rsdk/framework/DebugWrapper$2;-><init>(Lcom/rsdk/framework/DebugWrapper;Lcom/rsdk/framework/ILoginCallback;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
