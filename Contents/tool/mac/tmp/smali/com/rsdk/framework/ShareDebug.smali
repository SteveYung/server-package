.class public Lcom/rsdk/framework/ShareDebug;
.super Ljava/lang/Object;
.source "ShareDebug.java"

# interfaces
.implements Lcom/rsdk/framework/InterfaceShare;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "ShareDebug"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rsdk/framework/ShareDebug;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/rsdk/framework/ShareDebug;->mContext:Landroid/content/Context;

    return-void
.end method

.method private networkReachable()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/rsdk/framework/ShareDebug;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetWork reachable : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/rsdk/framework/ShareDebug;->LogD(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Fail to check network status"

    invoke-virtual {p0, v3, v0}, Lcom/rsdk/framework/ShareDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected LogD(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    :try_start_0
    const-string v1, "ShareDebug"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogD error"

    invoke-virtual {p0, v1, v0}, Lcom/rsdk/framework/ShareDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Exception;

    if-nez p2, :cond_0

    const-string v0, "ShareDebug"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "ShareDebug"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getPluginId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public share(Ljava/util/Hashtable;)V
    .locals 2
    .param p1    # Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "share invoked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/ShareDebug;->LogD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/rsdk/framework/ShareDebug;->networkReachable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Network error!"

    invoke-virtual {p0, v0, v1}, Lcom/rsdk/framework/ShareDebug;->shareResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/rsdk/framework/ShareDebug$1;

    invoke-direct {v0, p0, p1}, Lcom/rsdk/framework/ShareDebug$1;-><init>(Lcom/rsdk/framework/ShareDebug;Ljava/util/Hashtable;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public shareResult(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/rsdk/framework/ShareWrapper;->onShareResult(Lcom/rsdk/framework/InterfaceShare;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shareResult result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/ShareDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method
