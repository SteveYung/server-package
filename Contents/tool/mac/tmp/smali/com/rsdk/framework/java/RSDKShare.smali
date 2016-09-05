.class public Lcom/rsdk/framework/java/RSDKShare;
.super Ljava/lang/Object;
.source "RSDKShare.java"


# static fields
.field private static _instance:Lcom/rsdk/framework/java/RSDKShare;

.field private static _listener:Lcom/rsdk/framework/java/RSDKListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/rsdk/framework/java/RSDKShare;->_listener:Lcom/rsdk/framework/java/RSDKListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/rsdk/framework/java/RSDKShare;
    .locals 1

    sget-object v0, Lcom/rsdk/framework/java/RSDKShare;->_instance:Lcom/rsdk/framework/java/RSDKShare;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rsdk/framework/java/RSDKShare;

    invoke-direct {v0}, Lcom/rsdk/framework/java/RSDKShare;-><init>()V

    sput-object v0, Lcom/rsdk/framework/java/RSDKShare;->_instance:Lcom/rsdk/framework/java/RSDKShare;

    :cond_0
    sget-object v0, Lcom/rsdk/framework/java/RSDKShare;->_instance:Lcom/rsdk/framework/java/RSDKShare;

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

.method private static native nativeSetDebugMode(Z)V
.end method

.method private static native nativeSetListener()V
.end method

.method private static native nativeShare(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static onCallBack(ILjava/lang/String;)V
    .locals 1
    .param p0    # I
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/rsdk/framework/java/RSDKShare;->_listener:Lcom/rsdk/framework/java/RSDKListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rsdk/framework/java/RSDKShare;->_listener:Lcom/rsdk/framework/java/RSDKListener;

    invoke-interface {v0, p0, p1}, Lcom/rsdk/framework/java/RSDKListener;->onCallBack(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public callBoolFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallBoolFunction(Ljava/lang/String;Ljava/lang/String;)Z

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

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallBoolFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Z

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

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallFloatFunction(Ljava/lang/String;Ljava/lang/String;)F

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

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallFloatFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)F

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

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallFunction(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V

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

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallIntFunction(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallIntFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)I

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

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallStringFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {p1, p2, v1}, Lcom/rsdk/framework/java/RSDKShare;->nativeCallStringFunctionWithParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

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

    invoke-static {}, Lcom/rsdk/framework/java/RSDKShare;->nativeGetPluginId()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPluginName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKShare;->nativeGetPluginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKShare;->nativeGetPluginVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKShare;->nativeGetSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1    # Z

    invoke-static {p1}, Lcom/rsdk/framework/java/RSDKShare;->nativeSetDebugMode(Z)V

    return-void
.end method

.method public setListener(Lcom/rsdk/framework/java/RSDKListener;)V
    .locals 0
    .param p1    # Lcom/rsdk/framework/java/RSDKListener;

    sput-object p1, Lcom/rsdk/framework/java/RSDKShare;->_listener:Lcom/rsdk/framework/java/RSDKListener;

    invoke-static {}, Lcom/rsdk/framework/java/RSDKShare;->nativeSetListener()V

    return-void
.end method

.method public share(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/rsdk/framework/java/RSDKShare;->nativeShare(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
