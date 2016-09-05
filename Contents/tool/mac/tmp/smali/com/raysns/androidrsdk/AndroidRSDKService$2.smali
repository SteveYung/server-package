.class Lcom/raysns/androidrsdk/AndroidRSDKService$2;
.super Ljava/lang/Object;
.source "AndroidRSDKService.java"

# interfaces
.implements Lcom/rsdk/framework/java/RSDKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raysns/androidrsdk/AndroidRSDKService;->setRSDKListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;


# direct methods
.method constructor <init>(Lcom/raysns/androidrsdk/AndroidRSDKService;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$2;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;)V
    .locals 7
    .param p1    # I
    .param p2    # Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/rsdk/framework/java/RSDKIAP;->getInstance()Lcom/rsdk/framework/java/RSDKIAP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rsdk/framework/java/RSDKIAP;->resetPayState()V

    return-void

    :pswitch_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "------------------payment success------------------"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, ""

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "game_order_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "platform_order_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v1

    :cond_1
    iget-object v4, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$2;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->_currentStoreItem:Lcom/raysns/gameapi/util/StoreItem;
    invoke-static {v4}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$6(Lcom/raysns/androidrsdk/AndroidRSDKService;)Lcom/raysns/gameapi/util/StoreItem;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/raysns/gameapi/util/StoreItem;->setOrder(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "---game-order-id--->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$2;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    iget-object v5, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$2;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->_currentStoreItem:Lcom/raysns/gameapi/util/StoreItem;
    invoke-static {v5}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$6(Lcom/raysns/androidrsdk/AndroidRSDKService;)Lcom/raysns/gameapi/util/StoreItem;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/raysns/androidrsdk/AndroidRSDKService;->purchaseEvent(Lcom/raysns/gameapi/util/StoreItem;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
