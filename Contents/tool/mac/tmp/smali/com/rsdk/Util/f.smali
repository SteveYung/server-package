.class final Lcom/rsdk/Util/f;
.super Ljava/lang/Object;
.source "f.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/rsdk/Util/c;->b()Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/rsdk/Util/c;->b()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/rsdk/Util/c;->disposeprogressdialog(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
