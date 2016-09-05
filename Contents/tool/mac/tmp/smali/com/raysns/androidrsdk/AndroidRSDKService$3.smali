.class Lcom/raysns/androidrsdk/AndroidRSDKService$3;
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

    iput-object p1, p0, Lcom/raysns/androidrsdk/AndroidRSDKService$3;->this$0:Lcom/raysns/androidrsdk/AndroidRSDKService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/String;)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACTION_RET_RECEIVEMESSAGE-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v0, 0x251e

    invoke-static {v0, p2}, Lcom/raysns/gameapi/GameAPI;->apiResponseToGame(ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
