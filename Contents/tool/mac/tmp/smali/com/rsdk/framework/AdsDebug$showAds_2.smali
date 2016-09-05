.class Lcom/rsdk/framework/AdsDebug$showAds_2;
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
    name = "showAds_2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/AdsDebug;


# direct methods
.method private constructor <init>(Lcom/rsdk/framework/AdsDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/AdsDebug$showAds_2;->this$0:Lcom/rsdk/framework/AdsDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rsdk/framework/AdsDebug;Lcom/rsdk/framework/AdsDebug$showAds_2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rsdk/framework/AdsDebug$showAds_2;-><init>(Lcom/rsdk/framework/AdsDebug;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    # getter for: Lcom/rsdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/rsdk/framework/AdsDebug;->access$0()Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/rsdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/rsdk/framework/AdsDebug;->access$0()Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-static {v6}, Lcom/rsdk/framework/AdsDebug;->access$1(Landroid/widget/PopupWindow;)V

    :cond_0
    # getter for: Lcom/rsdk/framework/AdsDebug;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/rsdk/framework/AdsDebug;->access$2()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ui_ad"

    const-string v4, "drawable"

    invoke-static {v3, v4}, Lcom/rsdk/framework/AdsDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    # getter for: Lcom/rsdk/framework/AdsDebug;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/rsdk/framework/AdsDebug;->access$2()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "plugin_ads"

    const-string v4, "layout"

    invoke-static {v3, v4}, Lcom/rsdk/framework/AdsDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v2}, Lcom/rsdk/framework/AdsDebug;->access$1(Landroid/widget/PopupWindow;)V

    # getter for: Lcom/rsdk/framework/AdsDebug;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/rsdk/framework/AdsDebug;->access$0()Landroid/widget/PopupWindow;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v1, v3, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const-string v2, "image_close"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/rsdk/framework/AdsDebug;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lcom/rsdk/framework/AdsDebug$showAds_2$1showAds_2_1;

    invoke-direct {v3, p0}, Lcom/rsdk/framework/AdsDebug$showAds_2$1showAds_2_1;-><init>(Lcom/rsdk/framework/AdsDebug$showAds_2;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
