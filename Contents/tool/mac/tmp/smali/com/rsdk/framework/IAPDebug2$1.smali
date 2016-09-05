.class Lcom/rsdk/framework/IAPDebug2$1;
.super Ljava/lang/Object;
.source "IAPDebug2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/IAPDebug2;->payForProduct(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/IAPDebug2;

.field private final synthetic val$curCPInfo:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/IAPDebug2;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/IAPDebug2$1;->this$0:Lcom/rsdk/framework/IAPDebug2;

    iput-object p2, p0, Lcom/rsdk/framework/IAPDebug2$1;->val$curCPInfo:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rsdk/framework/IAPDebug2$1;)Lcom/rsdk/framework/IAPDebug2;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug2$1;->this$0:Lcom/rsdk/framework/IAPDebug2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug2$1;->this$0:Lcom/rsdk/framework/IAPDebug2;

    const/4 v1, 0x1

    const-string v2, "init fail"

    invoke-virtual {v0, v1, v2}, Lcom/rsdk/framework/IAPDebug2;->payResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/IAPDebug2$1;->this$0:Lcom/rsdk/framework/IAPDebug2;

    # getter for: Lcom/rsdk/framework/IAPDebug2;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/rsdk/framework/IAPDebug2;->access$0(Lcom/rsdk/framework/IAPDebug2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->networkReachable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug2$1;->this$0:Lcom/rsdk/framework/IAPDebug2;

    const/4 v1, 0x3

    const-string v2, "Network not available!"

    invoke-virtual {v0, v1, v2}, Lcom/rsdk/framework/IAPDebug2;->payResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->isLogined()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug2$1;->this$0:Lcom/rsdk/framework/IAPDebug2;

    iget-object v1, p0, Lcom/rsdk/framework/IAPDebug2$1;->val$curCPInfo:Ljava/util/Hashtable;

    # invokes: Lcom/rsdk/framework/IAPDebug2;->getPayOrderId(Ljava/util/Hashtable;)V
    invoke-static {v0, v1}, Lcom/rsdk/framework/IAPDebug2;->access$1(Lcom/rsdk/framework/IAPDebug2;Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    new-instance v1, Lcom/rsdk/framework/IAPDebug2$1$1;

    iget-object v2, p0, Lcom/rsdk/framework/IAPDebug2$1;->val$curCPInfo:Ljava/util/Hashtable;

    invoke-direct {v1, p0, v2}, Lcom/rsdk/framework/IAPDebug2$1$1;-><init>(Lcom/rsdk/framework/IAPDebug2$1;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->userLogin(Lcom/rsdk/framework/ILoginCallback;)V

    goto :goto_0
.end method
