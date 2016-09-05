.class public Lcom/rsdk/framework/UserDebug2;
.super Ljava/lang/Object;
.source "UserDebug2.java"

# interfaces
.implements Lcom/rsdk/framework/InterfaceUser;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UserDebug2"


# instance fields
.field private mAdapter:Lcom/rsdk/framework/InterfaceUser;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/rsdk/framework/UserDebug2;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/rsdk/framework/UserDebug2;->mAdapter:Lcom/rsdk/framework/InterfaceUser;

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug2;->mContext:Landroid/content/Context;

    iput-object p0, p0, Lcom/rsdk/framework/UserDebug2;->mAdapter:Lcom/rsdk/framework/InterfaceUser;

    invoke-static {}, Lcom/rsdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rsdk/framework/UserDebug2;->configDeveloperInfo(Ljava/util/Hashtable;)V

    return-void
.end method

.method static synthetic access$0(Lcom/rsdk/framework/UserDebug2;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rsdk/framework/UserDebug2;)Lcom/rsdk/framework/InterfaceUser;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug2;->mAdapter:Lcom/rsdk/framework/InterfaceUser;

    return-object v0
.end method

.method private configDeveloperInfo(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configDeveloperInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")invoked!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    move-object v0, p1

    new-instance v1, Lcom/rsdk/framework/UserDebug2$2;

    invoke-direct {v1, p0, v0}, Lcom/rsdk/framework/UserDebug2$2;-><init>(Lcom/rsdk/framework/UserDebug2;Ljava/util/Hashtable;)V

    invoke-static {v1}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected LogD(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    :try_start_0
    const-string v1, "UserDebug2"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogD error"

    invoke-virtual {p0, v1, v0}, Lcom/rsdk/framework/UserDebug2;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Exception;

    if-nez p2, :cond_0

    const-string v0, "UserDebug2"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "UserDebug2"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public accountSwitch()V
    .locals 1

    const-string v0, "accountSwitch() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/rsdk/framework/UserDebug2$7;

    invoke-direct {v0, p0}, Lcom/rsdk/framework/UserDebug2$7;-><init>(Lcom/rsdk/framework/UserDebug2;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public actionResult(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actionResult( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug2;->mAdapter:Lcom/rsdk/framework/InterfaceUser;

    invoke-static {v0, p1, p2}, Lcom/rsdk/framework/UserWrapper;->onActionResult(Lcom/rsdk/framework/InterfaceUser;ILjava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    const-string v0, "exit() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/rsdk/framework/UserDebug2$4;

    invoke-direct {v0, p0}, Lcom/rsdk/framework/UserDebug2$4;-><init>(Lcom/rsdk/framework/UserDebug2;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLoginUserType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    const-string v0, "getPluginId() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    const-string v0, "0001"

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getPluginVersion() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getSDKVersion() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    const-string v0, "getUserID() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserIDPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserIDWithPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideToolBar()V
    .locals 1

    const-string v0, "hideToolBar() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/rsdk/framework/UserDebug2$6;

    invoke-direct {v0, p0}, Lcom/rsdk/framework/UserDebug2$6;-><init>(Lcom/rsdk/framework/UserDebug2;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isLogined()Z
    .locals 1

    const-string v0, "isLogined() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->isLogined()Z

    move-result v0

    return v0
.end method

.method public isSupportFunction(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSupportFunction("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") invoked!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    const-class v2, Lcom/rsdk/framework/UserDebug;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public login()V
    .locals 2

    const-string v0, "login() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    new-instance v1, Lcom/rsdk/framework/UserDebug2$1;

    invoke-direct {v1, p0}, Lcom/rsdk/framework/UserDebug2$1;-><init>(Lcom/rsdk/framework/UserDebug2;)V

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->userLogin(Lcom/rsdk/framework/ILoginCallback;)V

    return-void
.end method

.method public logout()V
    .locals 1

    const-string v0, "logout() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/rsdk/framework/UserDebug2$3;

    invoke-direct {v0, p0}, Lcom/rsdk/framework/UserDebug2$3;-><init>(Lcom/rsdk/framework/UserDebug2;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDebugMode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") invoked! it is not used."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public setGameUserInfo(Lcom/rsdk/framework/GameUserInfo;)V
    .locals 0
    .param p1    # Lcom/rsdk/framework/GameUserInfo;

    return-void
.end method

.method public showToolBar(I)V
    .locals 3
    .param p1    # I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showToolBar("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    move v0, p1

    new-instance v1, Lcom/rsdk/framework/UserDebug2$5;

    invoke-direct {v1, p0}, Lcom/rsdk/framework/UserDebug2$5;-><init>(Lcom/rsdk/framework/UserDebug2;)V

    invoke-static {v1}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
