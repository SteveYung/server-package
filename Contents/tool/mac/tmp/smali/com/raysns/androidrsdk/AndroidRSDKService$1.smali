.class Lcom/raysns/androidrsdk/AndroidRSDKService$1;
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

    iput-object p1, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;)V
    .locals 24
    .param p1    # I
    .param p2    # Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # invokes: Lcom/raysns/androidrsdk/AndroidRSDKService;->setInitsuccess()V
    invoke-static {v2}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$0(Lcom/raysns/androidrsdk/AndroidRSDKService;)V

    goto :goto_0

    :pswitch_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "-------------login success--------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/java/RSDKUser;->getInstance()Lcom/rsdk/framework/java/RSDKUser;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->_currentLoginPluginId:Ljava/lang/String;
    invoke-static {v3}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$1(Lcom/raysns/androidrsdk/AndroidRSDKService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rsdk/framework/java/RSDKUser;->getUserID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/rsdk/framework/java/RSDKUser;->getInstance()Lcom/rsdk/framework/java/RSDKUser;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->_currentLoginPluginId:Ljava/lang/String;
    invoke-static {v3}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$1(Lcom/raysns/androidrsdk/AndroidRSDKService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rsdk/framework/java/RSDKUser;->getUserIDPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/rsdk/framework/java/RSDKUser;->getInstance()Lcom/rsdk/framework/java/RSDKUser;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->_currentLoginPluginId:Ljava/lang/String;
    invoke-static {v3}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$1(Lcom/raysns/androidrsdk/AndroidRSDKService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rsdk/framework/java/RSDKUser;->getLoginUserType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$2(Ljava/lang/String;)V

    const-string v11, ""

    const-string v2, "2"

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->userType:Ljava/lang/String;
    invoke-static {}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/rsdk/framework/java/RSDKUser;->getInstance()Lcom/rsdk/framework/java/RSDKUser;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->_currentLoginPluginId:Ljava/lang/String;
    invoke-static {v3}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$1(Lcom/raysns/androidrsdk/AndroidRSDKService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getFacebookUserID"

    invoke-virtual {v2, v3, v5}, Lcom/rsdk/framework/java/RSDKUser;->callStringFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_0
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "send to game fbuid-->"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->userType:Ljava/lang/String;
    invoke-static {}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$3()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    invoke-virtual {v12}, Lcom/raysns/androidrsdk/AndroidRSDKService;->getFbUserEmail()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    invoke-virtual {v13}, Lcom/raysns/androidrsdk/AndroidRSDKService;->getInviterUserId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v2 .. v13}, Lcom/raysns/androidrsdk/AndroidRSDKService;->formatDataLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Lcom/raysns/androidrsdk/AndroidRSDKService;->formatCppData(ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v21

    const/16 v2, 0xd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    iget-object v3, v3, Lcom/raysns/androidrsdk/AndroidRSDKService;->loginListener:Lcom/raysns/gameapi/util/ActionListener;

    move-object/from16 v0, v21

    invoke-static {v2, v0, v3}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V

    invoke-static {}, Lcom/rsdk/framework/java/RSDKUser;->getInstance()Lcom/rsdk/framework/java/RSDKUser;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->_currentLoginPluginId:Ljava/lang/String;
    invoke-static {v3}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$1(Lcom/raysns/androidrsdk/AndroidRSDKService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "showToolBar"

    invoke-virtual {v2, v3, v5}, Lcom/rsdk/framework/java/RSDKUser;->isFunctionSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v23, Lcom/rsdk/framework/java/RSDKParam;

    sget-object v2, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomLeft:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    invoke-virtual {v2}, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->getPlace()I

    move-result v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/rsdk/framework/java/RSDKParam;-><init>(I)V

    invoke-static {}, Lcom/rsdk/framework/java/RSDKUser;->getInstance()Lcom/rsdk/framework/java/RSDKUser;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->_currentLoginPluginId:Ljava/lang/String;
    invoke-static {v3}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$1(Lcom/raysns/androidrsdk/AndroidRSDKService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "showToolBar"

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/rsdk/framework/java/RSDKParam;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    invoke-virtual {v2, v3, v5, v6}, Lcom/rsdk/framework/java/RSDKUser;->callFunction(Ljava/lang/String;Ljava/lang/String;[Lcom/rsdk/framework/java/RSDKParam;)V

    :cond_1
    const/16 v17, 0x0

    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "token"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$4(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    move-object/from16 v17, v18

    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const-string v2, ""

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->userType:Ljava/lang/String;
    invoke-static {}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "4"

    invoke-static {v2}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$2(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "-------------login time out----------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "-------------login no need----------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "-------------login  cancel----------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/raysns/androidrsdk/AndroidRSDKService;->formatCppData(ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v19

    const/16 v2, 0xd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    iget-object v3, v3, Lcom/raysns/androidrsdk/AndroidRSDKService;->loginListener:Lcom/raysns/gameapi/util/ActionListener;

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "-------------login failed----------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/raysns/androidrsdk/AndroidRSDKService;->formatCppData(ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v14

    const/16 v2, 0xd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/raysns/androidrsdk/AndroidRSDKService$1;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    iget-object v3, v3, Lcom/raysns/androidrsdk/AndroidRSDKService;->loginListener:Lcom/raysns/gameapi/util/ActionListener;

    invoke-static {v2, v14, v3}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V

    goto/16 :goto_0

    :pswitch_7
    const/16 v2, 0x2335

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILjava/lang/String;)V

    const-string v2, "2"

    # getter for: Lcom/raysns/androidrsdk/AndroidRSDKService;->userType:Ljava/lang/String;
    invoke-static {}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/rsdk/framework/java/RSDKShare;->getInstance()Lcom/rsdk/framework/java/RSDKShare;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rsdk/framework/java/RSDKShare;->getPluginId()Ljava/util/ArrayList;

    move-result-object v22

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "shareIds-->"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const-string v2, ""

    invoke-static {v2}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$2(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v3, "100105"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/rsdk/framework/java/RSDKShare;->getInstance()Lcom/rsdk/framework/java/RSDKShare;

    move-result-object v3

    const-string v5, "accountSwitch"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v5}, Lcom/rsdk/framework/java/RSDKShare;->callFunction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bindfbuserinfo--->"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v2, 0x16

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/raysns/gameapi/GameAPI;->apiResponse(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-static/range {p2 .. p2}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$5(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v15

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
