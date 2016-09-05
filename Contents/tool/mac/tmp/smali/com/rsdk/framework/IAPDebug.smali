.class public Lcom/rsdk/framework/IAPDebug;
.super Ljava/lang/Object;
.source "IAPDebug.java"

# interfaces
.implements Lcom/rsdk/framework/InterfaceIAP;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IAPDebug"


# instance fields
.field private mAdapter:Lcom/rsdk/framework/InterfaceIAP;

.field private mContext:Landroid/content/Context;

.field private mOrderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rsdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    iput-object p0, p0, Lcom/rsdk/framework/IAPDebug;->mAdapter:Lcom/rsdk/framework/InterfaceIAP;

    invoke-static {}, Lcom/rsdk/framework/Wrapper;->getDeveloperInfo()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rsdk/framework/IAPDebug;->configDeveloperInfo(Ljava/util/Hashtable;)V

    return-void
.end method

.method static synthetic access$0(Lcom/rsdk/framework/IAPDebug;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/rsdk/framework/IAPDebug;Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rsdk/framework/IAPDebug;->getPayOrderId(Ljava/util/Hashtable;)V

    return-void
.end method

.method static synthetic access$2(Lcom/rsdk/framework/IAPDebug;)Lcom/rsdk/framework/InterfaceIAP;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug;->mAdapter:Lcom/rsdk/framework/InterfaceIAP;

    return-object v0
.end method

.method private configDeveloperInfo(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configDeveloperInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")invoked!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rsdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    move-object v0, p1

    new-instance v1, Lcom/rsdk/framework/IAPDebug$2;

    invoke-direct {v1, p0, v0}, Lcom/rsdk/framework/IAPDebug$2;-><init>(Lcom/rsdk/framework/IAPDebug;Ljava/util/Hashtable;)V

    invoke-static {v1}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getPayOrderId(Ljava/util/Hashtable;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v14, "Product_Id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v14, "Product_Name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v14, "Product_Price"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v14, "Product_Count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v14, "Role_Id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v14, "Role_Name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "Server_Id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v14, "Product_Type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v14, "Coin_Num"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v14, "EXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    if-eqz v13, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const-string v14, "something is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/rsdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    const/4 v14, 0x4

    const-string v15, "something is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/rsdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v14, 0x1

    if-ge v1, v14, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const v14, 0x3c23d70a

    cmpg-float v14, v7, v14

    if-gez v14, :cond_4

    const v7, 0x3c23d70a

    :cond_4
    int-to-float v14, v1

    mul-float/2addr v7, v14

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v14, "0.00"

    invoke-direct {v2, v14}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v14, v7

    invoke-virtual {v2, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v14, "Product_Price"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "Product_Count"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "EXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/rsdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private payInSDK(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rsdk/framework/DebugWrapper;->getSDKServerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rsdk/framework/Wrapper;->getSDKParm_r_nofify_url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pay params:"

    invoke-virtual {p0, v2}, Lcom/rsdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    new-instance v2, Lcom/rsdk/framework/IAPDebug$3;

    invoke-direct {v2, p0}, Lcom/rsdk/framework/IAPDebug$3;-><init>(Lcom/rsdk/framework/IAPDebug;)V

    invoke-static {v2}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "payInSDK error"

    invoke-virtual {p0, v2, v0}, Lcom/rsdk/framework/IAPDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x1

    const-string v3, "payInSDK error"

    invoke-virtual {p0, v2, v3}, Lcom/rsdk/framework/IAPDebug;->payResult(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected LogD(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    :try_start_0
    const-string v1, "IAPDebug"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LogD error"

    invoke-virtual {p0, v1, v0}, Lcom/rsdk/framework/IAPDebug;->LogE(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Exception;

    if-nez p2, :cond_0

    const-string v0, "IAPDebug"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "IAPDebug"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginId()Ljava/lang/String;
    .locals 1

    const-string v0, "getPluginId() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getPluginId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getPluginVersion() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getSDKVersion() invoked!"

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rsdk/framework/DebugWrapper;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public payForProduct(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "payForProduct("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")invoked!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rsdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    move-object v0, p1

    new-instance v1, Lcom/rsdk/framework/IAPDebug$1;

    invoke-direct {v1, p0, v0}, Lcom/rsdk/framework/IAPDebug$1;-><init>(Lcom/rsdk/framework/IAPDebug;Ljava/util/Hashtable;)V

    invoke-static {v1}, Lcom/rsdk/framework/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public payResult(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "payResult( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") invoked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rsdk/framework/IAPDebug;->mAdapter:Lcom/rsdk/framework/InterfaceIAP;

    invoke-static {v0, p1, p2}, Lcom/rsdk/framework/IAPWrapper;->onPayResult(Lcom/rsdk/framework/InterfaceIAP;ILjava/lang/String;)V

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDebugMode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") invoked! it is not used."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rsdk/framework/IAPDebug;->LogD(Ljava/lang/String;)V

    return-void
.end method
