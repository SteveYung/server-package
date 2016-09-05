.class Lcom/raysns/gameapi/module/RWebView$WebJSLib;
.super Ljava/lang/Object;
.source "RWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raysns/gameapi/module/RWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebJSLib"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raysns/gameapi/module/RWebView;


# direct methods
.method private constructor <init>(Lcom/raysns/gameapi/module/RWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib;->this$0:Lcom/raysns/gameapi/module/RWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/raysns/gameapi/module/RWebView;Lcom/raysns/gameapi/module/RWebView$WebJSLib;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/raysns/gameapi/module/RWebView$WebJSLib;-><init>(Lcom/raysns/gameapi/module/RWebView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/raysns/gameapi/module/RWebView$WebJSLib;)Lcom/raysns/gameapi/module/RWebView;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib;->this$0:Lcom/raysns/gameapi/module/RWebView;

    return-object v0
.end method


# virtual methods
.method public onGotoGooglePlay()V
    .locals 3

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView;->access$0(Lcom/raysns/gameapi/module/RWebView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/raysns/gameapi/module/RWebView$WebJSLib$3;

    invoke-direct {v1, p0}, Lcom/raysns/gameapi/module/RWebView$WebJSLib$3;-><init>(Lcom/raysns/gameapi/module/RWebView$WebJSLib;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView;->access$1(Lcom/raysns/gameapi/module/RWebView;)Lcom/raysns/gameapi/util/ActionListener;

    move-result-object v0

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/raysns/gameapi/util/ActionListener;->callback(ILorg/json/JSONObject;)V

    return-void
.end method

.method public onPurchaseCancel()V
    .locals 3

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView;->access$0(Lcom/raysns/gameapi/module/RWebView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/raysns/gameapi/module/RWebView$WebJSLib$2;

    invoke-direct {v1, p0}, Lcom/raysns/gameapi/module/RWebView$WebJSLib$2;-><init>(Lcom/raysns/gameapi/module/RWebView$WebJSLib;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView;->access$1(Lcom/raysns/gameapi/module/RWebView;)Lcom/raysns/gameapi/util/ActionListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/raysns/gameapi/util/ActionListener;->callback(ILorg/json/JSONObject;)V

    return-void
.end method

.method public onPurchaseSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView;->access$0(Lcom/raysns/gameapi/module/RWebView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/raysns/gameapi/module/RWebView$WebJSLib$1;

    invoke-direct {v1, p0}, Lcom/raysns/gameapi/module/RWebView$WebJSLib$1;-><init>(Lcom/raysns/gameapi/module/RWebView$WebJSLib;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView;->access$1(Lcom/raysns/gameapi/module/RWebView;)Lcom/raysns/gameapi/util/ActionListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/raysns/gameapi/util/ActionListener;->callback(ILorg/json/JSONObject;)V

    return-void
.end method
