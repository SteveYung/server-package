.class Lcom/rsdk/Util/c$1;
.super Ljava/lang/Object;
.source "c.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/Util/c;->a(Lcom/rsdk/Util/SdkHttpListener;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/Util/c;


# direct methods
.method constructor <init>(Lcom/rsdk/Util/c;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/Util/c$1;->this$0:Lcom/rsdk/Util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/rsdk/Util/c;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rsdk/Util/c$1;->this$0:Lcom/rsdk/Util/c;

    # getter for: Lcom/rsdk/Util/c;->d:Landroid/content/Context;
    invoke-static {v0}, Lcom/rsdk/Util/c;->access$0(Lcom/rsdk/Util/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Loading..."

    invoke-static {v0, v1, v2}, Lcom/rsdk/Util/c;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/rsdk/Util/c;->a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method
