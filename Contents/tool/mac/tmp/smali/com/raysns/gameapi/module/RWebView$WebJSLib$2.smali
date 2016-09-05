.class Lcom/raysns/gameapi/module/RWebView$WebJSLib$2;
.super Ljava/lang/Object;
.source "RWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raysns/gameapi/module/RWebView$WebJSLib;->onPurchaseCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/raysns/gameapi/module/RWebView$WebJSLib;


# direct methods
.method constructor <init>(Lcom/raysns/gameapi/module/RWebView$WebJSLib;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib$2;->this$1:Lcom/raysns/gameapi/module/RWebView$WebJSLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$WebJSLib$2;->this$1:Lcom/raysns/gameapi/module/RWebView$WebJSLib;

    # getter for: Lcom/raysns/gameapi/module/RWebView$WebJSLib;->this$0:Lcom/raysns/gameapi/module/RWebView;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView$WebJSLib;->access$1(Lcom/raysns/gameapi/module/RWebView$WebJSLib;)Lcom/raysns/gameapi/module/RWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raysns/gameapi/module/RWebView;->destroy()V

    return-void
.end method
