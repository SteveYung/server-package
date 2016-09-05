.class Lcom/raysns/androidrsdk/AndroidRSDKService$4;
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

    iput-object p1, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$4;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$4;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # invokes: Lcom/raysns/androidrsdk/AndroidRSDKService;->setInitsuccess()V
    invoke-static {v0}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$0(Lcom/raysns/androidrsdk/AndroidRSDKService;)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x17

    invoke-static {v0, p2}, Lcom/raysns/gameapi/GameAPI;->apiResponse(ILjava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method
