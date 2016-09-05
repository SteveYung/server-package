.class public Lcom/rsdk/framework/java/RSDKAnalytics;
.super Ljava/lang/Object;
.source "RSDKAnalytics.java"


# static fields
.field private static instance:Lcom/rsdk/framework/java/RSDKAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/rsdk/framework/java/RSDKAnalytics;
    .locals 1

    sget-object v0, Lcom/rsdk/framework/java/RSDKAnalytics;->instance:Lcom/rsdk/framework/java/RSDKAnalytics;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rsdk/framework/java/RSDKAnalytics;

    invoke-direct {v0}, Lcom/rsdk/framework/java/RSDKAnalytics;-><init>()V

    sput-object v0, Lcom/rsdk/framework/java/RSDKAnalytics;->instance:Lcom/rsdk/framework/java/RSDKAnalytics;

    :cond_0
    sget-object v0, Lcom/rsdk/framework/java/RSDKAnalytics;->instance:Lcom/rsdk/framework/java/RSDKAnalytics;

    return-object v0
.end method

.method private static native nativeCallBoolFunction(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/rsdk/framework/java/RSDKParam;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native nativeCallFloatFunction(Ljava/lang/String;Ljava/lang/String;)F
.end method

.method private static native nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/rsdk/framework/java/RSDKParam;",
            ">;)F"
        }
    .end annotation
.end method

.method private static native nativeCallFunction(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeCallFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/rsdk/framework/java/RSDKParam;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeCallIntFunction(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/rsdk/framework/java/RSDKParam;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native nativeCallStringFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/rsdk/framework/java/RSDKParam;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private static native nativeGetPluginId()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetPluginName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetPluginVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetSDKVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeIsFunctionSupported(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeLogEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeLogEventMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeLogTimedEventBegin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeLogTimedEventEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetCaptureUncaughtException(Ljava/lang/String;Z)V
.end method

.method private static native nativeSetDebugMode(Z)V
.end method

.method private static native nativeSetSessionContinueMillis(Ljava/lang/String;J)V
.end method

.method private static native nativeStartSession(Ljava/lang/String;)V
.end method

.method private static native nativeStopSession(Ljava/lang/String;)V
.end method


# virtual methods
.method public callBoolFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallBoolFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs callBoolFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/rsdk/framework/java/RSDKParam;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # [Lcom/rsdk/framework/java/RSDKParam;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Z

    move-result v2

    return v2

    :cond_0
    aget-object v0, p3, v2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFloatFunction(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallFloatFunction(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public varargs callFloatFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/rsdk/framework/java/RSDKParam;)F
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # [Lcom/rsdk/framework/java/RSDKParam;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)F

    move-result v2

    return v2

    :cond_0
    aget-object v0, p3, v2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callFunction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallFunction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs callFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/rsdk/framework/java/RSDKParam;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # [Lcom/rsdk/framework/java/RSDKParam;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

    return-void

    :cond_0
    aget-object v0, p3, v2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callIntFunction(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallIntFunction(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs callIntFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/rsdk/framework/java/RSDKParam;)I
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # [Lcom/rsdk/framework/java/RSDKParam;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)I

    move-result v2

    return v2

    :cond_0
    aget-object v0, p3, v2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public callStringFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallStringFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs callStringFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/rsdk/framework/java/RSDKParam;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # [Lcom/rsdk/framework/java/RSDKParam;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    aget-object v0, p3, v2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPluginId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeGetPluginId()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPluginName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeGetPluginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeGetPluginVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeGetSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFunctionSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeIsFunctionSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeLogEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeLogEventMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public logTimedEventBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeLogTimedEventBegin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logTimedEventEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeLogTimedEventEnd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCaptureUncaughtException(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeSetCaptureUncaughtException(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1    # Z

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeSetDebugMode(Z)V

    return-void
.end method

.method public setSessionContinueMillis(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # J

    invoke-static {p1, p2, p3}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeSetSessionContinueMillis(Ljava/lang/String;J)V

    return-void
.end method

.method public startSession(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeStartSession(Ljava/lang/String;)V

    return-void
.end method

.method public stopSession(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKAnalytics;->nativeStopSession(Ljava/lang/String;)V

    return-void
.end method
