.class public Lcom/raysns/gameapi/util/StoreItem;
.super Ljava/lang/Object;
.source "StoreItem.java"


# instance fields
.field private _count:I

.field private _currency:Ljava/lang/String;

.field private _desc:Ljava/lang/String;

.field private _extraData:Ljava/lang/String;

.field private _gameID:Ljava/lang/String;

.field private _goldNum:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _itemIndex:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _orderKey:Ljava/lang/String;

.field private _originPrice:D

.field private _payPluginId:Ljava/lang/String;

.field private _paymentType:Ljava/lang/String;

.field private _payurl:Ljava/lang/String;

.field private _platformId:Ljava/lang/String;

.field private _platformUID:Ljava/lang/String;

.field private _servertimestamp:Ljava/lang/String;

.field private _signature:Ljava/lang/String;

.field private _thirdPay:Ljava/lang/String;

.field private _totalPrice:D

.field private _tu:Z

.field private _unitPrice:D

.field private _userLv:Ljava/lang/String;

.field private _userName:Ljava/lang/String;

.field private _userVIPLv:Ljava/lang/String;

.field private _zoneID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1    # Lorg/json/JSONObject;

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_name:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_desc:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_orderKey:Ljava/lang/String;

    iput-wide v2, p0, Lcom/raysns/gameapi/util/StoreItem;->_unitPrice:D

    iput-wide v2, p0, Lcom/raysns/gameapi/util/StoreItem;->_totalPrice:D

    iput-wide v2, p0, Lcom/raysns/gameapi/util/StoreItem;->_originPrice:D

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_goldNum:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_thirdPay:Ljava/lang/String;

    iput v4, p0, Lcom/raysns/gameapi/util/StoreItem;->_count:I

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_paymentType:Ljava/lang/String;

    const-string v1, "usd"

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_currency:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_signature:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_zoneID:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_userName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_userLv:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_gameID:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_extraData:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_payurl:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_userVIPLv:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_servertimestamp:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_itemIndex:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/raysns/gameapi/util/StoreItem;->_tu:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_payPluginId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_id:Ljava/lang/String;

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_platformId:Ljava/lang/String;

    const-string v1, "platformUserID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_platformUID:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_name:Ljava/lang/String;

    const-string v1, "desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_desc:Ljava/lang/String;

    const-string v1, "order"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_orderKey:Ljava/lang/String;

    const-string v1, "unitprice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_unitPrice:D

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_totalPrice:D

    const-string v1, "oldprice"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_originPrice:D

    const-string v1, "goldnum"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_goldNum:Ljava/lang/String;

    const-string v1, "thirdpay"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_thirdPay:Ljava/lang/String;

    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_count:I

    const-string v1, "paymenttype"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_paymentType:Ljava/lang/String;

    const-string v1, "currency"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_currency:Ljava/lang/String;

    :cond_0
    const-string v1, "signature"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_signature:Ljava/lang/String;

    const-string v1, "zoneid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_zoneID:Ljava/lang/String;

    const-string v1, "username"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_userName:Ljava/lang/String;

    const-string v1, "userlv"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_userLv:Ljava/lang/String;

    const-string v1, "viplv"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_userVIPLv:Ljava/lang/String;

    const-string v1, "gameid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_gameID:Ljava/lang/String;

    const-string v1, "payurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_payurl:Ljava/lang/String;

    const-string v1, "extra"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_extraData:Ljava/lang/String;

    const-string v1, "servertimestamp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_servertimestamp:Ljava/lang/String;

    const-string v1, "tu"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/raysns/gameapi/GameAPI;->tuType:Z

    :goto_0
    const-string v1, "itemindex"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_itemIndex:Ljava/lang/String;

    iget-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_itemIndex:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_itemIndex:Ljava/lang/String;

    :cond_1
    const-string v1, "paypluginid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "paypluginid__"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "paypluginid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "paypluginid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/util/StoreItem;->_payPluginId:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    sput-boolean v4, Lcom/raysns/gameapi/GameAPI;->tuType:Z

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_count:I

    return v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_extraData:Ljava/lang/String;

    return-object v0
.end method

.method public getGameID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_gameID:Ljava/lang/String;

    return-object v0
.end method

.method public getGoldNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_goldNum:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_orderKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_originPrice:D

    return-wide v0
.end method

.method public getPID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_platformId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_platformId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_platformId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPayPluginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_payPluginId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_payurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_paymentType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_platformUID:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_servertimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_signature:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_thirdPay:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()D
    .locals 4

    iget-wide v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_totalPrice:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_unitPrice:D

    iget v2, p0, Lcom/raysns/gameapi/util/StoreItem;->_count:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_totalPrice:D

    goto :goto_0
.end method

.method public getUnitPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_unitPrice:D

    return-wide v0
.end method

.method public getUserLv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_userLv:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVIPLv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_userVIPLv:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_zoneID:Ljava/lang/String;

    return-object v0
.end method

.method public itemIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/util/StoreItem;->_itemIndex:Ljava/lang/String;

    return-object v0
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/raysns/gameapi/util/StoreItem;->_orderKey:Ljava/lang/String;

    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/raysns/gameapi/util/StoreItem;->_paymentType:Ljava/lang/String;

    return-void
.end method

.method public setPlatformUID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/raysns/gameapi/util/StoreItem;->_platformUID:Ljava/lang/String;

    return-void
.end method

.method public setUserVIPLv(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/raysns/gameapi/util/StoreItem;->_userVIPLv:Ljava/lang/String;

    return-void
.end method
