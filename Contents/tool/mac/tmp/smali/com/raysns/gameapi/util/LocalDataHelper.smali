.class public Lcom/raysns/gameapi/util/LocalDataHelper;
.super Ljava/lang/Object;
.source "LocalDataHelper.java"


# static fields
.field private static _instance:Lcom/raysns/gameapi/util/LocalDataHelper;


# instance fields
.field private final SHARED_PREFRENCE_KEY:Ljava/lang/String;

.field private cache:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RayLocalData"

    iput-object v0, p0, Lcom/raysns/gameapi/util/LocalDataHelper;->SHARED_PREFRENCE_KEY:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/raysns/gameapi/util/LocalDataHelper;->cache:Lorg/json/JSONObject;

    return-void
.end method

.method private formatDataToLocalString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, ""

    goto :goto_0
.end method

.method private formatLocalStringToData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static instance()Lcom/raysns/gameapi/util/LocalDataHelper;
    .locals 1

    sget-object v0, Lcom/raysns/gameapi/util/LocalDataHelper;->_instance:Lcom/raysns/gameapi/util/LocalDataHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/raysns/gameapi/util/LocalDataHelper;

    invoke-direct {v0}, Lcom/raysns/gameapi/util/LocalDataHelper;-><init>()V

    sput-object v0, Lcom/raysns/gameapi/util/LocalDataHelper;->_instance:Lcom/raysns/gameapi/util/LocalDataHelper;

    :cond_0
    sget-object v0, Lcom/raysns/gameapi/util/LocalDataHelper;->_instance:Lcom/raysns/gameapi/util/LocalDataHelper;

    return-object v0
.end method


# virtual methods
.method public deleteData(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Context;

    iget-object v2, p0, Lcom/raysns/gameapi/util/LocalDataHelper;->cache:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RayLocalData"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Context;

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/raysns/gameapi/util/LocalDataHelper;->cache:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RayLocalData"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/raysns/gameapi/util/LocalDataHelper;->formatLocalStringToData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/content/Context;

    :try_start_0
    iget-object v2, p0, Lcom/raysns/gameapi/util/LocalDataHelper;->cache:Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RayLocalData"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/raysns/gameapi/util/LocalDataHelper;->formatDataToLocalString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
