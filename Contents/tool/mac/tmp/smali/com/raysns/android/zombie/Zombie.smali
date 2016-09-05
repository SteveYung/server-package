.class public Lcom/raysns/android/zombie/Zombie;
.super Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;
.source "Zombie.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cocos2dlua"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/raysns/androidrsdk/AndroidRSDKService;

    invoke-direct {v0}, Lcom/raysns/androidrsdk/AndroidRSDKService;-><init>()V

    new-instance v1, Lcom/raysns/android/zombie/Zombie$1;

    invoke-direct {v1, p0}, Lcom/raysns/android/zombie/Zombie$1;-><init>(Lcom/raysns/android/zombie/Zombie;)V

    invoke-static {p0, v0, v1}, Lcom/raysns/gameapi/GameAPI;->setup(Landroid/app/Activity;Lcom/raysns/gameapi/PlatformService;Lcom/raysns/gameapi/util/ActionListener;)V

    invoke-static {p1, p0}, Lcom/raysns/gameapi/GameAPI;->initCustomFunctions(Landroid/os/Bundle;Landroid/app/Activity;)V

    return-void
.end method
