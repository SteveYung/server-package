.class Lcom/rsdk/framework/UserDebug$4;
.super Ljava/lang/Object;
.source "UserDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserDebug;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/UserDebug;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/UserDebug;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug$4;->this$0:Lcom/rsdk/framework/UserDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rsdk/framework/UserDebug$4;)Lcom/rsdk/framework/UserDebug;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug$4;->this$0:Lcom/rsdk/framework/UserDebug;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rsdk/framework/UserDebug$4;->this$0:Lcom/rsdk/framework/UserDebug;

    # getter for: Lcom/rsdk/framework/UserDebug;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/rsdk/framework/UserDebug;->access$0(Lcom/rsdk/framework/UserDebug;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v1

    const-string v2, "plugin_exit_title"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3}, Lcom/rsdk/framework/DebugWrapper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v1

    const-string v2, "plugin_exit"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3}, Lcom/rsdk/framework/DebugWrapper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/rsdk/framework/UserDebug$4$1;

    invoke-direct {v2, p0}, Lcom/rsdk/framework/UserDebug$4$1;-><init>(Lcom/rsdk/framework/UserDebug$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v1

    const-string v2, "plugin_cancel"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3}, Lcom/rsdk/framework/DebugWrapper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/rsdk/framework/UserDebug$4$2;

    invoke-direct {v2, p0}, Lcom/rsdk/framework/UserDebug$4$2;-><init>(Lcom/rsdk/framework/UserDebug$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
