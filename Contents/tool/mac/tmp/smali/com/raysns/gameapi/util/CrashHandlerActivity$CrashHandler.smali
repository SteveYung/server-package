.class Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandlerActivity.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raysns/gameapi/util/CrashHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashHandler"
.end annotation


# instance fields
.field private defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/raysns/gameapi/util/CrashHandlerActivity;


# direct methods
.method private constructor <init>(Lcom/raysns/gameapi/util/CrashHandlerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;->this$0:Lcom/raysns/gameapi/util/CrashHandlerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/raysns/gameapi/util/CrashHandlerActivity;Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;-><init>(Lcom/raysns/gameapi/util/CrashHandlerActivity;)V

    return-void
.end method

.method private handleException(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/Throwable;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Thread;
    .param p2    # Ljava/lang/Throwable;

    invoke-direct {p0, p2}, Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;->handleException(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raysns/gameapi/util/CrashHandlerActivity$CrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
