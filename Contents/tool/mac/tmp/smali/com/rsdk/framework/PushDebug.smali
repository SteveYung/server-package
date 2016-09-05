.class public Lcom/rsdk/framework/PushDebug;
.super Ljava/lang/Object;
.source "PushDebug.java"

# interfaces
.implements Lcom/rsdk/framework/InterfacePush;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "PushDebug"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rsdk/framework/PushDebug;->mContext:Landroid/content/Context;

    const-string v0, "PushDebug() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rsdk/framework/PushDebug;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected LogD(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    :try_start_0
    const-string v1, "PushDebug"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogD error"

    invoke-virtual {p0, v1, v0}, Lcom/rsdk/framework/PushDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Exception;

    if-nez p2, :cond_0

    const-string v0, "PushDebug"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "PushDebug"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public closePush()V
    .locals 1

    const-string v0, "closePush() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public delAlias(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "delAlias(String alias) invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public delTags(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "push delTags invoked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "del tags success"

    invoke-static {p0, v0, v1}, Lcom/rsdk/framework/PushWrapper;->onActionResult(Lcom/rsdk/framework/InterfacePush;ILjava/lang/String;)V

    return-void
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    const-string v0, "getPluginId() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getPluginId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.3"

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.3"

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "setAlias(String alias) invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setTags(List<String> tags) invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public startPush()V
    .locals 1

    const-string v0, "startPush() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/PushDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method
