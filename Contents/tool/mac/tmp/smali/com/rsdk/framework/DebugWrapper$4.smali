.class Lcom/rsdk/framework/DebugWrapper$4;
.super Ljava/lang/Object;
.source "DebugWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/DebugWrapper;->showLoginDialog(Lcom/rsdk/framework/ILoginCallback;)V
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

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper$4;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iput-object p2, p0, Lcom/rsdk/framework/DebugWrapper$4;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$4;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    const/4 v1, 0x6

    const-string v2, "\u767b\u9646\u53d6\u6d88"

    invoke-interface {v0, v1, v2}, Lcom/rsdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method
