.class Lcom/raysns/androidrsdk/AndroidRSDKService$5;
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

    iput-object p1, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$5;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$5;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    # invokes: Lcom/raysns/androidrsdk/AndroidRSDKService;->setInitsuccess()V
    invoke-static {v0}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$0(Lcom/raysns/androidrsdk/AndroidRSDKService;)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1a

    invoke-static {v0, p2}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1d

    invoke-static {v0, p2}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x2339

    invoke-static {v0, p2}, Lcom/raysns/gameapi/GameAPI;->outputResponse(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$5;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$7(Lcom/raysns/androidrsdk/AndroidRSDKService;Z)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$5;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    invoke-static {v0, p2}, Lcom/raysns/androidrsdk/AndroidRSDKService;->access$8(Lcom/raysns/androidrsdk/AndroidRSDKService;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1a -> :sswitch_1
        0x1d -> :sswitch_2
        0x1e -> :sswitch_5
    .end sparse-switch
.end method
