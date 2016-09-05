.class public Lcom/raysns/gameapi/module/RWebView;
.super Landroid/webkit/WebView;
.source "RWebView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raysns/gameapi/module/RWebView$WebJSLib;
    }
.end annotation


# instance fields
.field private actionHandler:Lcom/raysns/gameapi/util/ActionListener;

.field private closeBtn:Landroid/widget/ImageView;

.field private parent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/raysns/gameapi/util/ActionListener;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;

    iput-object p2, p0, Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v3, Lcom/raysns/gameapi/module/RWebView$1;

    invoke-direct {v3, p0}, Lcom/raysns/gameapi/module/RWebView$1;-><init>(Lcom/raysns/gameapi/module/RWebView;)V

    invoke-virtual {p0, v3}, Lcom/raysns/gameapi/module/RWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v3, Lcom/raysns/gameapi/module/RWebView$2;

    invoke-direct {v3, p0}, Lcom/raysns/gameapi/module/RWebView$2;-><init>(Lcom/raysns/gameapi/module/RWebView;)V

    invoke-virtual {p0, v3}, Lcom/raysns/gameapi/module/RWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v3, p0, Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/raysns/gameapi/module/RWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/raysns/gameapi/module/RWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    new-instance v3, Lcom/raysns/gameapi/module/RWebView$WebJSLib;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/raysns/gameapi/module/RWebView$WebJSLib;-><init>(Lcom/raysns/gameapi/module/RWebView;Lcom/raysns/gameapi/module/RWebView$WebJSLib;)V

    const-string v4, "radapter"

    invoke-virtual {p0, v3, v4}, Lcom/raysns/gameapi/module/RWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/raysns/gameapi/module/RWebView;->createCloseBtn()V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/raysns/gameapi/module/RWebView;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/raysns/gameapi/module/RWebView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$0(Lcom/raysns/gameapi/module/RWebView;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/raysns/gameapi/module/RWebView;)Lcom/raysns/gameapi/util/ActionListener;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/raysns/gameapi/module/RWebView;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/raysns/gameapi/module/RWebView;->dealWithLocation([Ljava/lang/String;)V

    return-void
.end method

.method private createCloseBtn()V
    .locals 6

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/raysns/gameapi/module/RWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/raysns/gameapi/module/RWebView;->closeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/raysns/gameapi/module/RWebView;->closeBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/raysns/gameapi/module/RWebView$3;

    invoke-direct {v2, p0}, Lcom/raysns/gameapi/module/RWebView$3;-><init>(Lcom/raysns/gameapi/module/RWebView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/raysns/gameapi/module/RWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com_ray_close"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/raysns/gameapi/module/RWebView;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/raysns/gameapi/module/RWebView;->closeBtn:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private dealWithLocation([Ljava/lang/String;)V
    .locals 11
    .param p1    # [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    aget-object v0, p1, v9

    const-string v7, "facebookapprequest"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x2

    :try_start_0
    aget-object v4, p1, v7

    const/4 v7, 0x3

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "uids"

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "message"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "facebookhomepage"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, p1, v8

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/raysns/gameapi/module/RWebView;

    iget-object v7, p0, Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;

    invoke-direct {v6, v7, v10}, Lcom/raysns/gameapi/module/RWebView;-><init>(Landroid/app/Activity;Lcom/raysns/gameapi/util/ActionListener;)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/raysns/gameapi/module/RWebView;->setCloseBtnVisible(Ljava/lang/Boolean;)V

    invoke-virtual {v6, v5}, Lcom/raysns/gameapi/module/RWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "facebookshare"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;

    const/16 v8, 0x2337

    invoke-virtual {v7, v8, v10}, Lcom/raysns/gameapi/util/ActionListener;->callback(ILorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string v7, "getinvitereward"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;

    if-eqz v7, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x2

    :try_start_1
    aget-object v3, p1, v7

    const-string v7, "rewardIndex"

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget-object v7, p0, Lcom/raysns/gameapi/module/RWebView;->actionHandler:Lcom/raysns/gameapi/util/ActionListener;

    const/16 v8, 0x2338

    invoke-virtual {v7, v8, v1}, Lcom/raysns/gameapi/util/ActionListener;->callback(ILorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string v7, "closewebview"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/raysns/gameapi/module/RWebView;->destroy()V

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView;->parent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public setCloseBtnVisible(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView;->closeBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView;->closeBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/raysns/gameapi/module/RWebView;->closeBtn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
