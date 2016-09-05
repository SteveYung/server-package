.class Lcom/rsdk/framework/DebugWrapper$3;
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

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/DebugWrapper;Landroid/view/View;Lcom/rsdk/framework/ILoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iput-object p2, p0, Lcom/rsdk/framework/DebugWrapper$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/rsdk/framework/DebugWrapper$3;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper$3;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v4, "rsdk_login_username"

    const-string v5, "id"

    invoke-virtual {v3, v4, v5}, Lcom/rsdk/framework/DebugWrapper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper$3;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v4, "rsdk_login_password"

    const-string v5, "id"

    invoke-virtual {v3, v4, v5}, Lcom/rsdk/framework/DebugWrapper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper$3;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    const/4 v3, 0x5

    const-string v4, "\u5e10\u53f7\u6216\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-interface {v2, v3, v4}, Lcom/rsdk/framework/ILoginCallback;->onFailed(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/rsdk/framework/DebugWrapper;->access$0(Lcom/rsdk/framework/DebugWrapper;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v3, "12345678"

    invoke-static {v2, v3}, Lcom/rsdk/framework/DebugWrapper;->access$1(Lcom/rsdk/framework/DebugWrapper;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/rsdk/framework/DebugWrapper;->access$2(Lcom/rsdk/framework/DebugWrapper;Z)V

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v3, "TEST_"

    invoke-virtual {v2, v3}, Lcom/rsdk/framework/DebugWrapper;->setUserIDPrefix(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iget-object v3, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    # getter for: Lcom/rsdk/framework/DebugWrapper;->r_pid:Ljava/lang/String;
    invoke-static {v3}, Lcom/rsdk/framework/DebugWrapper;->access$3(Lcom/rsdk/framework/DebugWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/rsdk/framework/DebugWrapper;->access$4(Lcom/rsdk/framework/DebugWrapper;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rsdk/framework/DebugWrapper$3;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"status\":\"ok\",\"rsdk_ret\":{\"pid\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/rsdk/framework/DebugWrapper$3;->this$0:Lcom/rsdk/framework/DebugWrapper;

    # getter for: Lcom/rsdk/framework/DebugWrapper;->r_pid:Ljava/lang/String;
    invoke-static {v5}, Lcom/rsdk/framework/DebugWrapper;->access$3(Lcom/rsdk/framework/DebugWrapper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\"pid_prefix\":\"DG_\",\"nickname\":\"\",\"token\":\"\",\"token_expire\":\"\",\"token_refresh\":\"\",\"server_ext_param\":\"\",\"source\":\"\",\"user_type\":\"1\",\"custom_data\":\"\"}}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/rsdk/framework/ILoginCallback;->onSuccessed(ILjava/lang/String;)V

    goto :goto_0
.end method
