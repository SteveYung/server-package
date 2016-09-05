.class Lcom/raysns/gameapi/module/RWebView$3;
.super Ljava/lang/Object;
.source "RWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raysns/gameapi/module/RWebView;->createCloseBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raysns/gameapi/module/RWebView;


# direct methods
.method constructor <init>(Lcom/raysns/gameapi/module/RWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/gameapi/module/RWebView$3;->this$0:Lcom/raysns/gameapi/module/RWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/raysns/gameapi/module/RWebView$3;)Lcom/raysns/gameapi/module/RWebView;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$3;->this$0:Lcom/raysns/gameapi/module/RWebView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$3;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView;->access$0(Lcom/raysns/gameapi/module/RWebView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/raysns/gameapi/module/RWebView$3$1;

    invoke-direct {v1, p0}, Lcom/raysns/gameapi/module/RWebView$3$1;-><init>(Lcom/raysns/gameapi/module/RWebView$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$3;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView;->access$1(Lcom/raysns/gameapi/module/RWebView;)Lcom/raysns/gameapi/util/ActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$3;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView;->access$1(Lcom/raysns/gameapi/module/RWebView;)Lcom/raysns/gameapi/util/ActionListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/raysns/gameapi/util/ActionListener;->callback(ILorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
