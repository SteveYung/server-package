.class Lcom/raysns/gameapi/module/RWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "RWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raysns/gameapi/module/RWebView;-><init>(Landroid/app/Activity;Lcom/raysns/gameapi/util/ActionListener;)V
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

    iput-object p1, p0, Lcom/raysns/gameapi/module/RWebView$2;->this$0:Lcom/raysns/gameapi/module/RWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/webkit/JsResult;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/raysns/gameapi/module/RWebView$2;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # getter for: Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;
    invoke-static {v1}, Lcom/raysns/gameapi/module/RWebView;->access$0(Lcom/raysns/gameapi/module/RWebView;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/raysns/gameapi/module/RWebView$2$1;

    invoke-direct {v2, p0, p4}, Lcom/raysns/gameapi/module/RWebView$2$1;-><init>(Lcom/raysns/gameapi/module/RWebView$2;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    return v0
.end method
