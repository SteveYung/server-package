.class public Lcom/rsdk/framework/AdsDebug;
.super Ljava/lang/Object;
.source "AdsDebug.java"

# interfaces
.implements Lcom/rsdk/framework/InterfaceAds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rsdk/framework/AdsDebug$hideAds_3;,
        Lcom/rsdk/framework/AdsDebug$showAds_2;
    }
.end annotation


# static fields
.field protected static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field private static mAdapter:Lcom/rsdk/framework/AdsDebug;

.field private static mContext:Landroid/content/Context;

.field private static popupWindow:Landroid/widget/PopupWindow;


# instance fields
.field private imageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/rsdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    const-string v0, "AdsDebug"

    sput-object v0, Lcom/rsdk/framework/AdsDebug;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/rsdk/framework/AdsDebug;->mAdapter:Lcom/rsdk/framework/AdsDebug;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rsdk/framework/AdsDebug;->isDebug:Z

    sput-object v1, Lcom/rsdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rsdk/framework/AdsDebug;->imageView:Landroid/widget/ImageView;

    sput-object p1, Lcom/rsdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/rsdk/framework/AdsDebug;->mAdapter:Lcom/rsdk/framework/AdsDebug;

    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-boolean v0, Lcom/rsdk/framework/AdsDebug;->isDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rsdk/framework/AdsDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/Exception;

    sget-object v0, Lcom/rsdk/framework/AdsDebug;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$0()Landroid/widget/PopupWindow;
    .locals 1

    sget-object v0, Lcom/rsdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1(Landroid/widget/PopupWindow;)V
    .locals 0

    sput-object p0, Lcom/rsdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/rsdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/rsdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/rsdk/framework/AdsDebug;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/rsdk/framework/AdsDebug$1;

    invoke-direct {v0}, Lcom/rsdk/framework/AdsDebug$1;-><init>()V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
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

.method public hideAds(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideAds "

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

    invoke-static {v0}, Lcom/rsdk/framework/AdsDebug;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/rsdk/framework/AdsDebug$hideAds_3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rsdk/framework/AdsDebug$hideAds_3;-><init>(Lcom/rsdk/framework/AdsDebug;Lcom/rsdk/framework/AdsDebug$hideAds_3;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAdTypeSupported(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    return v0
.end method

.method public preloadAds(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, "debug not support preloadAds"

    invoke-static {v0}, Lcom/rsdk/framework/AdsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public queryPoints()F
    .locals 1

    const-string v0, "debug not support query points"

    invoke-static {v0}, Lcom/rsdk/framework/AdsDebug;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1    # Z

    sput-boolean p1, Lcom/rsdk/framework/AdsDebug;->isDebug:Z

    return-void
.end method

.method public showAds(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showAds "

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

    invoke-static {v0}, Lcom/rsdk/framework/AdsDebug;->LogD(Ljava/lang/String;)V

    new-instance v0, Lcom/rsdk/framework/AdsDebug$showAds_2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rsdk/framework/AdsDebug$showAds_2;-><init>(Lcom/rsdk/framework/AdsDebug;Lcom/rsdk/framework/AdsDebug$showAds_2;)V

    invoke-static {v0}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public spendPoints(I)V
    .locals 1
    .param p1    # I

    const-string v0, "debug not support spend points"

    invoke-static {v0}, Lcom/rsdk/framework/AdsDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method
