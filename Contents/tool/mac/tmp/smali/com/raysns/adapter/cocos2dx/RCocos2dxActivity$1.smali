.class Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity$1;
.super Ljava/lang/Object;
.source "RCocos2dxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;


# direct methods
.method constructor <init>(Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity$1;->this$0:Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x232b

    invoke-static {v0, v1, v1}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILorg/json/JSONObject;Lcom/raysns/gameapi/util/ActionListener;)V

    iget-object v0, p0, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity$1;->this$0:Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;->access$0(Lcom/raysns/adapter/cocos2dx/RCocos2dxActivity;Z)V

    return-void
.end method
