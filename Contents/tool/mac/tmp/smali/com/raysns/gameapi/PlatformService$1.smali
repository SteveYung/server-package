.class Lcom/raysns/gameapi/PlatformService$1;
.super Ljava/lang/Object;
.source "PlatformService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raysns/gameapi/PlatformService;->openUrlInApp(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raysns/gameapi/PlatformService;


# direct methods
.method constructor <init>(Lcom/raysns/gameapi/PlatformService;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/gameapi/PlatformService$1;->this$0:Lcom/raysns/gameapi/PlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/raysns/gameapi/module/RWebView;

    iget-object v1, p0, Lcom/raysns/gameapi/PlatformService$1;->this$0:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v1}, Lcom/raysns/gameapi/PlatformService;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raysns/gameapi/module/RWebView;-><init>(Landroid/app/Activity;Lcom/raysns/gameapi/util/ActionListener;)V

    invoke-virtual {v0}, Lcom/raysns/gameapi/module/RWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0}, Lcom/raysns/gameapi/module/RWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v1, p0, Lcom/raysns/gameapi/PlatformService$1;->this$0:Lcom/raysns/gameapi/PlatformService;

    # getter for: Lcom/raysns/gameapi/PlatformService;->global_openWebviewIfShowClose:Z
    invoke-static {v1}, Lcom/raysns/gameapi/PlatformService;->access$0(Lcom/raysns/gameapi/PlatformService;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raysns/gameapi/module/RWebView;->setCloseBtnVisible(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/raysns/gameapi/PlatformService$1;->this$0:Lcom/raysns/gameapi/PlatformService;

    # getter for: Lcom/raysns/gameapi/PlatformService;->global_openWebviewUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/raysns/gameapi/PlatformService;->access$1(Lcom/raysns/gameapi/PlatformService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raysns/gameapi/module/RWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
