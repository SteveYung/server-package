.class public Lcom/raysns/gameapi/PaymentManager;
.super Ljava/lang/Object;
.source "PaymentManager.java"


# static fields
.field private static _instance:Lcom/raysns/gameapi/PaymentManager;


# instance fields
.field private currentItem:Lcom/raysns/gameapi/util/StoreItem;

.field public platform:Lcom/raysns/gameapi/PlatformService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/raysns/gameapi/PaymentManager;
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/PaymentManager;->_instance:Lcom/raysns/gameapi/PaymentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/raysns/gameapi/PaymentManager;

    invoke-direct {v0}, Lcom/raysns/gameapi/PaymentManager;-><init>()V

    sput-object v0, Lcom/raysns/gameapi/PaymentManager;->_instance:Lcom/raysns/gameapi/PaymentManager;

    :cond_0
    sget-object v0, Lcom/raysns/gameapi/PaymentManager;->_instance:Lcom/raysns/gameapi/PaymentManager;

    return-object v0
.end method


# virtual methods
.method public onExit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPurchaseResult(ILorg/json/JSONObject;)V
    .locals 4
    .param p1    # I
    .param p2    # Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "paymenttype"

    iget-object v2, p0, Lcom/raysns/gameapi/PaymentManager;->currentItem:Lcom/raysns/gameapi/util/StoreItem;

    invoke-virtual {v2}, Lcom/raysns/gameapi/util/StoreItem;->getPaymentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/raysns/gameapi/PaymentManager;->platform:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v1, p1, v0}, Lcom/raysns/gameapi/PlatformService;->purchaseCallback(ILorg/json/JSONObject;)Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/raysns/gameapi/PaymentManager;->platform:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v1, p1, v0}, Lcom/raysns/gameapi/PlatformService;->purchaseCallback(ILorg/json/JSONObject;)Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lcom/raysns/gameapi/PaymentManager;->platform:Lcom/raysns/gameapi/PlatformService;

    iget-object v2, p0, Lcom/raysns/gameapi/PaymentManager;->currentItem:Lcom/raysns/gameapi/util/StoreItem;

    iget-object v3, p0, Lcom/raysns/gameapi/PaymentManager;->platform:Lcom/raysns/gameapi/PlatformService;

    iget-object v3, v3, Lcom/raysns/gameapi/PlatformService;->purchaseListener:Lcom/raysns/gameapi/util/ActionListener;

    invoke-virtual {v1, v2, v3}, Lcom/raysns/gameapi/PlatformService;->purchase(Lcom/raysns/gameapi/util/StoreItem;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method public purchase(Lcom/raysns/gameapi/util/StoreItem;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/raysns/gameapi/util/StoreItem;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    iput-object p1, p0, Lcom/raysns/gameapi/PaymentManager;->currentItem:Lcom/raysns/gameapi/util/StoreItem;

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getPaymentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getPaymentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/raysns/gameapi/PaymentManager;->platform:Lcom/raysns/gameapi/PlatformService;

    invoke-virtual {v0, p1, p2}, Lcom/raysns/gameapi/PlatformService;->purchase(Lcom/raysns/gameapi/util/StoreItem;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getPaymentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gate2play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/raysns/gameapi/PaymentManager;->platform:Lcom/raysns/gameapi/PlatformService;

    iput-object p2, v0, Lcom/raysns/gameapi/PlatformService;->purchaseListener:Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
