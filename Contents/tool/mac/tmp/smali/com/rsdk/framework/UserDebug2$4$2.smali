.class Lcom/rsdk/framework/UserDebug2$4$2;
.super Ljava/lang/Object;
.source "UserDebug2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserDebug2$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rsdk/framework/UserDebug2$4;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/UserDebug2$4;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug2$4$2;->this$1:Lcom/rsdk/framework/UserDebug2$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug2$4$2;->this$1:Lcom/rsdk/framework/UserDebug2$4;

    # getter for: Lcom/rsdk/framework/UserDebug2$4;->this$0:Lcom/rsdk/framework/UserDebug2;
    invoke-static {v0}, Lcom/rsdk/framework/UserDebug2$4;->access$0(Lcom/rsdk/framework/UserDebug2$4;)Lcom/rsdk/framework/UserDebug2;

    move-result-object v0

    const-string v1, "exit cancel"

    invoke-virtual {v0, v1}, Lcom/rsdk/framework/UserDebug2;->LogD(Ljava/lang/String;)V

    return-void
.end method
