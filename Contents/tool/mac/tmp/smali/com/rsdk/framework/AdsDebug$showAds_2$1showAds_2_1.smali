.class Lcom/rsdk/framework/AdsDebug$showAds_2$1showAds_2_1;
.super Ljava/lang/Object;
.source "AdsDebug.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/AdsDebug$showAds_2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "showAds_2_1"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rsdk/framework/AdsDebug$showAds_2;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/AdsDebug$showAds_2;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/AdsDebug$showAds_2$1showAds_2_1;->this$1:Lcom/rsdk/framework/AdsDebug$showAds_2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

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
