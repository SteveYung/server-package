.class Lcom/raysns/gameapi/module/RWebView$1;
.super Landroid/webkit/WebViewClient;
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

    iput-object p1, p0, Lcom/raysns/gameapi/module/RWebView$1;->this$0:Lcom/raysns/gameapi/module/RWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Landroid/webkit/WebView;
    .param p2    # Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "rcallback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/raysns/gameapi/module/RWebView$1;->this$0:Lcom/raysns/gameapi/module/RWebView;

    # invokes: Lcom/raysns/gameapi/module/RWebView;->dealWithLocation([Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/raysns/gameapi/module/RWebView;->access$2(Lcom/raysns/gameapi/module/RWebView;[Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
