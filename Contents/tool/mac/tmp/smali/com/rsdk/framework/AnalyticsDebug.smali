.class public Lcom/rsdk/framework/AnalyticsDebug;
.super Ljava/lang/Object;
.source "AnalyticsDebug.java"

# interfaces
.implements Lcom/rsdk/framework/InterfaceAnalytics;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnalyticsDebug"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rsdk/framework/AnalyticsDebug;->mContext:Landroid/content/Context;

    const-string v0, "AnalyticsDebug() invked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rsdk/framework/AnalyticsDebug;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected LogD(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    :try_start_0
    const-string v1, "AnalyticsDebug"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogD error"

    invoke-virtual {p0, v1, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Exception;

    if-nez p2, :cond_0

    const-string v0, "AnalyticsDebug"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "AnalyticsDebug"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public failLevel(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failLevel("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public failTask(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failTask("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public finishLevel(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finishLevel("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public finishTask(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finishTask("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
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

    const-string v0, "2.0.3"

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.3"

    return-object v0
.end method

.method public isFunctionSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;

    const-class v2, Lcom/rsdk/framework/AnalyticsDebug;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v0, "logError(String errorId, String message) invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logEvent(String "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "logEvent() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "eventId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "events = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public logTimedEventBegin(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "logTimedEventBegin(String eventId) invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public logTimedEventEnd(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "logTimedEventEnd(String eventId) invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onChargeFail(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChargeFail("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onChargeOnlySuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChargeOnlySuccess  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onChargeRequest(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChargeRequest  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onChargeSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChargeSuccess("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onPurchase(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPurchase("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onReward(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReward("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onUse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUse("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public setAccount(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAccount  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public setCaptureUncaughtException(Z)V
    .locals 1
    .param p1    # Z

    const-string v0, "setCaptureUncaughtException invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setSessionContinueMillis(I)V
    .locals 1
    .param p1    # I

    const-string v0, "setSessionContinueMillis invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public startLevel(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startLevel("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public startSession()V
    .locals 1

    const-string v0, "startSession invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public startTask(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startTask("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public stopSession()V
    .locals 1

    const-string v0, "stopSession invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/AnalyticsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method
