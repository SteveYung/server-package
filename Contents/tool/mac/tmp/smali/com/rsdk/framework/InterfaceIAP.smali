.class public interface abstract Lcom/rsdk/framework/InterfaceIAP;
.super Ljava/lang/Object;
.source "InterfaceIAP.java"


# static fields
.field public static final PluginType:I = 0x3


# virtual methods
.method public abstract getOrderId()Ljava/lang/String;
.end method

.method public abstract getPluginId()Ljava/lang/String;
.end method

.method public abstract getPluginVersion()Ljava/lang/String;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract payForProduct(Ljava/util/Hashtable;)V
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

.method public abstract setDebugMode(Z)V
.end method
