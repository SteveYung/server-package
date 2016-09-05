.class public Lcom/rsdk/framework/IAPWrapper;
.super Ljava/lang/Object;
.source "IAPWrapper.java"


# static fields
.field public static final PAYRESULT_CANCEL:I = 0x2

.field public static final PAYRESULT_FAIL:I = 0x1

.field public static final PAYRESULT_INIT_FAIL:I = 0x6

.field public static final PAYRESULT_INIT_SUCCESS:I = 0x5

.field public static final PAYRESULT_NETWORK_ERROR:I = 0x3

.field public static final PAYRESULT_NOW_PAYING:I = 0x7

.field public static final PAYRESULT_PRODUCTIONINFOR_INCOMPLETE:I = 0x4

.field public static final PAYRESULT_RECHARGE_SUCCESS:I = 0x8

.field public static final PAYRESULT_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rsdk/framework/IAPWrapper;->nativeOnPaymentResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static formatPayRequestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    const-string v2, "money"

    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_user_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "game_server_id"

    invoke-virtual {v1, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "user_id"

    invoke-virtual {v1, v2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    invoke-virtual {v1, v2, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_name"

    invoke-virtual {v1, v2, p5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "coin_num"

    invoke-virtual {v1, v2, p6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_type"

    invoke-virtual {v1, v2, p7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_count"

    invoke-virtual {v1, v2, p8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "private_data"

    invoke-virtual {v1, v2, p9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "os"

    const-string v3, "and"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPayOrderId(Landroid/content/Context;Ljava/util/Hashtable;Lcom/rsdk/Util/SdkHttpListener;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p2    # Lcom/rsdk/Util/SdkHttpListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rsdk/Util/SdkHttpListener;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/rsdk/Util/g;->b(Landroid/content/Context;Ljava/util/Hashtable;Lcom/rsdk/Util/SdkHttpListener;)V

    return-void
.end method

.method public static handlerGetOrderIdDataFromServer(Ljava/lang/String;)Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;
    .locals 6
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;->formatData(Lorg/json/JSONObject;)Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static handlerGetOrderIdDataFromServer(Ljava/lang/String;Lcom/rsdk/framework/IPayCallback;)Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;
    .locals 9
    .param p0    # Ljava/lang/String;
    .param p1    # Lcom/rsdk/framework/IPayCallback;

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;->formatData(Lorg/json/JSONObject;)Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "status fail,retData:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lcom/rsdk/framework/IPayCallback;->onFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v5}, Lcom/rsdk/framework/IPayCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeOnPaymentResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onPayResult(Lcom/rsdk/framework/InterfaceIAP;ILjava/lang/String;)V
    .locals 4
    .param p0    # Lcom/rsdk/framework/InterfaceIAP;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    move v2, p1

    move-object v0, p2

    move-object v1, p0

    new-instance v3, Lcom/rsdk/framework/IAPWrapper$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/rsdk/framework/IAPWrapper$1;-><init>(Lcom/rsdk/framework/InterfaceIAP;ILjava/lang/String;)V

    invoke-static {v3}, Lcom/rsdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendPaymentToServer(Landroid/content/Context;Ljava/util/Hashtable;ZLcom/rsdk/Util/SdkHttpListener;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # Lcom/rsdk/Util/SdkHttpListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/rsdk/Util/SdkHttpListener;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/rsdk/Util/g;->sendPaymentToServer(Landroid/content/Context;Ljava/util/Hashtable;ZLcom/rsdk/Util/SdkHttpListener;)V

    return-void
.end method
