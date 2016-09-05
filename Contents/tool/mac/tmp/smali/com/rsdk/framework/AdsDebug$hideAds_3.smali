.class Lcom/rsdk/framework/AdsDebug$hideAds_3;
.super Ljava/lang/Object;
.source "AdsDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rsdk/framework/AdsDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "hideAds_3"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/AdsDebug;


# direct methods
.method private constructor <init>(Lcom/rsdk/framework/AdsDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/AdsDebug$hideAds_3;->this$0:Lcom/rsdk/framework/AdsDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rsdk/framework/AdsDebug;Lcom/rsdk/framework/AdsDebug$hideAds_3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rsdk/framework/AdsDebug$hideAds_3;-><init>(Lcom/rsdk/framework/AdsDebug;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    # getter for: Lcom/rsdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/rsdk/framework/AdsDebug;->access$0()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/rsdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/rsdk/framework/AdsDebug;->access$0()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/rsdk/framework/AdsDebug;->access$1(Landroid/widget/PopupWindow;)V

    :cond_0
    return-void
.end method
