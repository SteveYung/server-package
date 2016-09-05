.class public Lcom/raysns/gameapi/GameAPI$RRunnable;
.super Ljava/lang/Object;
.source "GameAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raysns/gameapi/GameAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RRunnable"
.end annotation


# instance fields
.field public _actionType:I

.field public _dataJSON:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/raysns/gameapi/GameAPI$RRunnable;->_actionType:I

    iput-object p2, p0, Lcom/raysns/gameapi/GameAPI$RRunnable;->_dataJSON:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget v1, p0, Lcom/raysns/gameapi/GameAPI$RRunnable;->_actionType:I

    iget-object v2, p0, Lcom/raysns/gameapi/GameAPI$RRunnable;->_dataJSON:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/raysns/gameapi/GameAPI;->apiResponseToGame(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "~~~~~~~~~~~~~~"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
