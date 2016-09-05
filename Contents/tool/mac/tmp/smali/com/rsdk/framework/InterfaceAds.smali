.class public interface abstract Lcom/rsdk/framework/InterfaceAds;
.super Ljava/lang/Object;
.source "InterfaceAds.java"


# static fields
.field public static final PluginType:I = 0x1


# virtual methods
.method public abstract getPluginVersion()Ljava/lang/String;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract hideAds(Lorg/json/JSONObject;)V
.end method

.method public abstract isAdTypeSupported(I)Z
.end method

.method public abstract preloadAds(Lorg/json/JSONObject;)V
.end method

.method public abstract queryPoints()F
.end method

.method public abstract setDebugMode(Z)V
.end method

.method public abstract showAds(Lorg/json/JSONObject;)V
.end method

.method public abstract spendPoints(I)V
.end method
