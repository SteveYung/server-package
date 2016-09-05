.class Lcom/rsdk/framework/IAPDebug2$1$1;
.super Ljava/lang/Object;
.source "IAPDebug2.java"

# interfaces
.implements Lcom/rsdk/framework/ILoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/IAPDebug2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rsdk/framework/IAPDebug2$1;

.field private final synthetic val$curCPInfo:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/IAPDebug2$1;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/IAPDebug2$1$1;->this$1:Lcom/rsdk/framework/IAPDebug2$1;

    iput-object p2, p0, Lcom/rsdk/framework/IAPDebug2$1$1;->val$curCPInfo:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug2$1$1;->this$1:Lcom/rsdk/framework/IAPDebug2$1;

    # getter for: Lcom/rsdk/framework/IAPDebug2$1;->this$0:Lcom/rsdk/framework/IAPDebug2;
    invoke-static {v0}, Lcom/rsdk/framework/IAPDebug2$1;->access$0(Lcom/rsdk/framework/IAPDebug2$1;)Lcom/rsdk/framework/IAPDebug2;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login fail,msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/rsdk/framework/IAPDebug2;->payResult(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccessed(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug2$1$1;->this$1:Lcom/rsdk/framework/IAPDebug2$1;

    # getter for: Lcom/rsdk/framework/IAPDebug2$1;->this$0:Lcom/rsdk/framework/IAPDebug2;
    invoke-static {v0}, Lcom/rsdk/framework/IAPDebug2$1;->access$0(Lcom/rsdk/framework/IAPDebug2$1;)Lcom/rsdk/framework/IAPDebug2;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/IAPDebug2$1$1;->val$curCPInfo:Ljava/util/Hashtable;

    # invokes: Lcom/rsdk/framework/IAPDebug2;->getPayOrderId(Ljava/util/Hashtable;)V
    invoke-static {v0, v1}, Lcom/rsdk/framework/IAPDebug2;->access$1(Lcom/rsdk/framework/IAPDebug2;Ljava/util/Hashtable;)V

    return-void
.end method
