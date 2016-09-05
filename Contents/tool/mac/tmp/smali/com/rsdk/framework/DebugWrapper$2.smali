.class Lcom/rsdk/framework/DebugWrapper$2;
.super Ljava/lang/Object;
.source "DebugWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/DebugWrapper;->userLogin(Lcom/rsdk/framework/ILoginCallback;)V
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

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper$2;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iput-object p2, p0, Lcom/rsdk/framework/DebugWrapper$2;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$2;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "userLogin() invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$2;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iget-object v1, p0, Lcom/rsdk/framework/DebugWrapper$2;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->showLoginDialog(Lcom/rsdk/framework/ILoginCallback;)V

    return-void
.end method
