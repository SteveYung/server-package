.class public interface abstract Lcom/rsdk/framework/InterfaceShare;
.super Ljava/lang/Object;
.source "InterfaceShare.java"


# static fields
.field public static final PluginType:I = 0x4


# virtual methods
.method public abstract getPluginId()Ljava/lang/String;
.end method

.method public abstract getPluginVersion()Ljava/lang/String;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract setDebugMode(Z)V
.end method

.method public abstract share(Ljava/util/Hashtable;)V
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
.end method
