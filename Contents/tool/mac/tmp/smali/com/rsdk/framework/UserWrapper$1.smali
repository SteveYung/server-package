.class Lcom/rsdk/framework/UserWrapper$1;
.super Ljava/lang/Object;
.source "UserWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserWrapper;->onActionResult(Lcom/rsdk/framework/InterfaceUser;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$curAdapter:Lcom/rsdk/framework/InterfaceUser;

.field private final synthetic val$curMsg:Ljava/lang/String;

.field private final synthetic val$curRet:I


# direct methods
.method constructor <init>(Lcom/rsdk/framework/InterfaceUser;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/UserWrapper$1;->val$curAdapter:Lcom/rsdk/framework/InterfaceUser;

    iput-object p2, p0, Lcom/rsdk/framework/UserWrapper$1;->val$curMsg:Ljava/lang/String;

    iput p3, p0, Lcom/rsdk/framework/UserWrapper$1;->val$curRet:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/rsdk/framework/UserWrapper$1;->val$curAdapter:Lcom/rsdk/framework/InterfaceUser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userwrapper onActionResult callback"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rsdk/framework/UserWrapper$1;->val$curMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v1, p0, Lcom/rsdk/framework/UserWrapper$1;->val$curRet:I

    iget-object v2, p0, Lcom/rsdk/framework/UserWrapper$1;->val$curMsg:Ljava/lang/String;

    # invokes: Lcom/rsdk/framework/UserWrapper;->nativeOnUserActionResult(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/rsdk/framework/UserWrapper;->access$0(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
