.class public final Lcom/rsdk/framework/java/RSDK;
.super Ljava/lang/Object;
.source "RSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RSDK"

.field private static _activity:Landroid/app/Activity;

.field private static _instance:Lcom/rsdk/framework/java/RSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rsdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeGetChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/rsdk/framework/java/RSDK;
    .locals 1

    sget-object v0, Lcom/rsdk/framework/java/RSDK;->_instance:Lcom/rsdk/framework/java/RSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rsdk/framework/java/RSDK;

    invoke-direct {v0}, Lcom/rsdk/framework/java/RSDK;-><init>()V

    sput-object v0, Lcom/rsdk/framework/java/RSDK;->_instance:Lcom/rsdk/framework/java/RSDK;

    :cond_0
    sget-object v0, Lcom/rsdk/framework/java/RSDK;->_instance:Lcom/rsdk/framework/java/RSDK;

    return-object v0
.end method

.method public static getSubAppId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/rsdk/framework/Wrapper;->getChannelParm_r_sub_app_id(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode()Ljava/lang/String;
    .locals 5

    :try_start_0
    sget-object v2, Lcom/rsdk/framework/java/RSDK;->_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/rsdk/framework/java/RSDK;->_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v2, "RSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "versioncode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v2, "RSDK"

    const-string v3, "NameNotFoundException versioncode 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1"

    goto :goto_0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 5

    :try_start_0
    sget-object v2, Lcom/rsdk/framework/java/RSDK;->_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/rsdk/framework/java/RSDK;->_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v2, "RSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "versionname:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v2, "RSDK"

    const-string v3, "NameNotFoundException versionname 1.0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1.0"

    goto :goto_0
.end method

.method private static native nativeGetChannelId()Ljava/lang/String;
.end method

.method private static native nativeGetCustomParam()Ljava/lang/String;
.end method

.method private static native nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeIsAdsPluginExist()Z
.end method

.method private static native nativeIsAnalyticsPluginExist()Z
.end method

.method private static native nativeIsAnaylticsEnabled()Z
.end method

.method private static native nativeIsIAPPluginExist()Z
.end method

.method private static native nativeIsPushPluginExist()Z
.end method

.method private static native nativeIsSharePluginExist()Z
.end method

.method private static native nativeIsSocialPluginExist()Z
.end method

.method private static native nativeIsUserPluginExist()Z
.end method

.method private static native nativeLoadPlugins()V
.end method

.method private static native nativeSetIsAnaylticsEnabled(Z)V
.end method

.method private static native nativeUnLoadPlugins()V
.end method


# virtual methods
.method public getCustomParam()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeGetCustomParam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initPluginSystem(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    const-string v0, "RSDK"

    const-string v1, "java:initPluginSystem start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/rsdk/framework/java/RSDK;->_activity:Landroid/app/Activity;

    const-string v0, "RSDK"

    const-string v1, "java:initPluginSystem:PluginWrapper.init(activity)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/rsdk/framework/PluginWrapper;->init(Landroid/app/Activity;)V

    const-string v0, "RSDK"

    const-string v1, "java:nativeInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3, p4, p5}, Lcom/rsdk/framework/java/RSDK;->nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RSDK"

    const-string v1, "java:nativeLoadPlugins"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeLoadPlugins()V

    const-string v0, "RSDK"

    const-string v1, "java:initPluginSystem end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isAdsPluginExist()Z
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeIsAdsPluginExist()Z

    move-result v0

    return v0
.end method

.method public isAnalyticsPluginExist()Z
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeIsAnalyticsPluginExist()Z

    move-result v0

    return v0
.end method

.method public isAnaylticsEnabled()Z
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeIsAnaylticsEnabled()Z

    move-result v0

    return v0
.end method

.method public isIAPPluginExist()Z
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeIsIAPPluginExist()Z

    move-result v0

    return v0
.end method

.method public isPushPluginExist()Z
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeIsPushPluginExist()Z

    move-result v0

    return v0
.end method

.method public isSharePluginExist()Z
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeIsSharePluginExist()Z

    move-result v0

    return v0
.end method

.method public isSocialPluginExist()Z
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeIsSocialPluginExist()Z

    move-result v0

    return v0
.end method

.method public isUserPluginExist()Z
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeIsUserPluginExist()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    invoke-static {}, Lcom/rsdk/framework/java/RSDK;->nativeUnLoadPlugins()V

    return-void
.end method

.method public setIsAnaylticsEnabled(Z)V
    .locals 0
    .param p1    # Z

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDK;->nativeSetIsAnaylticsEnabled(Z)V

    return-void
.end method
