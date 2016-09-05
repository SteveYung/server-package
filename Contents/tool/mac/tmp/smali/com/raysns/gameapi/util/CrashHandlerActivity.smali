.class public Lcom/raysns/gameapi/util/CrashHandlerActivity;
.super Landroid/app/Application;
.source "CrashHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    new-instance v0, Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;-><init>(Lcom/raysns/gameapi/util/CrashHandlerActivity;Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;)V

    invoke-virtual {v0}, Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;->init()V

    return-void
.end method
