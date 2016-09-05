.class public Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;
.super Ljava/lang/Object;
.source "GetOrderIdCallbackDataInfo.java"


# instance fields
.field private _strData:Ljava/lang/String;

.field public custom_data:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public server_ext_param:Ljava/lang/String;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;->orderId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;->source:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;->custom_data:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;->server_ext_param:Ljava/lang/String;

    return-void
.end method

.method public static formatData(Lorg/json/JSONObject;)Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;
    .locals 2
    .param p0    # Lorg/json/JSONObject;

    new-instance v0, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;

    invoke-direct {v0}, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;->_strData:Ljava/lang/String;

    const-string v1, "order_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;->orderId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/GetOrderIdCallbackDataInfo;->_strData:Ljava/lang/String;

    return-object v0
.end method
