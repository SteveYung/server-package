.class Lcom/rsdk/framework/UserDebug$4$1;
.super Ljava/lang/Object;
.source "UserDebug.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserDebug$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rsdk/framework/UserDebug$4;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/UserDebug$4;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug$4$1;->this$1:Lcom/rsdk/framework/UserDebug$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
