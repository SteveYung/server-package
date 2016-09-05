.class final Lcom/rsdk/Util/i;
.super Ljava/lang/Object;
.source "i.java"

# interfaces
.implements Lcom/rsdk/Util/SdkHttpListener;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/rsdk/Util/SdkHttpListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/rsdk/Util/SdkHttpListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/rsdk/Util/SdkHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rsdk/Util/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/rsdk/Util/i;->b:Lcom/rsdk/Util/SdkHttpListener;

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 1

    iget-object v0, p0, Lcom/rsdk/Util/i;->b:Lcom/rsdk/Util/SdkHttpListener;

    invoke-interface {v0}, Lcom/rsdk/Util/SdkHttpListener;->onError()V

    invoke-static {}, Lcom/rsdk/Util/g;->a()Lcom/rsdk/Util/c;

    return-void
.end method

.method public final onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/rsdk/Util/g;->c_setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rsdk/Util/i;->a:Landroid/content/Context;

    invoke-static {}, Lcom/rsdk/Util/g;->c_gethash()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/rsdk/Util/i;->b:Lcom/rsdk/Util/SdkHttpListener;

    invoke-static {v0, v1, v2}, Lcom/rsdk/Util/g;->b(Landroid/content/Context;Ljava/util/Hashtable;Lcom/rsdk/Util/SdkHttpListener;)V

    :goto_0
    invoke-static {}, Lcom/rsdk/Util/g;->a()Lcom/rsdk/Util/c;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rsdk/Util/i;->b:Lcom/rsdk/Util/SdkHttpListener;

    invoke-interface {v0, p1}, Lcom/rsdk/Util/SdkHttpListener;->onResponse(Ljava/lang/String;)V

    goto :goto_0
.end method
