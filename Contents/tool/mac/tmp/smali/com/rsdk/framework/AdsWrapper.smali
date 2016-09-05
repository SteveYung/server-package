.class public Lcom/rsdk/framework/AdsWrapper;
.super Ljava/lang/Object;
.source "AdsWrapper.java"


# static fields
.field public static final AD_TYPE_BANNER:I = 0x0

.field public static final AD_TYPE_FULLSCREEN:I = 0x1

.field public static final AD_TYPE_MOREAPP:I = 0x2

.field public static final AD_TYPE_OFFERWALL:I = 0x3

.field public static final POS_BOTTOM:I = 0x4

.field public static final POS_BOTTOM_LEFT:I = 0x5

.field public static final POS_BOTTOM_RIGHT:I = 0x6

.field public static final POS_CENTER:I = 0x0

.field public static final POS_TOP:I = 0x1

.field public static final POS_TOP_LEFT:I = 0x2

.field public static final POS_TOP_RIGHT:I = 0x3

.field public static final RESULT_CODE_AdsDismissed:I = 0x2

.field public static final RESULT_CODE_AdsReceived:I = 0x0

.field public static final RESULT_CODE_AdsShown:I = 0x1

.field public static final RESULT_CODE_NetworkError:I = 0x5

.field public static final RESULT_CODE_OfferWallOnPointsChanged:I = 0x7

.field public static final RESULT_CODE_PointsSpendFailed:I = 0x4

.field public static final RESULT_CODE_PointsSpendSucceed:I = 0x3

.field public static final RESULT_CODE_UnknownError:I = 0x6

.field private static mapAdsType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/rsdk/framework/AdsWrapper;->mapAdsType:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rsdk/framework/AdsWrapper;->nativeOnAdsResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/rsdk/framework/AdsWrapper;->nativeOnPlayerGetPoints(Ljava/lang/String;I)V

    return-void
.end method

.method public static addAdView(Landroid/view/WindowManager;Landroid/view/View;I)V
    .locals 3
    .param p0    # Landroid/view/WindowManager;
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getAdNameWithType(I)Ljava/lang/String;
    .locals 4
    .param p0    # I

    const/4 v3, 0x3

    if-gt p0, v3, :cond_0

    if-gez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/rsdk/framework/AdsWrapper;->mapAdsType:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rsdk/framework/AdsWrapper;->mapAdsType:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AD_TYPE_BANNER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/rsdk/framework/AdsWrapper;->mapAdsType:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AD_TYPE_FULLSCREEN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/rsdk/framework/AdsWrapper;->mapAdsType:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AD_TYPE_MOREAPP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/rsdk/framework/AdsWrapper;->mapAdsType:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AD_TYPE_OFFERWALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/rsdk/framework/AdsWrapper;->mapAdsType:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static native nativeOnAdsResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native nativeOnPlayerGetPoints(Ljava/lang/String;I)V
.end method

.method public static onAdsResult(Lcom/rsdk/framework/InterfaceAds;ILjava/lang/String;)V
    .locals 4
    .param p0    # Lcom/rsdk/framework/InterfaceAds;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    move v0, p1

    move-object v1, p2

    move-object v2, p0

    new-instance v3, Lcom/rsdk/framework/AdsWrapper$1;

    invoke-direct {v3, v2, v0, v1}, Lcom/rsdk/framework/AdsWrapper$1;-><init>(Lcom/rsdk/framework/InterfaceAds;ILjava/lang/String;)V

    invoke-static {v3}, Lcom/rsdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPlayerGetPoints(Lcom/rsdk/framework/InterfaceAds;I)V
    .locals 3
    .param p0    # Lcom/rsdk/framework/InterfaceAds;
    .param p1    # I

    move v1, p1

    move-object v0, p0

    new-instance v2, Lcom/rsdk/framework/AdsWrapper$2;

    invoke-direct {v2, v0, v1}, Lcom/rsdk/framework/AdsWrapper$2;-><init>(Lcom/rsdk/framework/InterfaceAds;I)V

    invoke-static {v2}, Lcom/rsdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
