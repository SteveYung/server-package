.class Lcom/raysns/gameapi/module/RWebView$2$1;
.super Ljava/lang/Object;
.source "RWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raysns/gameapi/module/RWebView$2;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/raysns/gameapi/module/RWebView$2;

.field private final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/raysns/gameapi/module/RWebView$2;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/gameapi/module/RWebView$2$1;->this$1:Lcom/raysns/gameapi/module/RWebView$2;

    iput-object p2, p0, Lcom/raysns/gameapi/module/RWebView$2$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView$2$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
