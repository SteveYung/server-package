.class Lcom/rsdk/framework/ShareDebug$1;
.super Ljava/lang/Object;
.source "ShareDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/ShareDebug;->share(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/ShareDebug;

.field private final synthetic val$cpInfo:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/ShareDebug;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/ShareDebug$1;->this$0:Lcom/rsdk/framework/ShareDebug;

    iput-object p2, p0, Lcom/rsdk/framework/ShareDebug$1;->val$cpInfo:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v4, p0, Lcom/rsdk/framework/ShareDebug$1;->val$cpInfo:Ljava/util/Hashtable;

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "callbackHandler"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/rsdk/framework/ShareDebug$1;->this$0:Lcom/rsdk/framework/ShareDebug;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "callbackHandler = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rsdk/framework/ShareDebug;->LogD(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/rsdk/framework/ShareDebug$1;->this$0:Lcom/rsdk/framework/ShareDebug;

    const/16 v5, 0x17

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"success\":1,\"callbackHandler\":"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/rsdk/framework/ShareDebug;->shareResult(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
