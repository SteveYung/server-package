.class Lcom/rsdk/framework/UserDebug2$2$1;
.super Ljava/lang/Object;
.source "UserDebug2.java"

# interfaces
.implements Lcom/rsdk/framework/ILoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserDebug2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rsdk/framework/UserDebug2$2;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/UserDebug2$2;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug2$2$1;->this$1:Lcom/rsdk/framework/UserDebug2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug2$2$1;->this$1:Lcom/rsdk/framework/UserDebug2$2;

    # getter for: Lcom/rsdk/framework/UserDebug2$2;->this$0:Lcom/rsdk/framework/UserDebug2;
    invoke-static {v0}, Lcom/rsdk/framework/UserDebug2$2;->access$0(Lcom/rsdk/framework/UserDebug2$2;)Lcom/rsdk/framework/UserDebug2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/rsdk/framework/UserDebug2;->actionResult(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccessed(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug2$2$1;->this$1:Lcom/rsdk/framework/UserDebug2$2;

    # getter for: Lcom/rsdk/framework/UserDebug2$2;->this$0:Lcom/rsdk/framework/UserDebug2;
    invoke-static {v0}, Lcom/rsdk/framework/UserDebug2$2;->access$0(Lcom/rsdk/framework/UserDebug2$2;)Lcom/rsdk/framework/UserDebug2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/rsdk/framework/UserDebug2;->actionResult(ILjava/lang/String;)V

    return-void
.end method
