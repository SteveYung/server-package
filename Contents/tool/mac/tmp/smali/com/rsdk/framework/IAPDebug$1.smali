.class Lcom/rsdk/framework/IAPDebug$1;
.super Ljava/lang/Object;
.source "IAPDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/IAPDebug;->payForProduct(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/IAPDebug;

.field private final synthetic val$curCPInfo:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/IAPDebug;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/IAPDebug$1;->this$0:Lcom/rsdk/framework/IAPDebug;

    iput-object p2, p0, Lcom/rsdk/framework/IAPDebug$1;->val$curCPInfo:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug$1;->this$0:Lcom/rsdk/framework/IAPDebug;

    const/4 v1, 0x1

    const-string v2, "init fail"

    invoke-virtual {v0, v1, v2}, Lcom/rsdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/IAPDebug$1;->this$0:Lcom/rsdk/framework/IAPDebug;

    # getter for: Lcom/rsdk/framework/IAPDebug;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/rsdk/framework/IAPDebug;->access$0(Lcom/rsdk/framework/IAPDebug;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->networkReachable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug$1;->this$0:Lcom/rsdk/framework/IAPDebug;

    const/4 v1, 0x3

    const-string v2, "Network not available!"

    invoke-virtual {v0, v1, v2}, Lcom/rsdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug$1;->this$0:Lcom/rsdk/framework/IAPDebug;

    iget-object v1, p0, Lcom/rsdk/framework/IAPDebug$1;->val$curCPInfo:Ljava/util/Hashtable;

    # invokes: Lcom/rsdk/framework/IAPDebug;->getPayOrderId(Ljava/util/Hashtable;)V
    invoke-static {v0, v1}, Lcom/rsdk/framework/IAPDebug;->access$1(Lcom/rsdk/framework/IAPDebug;Ljava/util/Hashtable;)V

    goto :goto_0
.end method
