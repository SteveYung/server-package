.class Lcom/rsdk/framework/UserDebug$1;
.super Ljava/lang/Object;
.source "UserDebug.java"

# interfaces
.implements Lcom/rsdk/framework/ILoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserDebug;->login()V
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

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug$1;->this$0:Lcom/rsdk/framework/UserDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug$1;->this$0:Lcom/rsdk/framework/UserDebug;

    invoke-virtual {v0, p1, p2}, Lcom/rsdk/framework/UserDebug;->actionResult(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccessed(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug$1;->this$0:Lcom/rsdk/framework/UserDebug;

    invoke-virtual {v0, p1, p2}, Lcom/rsdk/framework/UserDebug;->actionResult(ILjava/lang/String;)V

    return-void
.end method
