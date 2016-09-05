.class Lcom/rsdk/framework/DebugWrapper$6;
.super Ljava/lang/Object;
.source "DebugWrapper.java"

# interfaces
.implements Lcom/rsdk/framework/IActivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/DebugWrapper;->setActivityCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/DebugWrapper;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/DebugWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onActivityResult invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onBackPressed invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onCreate invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onDestroy invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onNewIntent invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onPause invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onRestart()V
    .locals 2

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onRestart invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onResume invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onStart invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onStop invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$6;->this$0:Lcom/rsdk/framework/DebugWrapper;

    const-string v1, "onWindowFocusChanged invoked!"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/DebugWrapper;->LogD(Ljava/lang/String;)V

    return-void
.end method
