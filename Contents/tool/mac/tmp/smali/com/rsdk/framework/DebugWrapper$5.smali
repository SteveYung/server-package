.class Lcom/rsdk/framework/DebugWrapper$5;
.super Ljava/lang/Object;
.source "DebugWrapper.java"

# interfaces
.implements Lcom/rsdk/Util/SdkHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/DebugWrapper;->getAccessToken(Lcom/rsdk/framework/ILoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/DebugWrapper;

.field private final synthetic val$listener:Lcom/rsdk/framework/ILoginCallback;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/DebugWrapper;Lcom/rsdk/framework/ILoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper$5;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iput-object p2, p0, Lcom/rsdk/framework/DebugWrapper$5;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$5;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->access$2(Lcom/rsdk/framework/DebugWrapper;Z)V

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$5;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    const/4 v1, 0x5

    const-string v2, "getAccessToken onError"

    invoke-interface {v0, v1, v2}, Lcom/rsdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper$5;->this$0:Lcom/rsdk/framework/DebugWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAccessToken response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rsdk/framework/UserWrapper;->handlerLoginDataFromServer(Ljava/lang/String;)Lcom/rsdk/framework/LoginCallbackDataInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper$5;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/rsdk/framework/DebugWrapper;->access$2(Lcom/rsdk/framework/DebugWrapper;Z)V

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper$5;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iget-object v2, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->pid_prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rsdk/framework/DebugWrapper;->setUserIDPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper$5;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iget-object v2, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->user_type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/rsdk/framework/DebugWrapper;->access$5(Lcom/rsdk/framework/DebugWrapper;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper$5;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iget-object v2, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->pid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/rsdk/framework/DebugWrapper;->access$4(Lcom/rsdk/framework/DebugWrapper;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper$5;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/rsdk/framework/LoginCallbackDataInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/rsdk/framework/ILoginCallback;->onSuccessed(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper$5;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/rsdk/framework/DebugWrapper;->access$2(Lcom/rsdk/framework/DebugWrapper;Z)V

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper$5;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    const/4 v2, 0x5

    const-string v3, "getAccessToken error"

    invoke-interface {v1, v2, v3}, Lcom/rsdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0
.end method
