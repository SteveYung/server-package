.class Lcom/rsdk/framework/UserDebug2$7$1;
.super Ljava/lang/Object;
.source "UserDebug2.java"

# interfaces
.implements Lcom/rsdk/framework/ILoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserDebug2$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rsdk/framework/UserDebug2$7;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/UserDebug2$7;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug2$7$1;->this$1:Lcom/rsdk/framework/UserDebug2$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug2$7$1;->this$1:Lcom/rsdk/framework/UserDebug2$7;

    # getter for: Lcom/rsdk/framework/UserDebug2$7;->this$0:Lcom/rsdk/framework/UserDebug2;
    invoke-static {v0}, Lcom/rsdk/framework/UserDebug2$7;->access$0(Lcom/rsdk/framework/UserDebug2$7;)Lcom/rsdk/framework/UserDebug2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rsdk/framework/UserDebug2;->actionResult(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccessed(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug2$7$1;->this$1:Lcom/rsdk/framework/UserDebug2$7;

    # getter for: Lcom/rsdk/framework/UserDebug2$7;->this$0:Lcom/rsdk/framework/UserDebug2;
    invoke-static {v0}, Lcom/rsdk/framework/UserDebug2$7;->access$0(Lcom/rsdk/framework/UserDebug2$7;)Lcom/rsdk/framework/UserDebug2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rsdk/framework/UserDebug2;->actionResult(ILjava/lang/String;)V

    return-void
.end method
