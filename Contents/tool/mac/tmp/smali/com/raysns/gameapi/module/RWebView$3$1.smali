.class Lcom/raysns/gameapi/module/RWebView$3$1;
.super Ljava/lang/Object;
.source "RWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raysns/gameapi/module/RWebView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/raysns/gameapi/module/RWebView$3;


# direct methods
.method constructor <init>(Lcom/raysns/gameapi/module/RWebView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/gameapi/module/RWebView$3$1;->this$1:Lcom/raysns/gameapi/module/RWebView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$3$1;->this$1:Lcom/raysns/gameapi/module/RWebView$3;

    # getter for: Lcom/raysns/gameapi/module/RWebView$3;->this$0:Lcom/raysns/gameapi/module/RWebView;
    invoke-static {v0}, Lcom/raysns/gameapi/module/RWebView$3;->access$0(Lcom/raysns/gameapi/module/RWebView$3;)Lcom/raysns/gameapi/module/RWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raysns/gameapi/module/RWebView;->destroy()V

    return-void
.end method
