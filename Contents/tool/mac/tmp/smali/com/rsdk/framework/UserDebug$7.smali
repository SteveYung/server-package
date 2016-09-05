.class Lcom/rsdk/framework/UserDebug$7;
.super Ljava/lang/Object;
.source "UserDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserDebug;->accountSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/UserDebug;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/UserDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug$7;->this$0:Lcom/rsdk/framework/UserDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rsdk/framework/UserDebug$7;)Lcom/rsdk/framework/UserDebug;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug$7;->this$0:Lcom/rsdk/framework/UserDebug;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    new-instance v1, Lcom/rsdk/framework/UserDebug$7$1;

    invoke-direct {v1, p0}, Lcom/rsdk/framework/UserDebug$7$1;-><init>(Lcom/rsdk/framework/UserDebug$7;)V

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->userLogin(Lcom/rsdk/framework/ILoginCallback;)V

    return-void
.end method
