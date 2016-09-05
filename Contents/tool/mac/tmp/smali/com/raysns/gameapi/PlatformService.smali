.class public abstract Lcom/raysns/gameapi/PlatformService;
.super Ljava/lang/Object;
.source "PlatformService.java"


# instance fields
.field public checkPayListener:Lcom/raysns/gameapi/util/ActionListener;

.field protected currentAct:Landroid/app/Activity;

.field public exitListener:Lcom/raysns/gameapi/util/ActionListener;

.field private global_openWebviewIfShowClose:Z

.field private global_openWebviewUrl:Ljava/lang/String;

.field public initListener:Lcom/raysns/gameapi/util/ActionListener;

.field public loginListener:Lcom/raysns/gameapi/util/ActionListener;

.field protected parent:Landroid/app/Activity;

.field public purchaseListener:Lcom/raysns/gameapi/util/ActionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/raysns/gameapi/PlatformService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/raysns/gameapi/PlatformService;->global_openWebviewIfShowClose:Z

    return v0
.end method

.method static synthetic access$1(Lcom/raysns/gameapi/PlatformService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/PlatformService;->global_openWebviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static stat_func()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public antiAddict(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public attachBaseContext(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    return-void
.end method

.method public bindAccount(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public callApiWithRetToGame(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # I
    .param p2    # Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lcom/raysns/gameapi/GameAPI;->callApiWithRetToGame(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkPay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, ""

    return-object v0
.end method

.method public checkPay(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public consumePurchase(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public contactGM(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public abstract destroy()V
.end method

.method public enterPlatform(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public facebookLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public forceUpdateApp(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public formatCppData(ILjava/lang/Object;)Lorg/json/JSONObject;
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "data"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const/4 v3, 0x5

    const-string v4, "Format json data error!"

    invoke-static {v3, v4}, Lcom/raysns/gameapi/GameAPI;->errorHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public formatDataCustomInfo(Lcom/raysns/gameapi/util/StoreItem;)Ljava/lang/String;
    .locals 7
    .param p1    # Lcom/raysns/gameapi/util/StoreItem;

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->itemIndex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, ""

    :goto_0
    const-string v4, ""

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v2, v4

    :cond_0
    const-string v3, "and"

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getThirdPay()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    if-ne v4, v5, :cond_1

    const-string v3, "3th"

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getGameID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getZoneID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getUserLv()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getUserVIPLv()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getServerTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getPlatformUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v4, Lcom/raysns/gameapi/GameAPI;->tuType:Z

    if-eqz v4, :cond_3

    const-string v4, "1"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getTotalPrice()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/raysns/gameapi/PlatformService;->getPlatformCustomChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->itemIndex()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    const-string v4, "0"

    goto :goto_1
.end method

.method public formatDataLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # I
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # Ljava/lang/String;
    .param p11    # Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nickname"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "loginTime"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sign"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userType"

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ifsendtoserver"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pidPre"

    invoke-virtual {v1, v2, p8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ext1"

    invoke-virtual {v1, v2, p9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ext2"

    invoke-virtual {v1, v2, p10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ext3"

    invoke-virtual {v1, v2, p11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public gameLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public getAndroidOSVersion(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 4
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "versionInt--->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCVersion()Ljava/lang/String;
    .locals 4

    const-string v1, "raycversion"

    invoke-static {v1}, Lcom/raysns/gameapi/GameAPI;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=============cversion is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =============="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "1"

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/raysns/gameapi/PlatformService;->currentAct:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raysns/gameapi/PlatformService;->currentAct:Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/raysns/gameapi/PlatformService;->parent:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getFriend(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "zh-Hant"

    :goto_0
    return-object v1

    :cond_1
    const-string v1, "zh-Hans"

    goto :goto_0

    :cond_2
    const-string v1, "in_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "id"

    goto :goto_0

    :cond_3
    const-string v1, "th_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "th"

    goto :goto_0

    :cond_4
    const-string v1, "en_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "en"

    goto :goto_0

    :cond_5
    const-string v1, "de_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "de"

    goto :goto_0

    :cond_6
    const-string v1, "ru_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ru"

    goto :goto_0

    :cond_7
    const-string v1, "ko_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ko"

    goto :goto_0

    :cond_8
    const-string v1, "es_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "es"

    goto :goto_0

    :cond_9
    const-string v1, "tr_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "tr"

    goto :goto_0

    :cond_a
    const-string v1, "pt_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "pt"

    goto :goto_0

    :cond_b
    const-string v1, "en"

    goto :goto_0
.end method

.method public getLocaleName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarketActionType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # Ljava/lang/String;
    .param p10    # Ljava/lang/String;
    .param p11    # Ljava/lang/String;
    .param p12    # Ljava/lang/String;
    .param p13    # Ljava/lang/String;
    .param p14    # Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "type"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "success"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uid"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pid"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uname"

    invoke-virtual {v2, v3, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pname"

    invoke-virtual {v2, v3, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "zoneid"

    invoke-virtual {v2, v3, p7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ulv"

    invoke-virtual {v2, v3, p8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "viplv"

    invoke-virtual {v2, v3, p9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "price"

    invoke-virtual {v2, v3, p10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "productid"

    invoke-virtual {v2, v3, p11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "productname"

    move-object/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "goldnum"

    move-object/from16 v0, p13

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "extra"

    move-object/from16 v0, p14

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v1, v2

    goto :goto_0
.end method

.method public getMyInfo(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/raysns/gameapi/PlatformService;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/raysns/gameapi/PlatformService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v2, ""

    goto :goto_0
.end method

.method public getPaymentURL()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPlatformCustomChannelId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPlatformPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getRayNoviceGuideEnd()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getRayNoviceGuideStart()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getRayUserLvUp(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public getTotalPrice(Lcom/raysns/gameapi/util/StoreItem;)D
    .locals 2
    .param p1    # Lcom/raysns/gameapi/util/StoreItem;

    invoke-virtual {p1}, Lcom/raysns/gameapi/util/StoreItem;->getTotalPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public inviteFriend(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public inviteFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lorg/json/JSONObject;

    return-void
.end method

.method public login(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public loginWithMultiChannel(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public logout(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    return-void
.end method

.method public onExit(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const/4 v1, 0x0

    const/16 v0, 0x270e

    invoke-static {v0, v1, v1}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V

    return-object v1
.end method

.method public onExitDown(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGameNewIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const-string v0, ""

    return-object v0
.end method

.method public onGamePause()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onGameRestart()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onGameResume()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onGameStart()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onGameStop()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onOperateToolbar(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    return-void
.end method

.method public onServerLoginReturn(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public onSettingWindowClose()V
    .locals 0

    return-void
.end method

.method public onSettingWindowOpen()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public openURLWithBrowser(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 5
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const/4 v4, 0x0

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v4

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/raysns/gameapi/PlatformService;->parent:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public openUrlInApp(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const/4 v0, 0x1

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raysns/gameapi/PlatformService;->global_openWebviewUrl:Ljava/lang/String;

    const-string v1, "showclose"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/raysns/gameapi/PlatformService;->global_openWebviewIfShowClose:Z

    invoke-virtual {p0}, Lcom/raysns/gameapi/PlatformService;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/raysns/gameapi/PlatformService$1;

    invoke-direct {v1, p0}, Lcom/raysns/gameapi/PlatformService$1;-><init>(Lcom/raysns/gameapi/PlatformService;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postFeed(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public postFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # I

    return-void
.end method

.method public abstract purchase(Lcom/raysns/gameapi/util/StoreItem;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
.end method

.method public purchaseCallback(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # I
    .param p2    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public quickLogin(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public quickLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public removeWebView()V
    .locals 0

    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    iput-object p1, p0, Lcom/raysns/gameapi/PlatformService;->currentAct:Landroid/app/Activity;

    return-void
.end method

.method public setLanguage(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    return-void
.end method

.method public abstract setup(Landroid/app/Activity;Lcom/raysns/gameapi/util/ActionListener;)V
.end method

.method public showCustomPanel(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public showFloatBall(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public showLine(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public showLoginCallback(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;

    const-string v0, ""

    return-object v0
.end method

.method public showOfferWall(Lorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
    .param p2    # Lcom/raysns/gameapi/util/ActionListener;

    const-string v0, ""

    return-object v0
.end method

.method public updateUserInfo(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;

    return-void
.end method
