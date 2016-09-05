.class public Lcom/rsdk/framework/LoginCallbackDataInfo;
.super Ljava/lang/Object;
.source "LoginCallbackDataInfo.java"


# instance fields
.field private _strData:Ljava/lang/String;

.field public custom_data:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public pid_prefix:Ljava/lang/String;

.field public server_ext_param:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public token_expire:Ljava/lang/String;

.field public token_refresh:Ljava/lang/String;

.field public user_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->pid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->pid_prefix:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->nickname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->token_expire:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->token_refresh:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->server_ext_param:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->source:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->user_type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->custom_data:Ljava/lang/String;

    return-void
.end method

.method public static formatData(Lorg/json/JSONObject;)Lcom/rsdk/framework/LoginCallbackDataInfo;
    .locals 2
    .param p0    # Lorg/json/JSONObject;

    new-instance v0, Lcom/rsdk/framework/LoginCallbackDataInfo;

    invoke-direct {v0}, Lcom/rsdk/framework/LoginCallbackDataInfo;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->_strData:Ljava/lang/String;

    const-string v1, "pid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->pid:Ljava/lang/String;

    const-string v1, "pid_prefix"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->pid_prefix:Ljava/lang/String;

    const-string v1, "nickname"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->nickname:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->token:Ljava/lang/String;

    const-string v1, "token_expire"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->token_expire:Ljava/lang/String;

    const-string v1, "token_refresh"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->token_refresh:Ljava/lang/String;

    const-string v1, "server_ext_param"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->server_ext_param:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->source:Ljava/lang/String;

    const-string v1, "user_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->user_type:Ljava/lang/String;

    const-string v1, "custom_data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rsdk/framework/LoginCallbackDataInfo;->custom_data:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/LoginCallbackDataInfo;->_strData:Ljava/lang/String;

    return-object v0
.end method
