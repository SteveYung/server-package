.class final Lcom/rsdk/Util/k;
.super Ljava/lang/Object;
.source "k.java"

# interfaces
.implements Lcom/rsdk/Util/SdkHttpListener;


# instance fields
.field final a:Lcom/rsdk/Util/SdkHttpListener;

.field final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/rsdk/Util/SdkHttpListener;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/rsdk/Util/SdkHttpListener;
    .param p2    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/rsdk/Util/k;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/rsdk/Util/k;->a:Lcom/rsdk/Util/SdkHttpListener;

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 1

    iget-object v0, p0, Lcom/rsdk/Util/k;->a:Lcom/rsdk/Util/SdkHttpListener;

    invoke-interface {v0}, Lcom/rsdk/Util/SdkHttpListener;->onError()V

    invoke-static {}, Lcom/rsdk/Util/g;->a()Lcom/rsdk/Util/c;

    return-void
.end method

.method public final onResponse(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v0, "onResponse"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "off"

    invoke-static {v0}, Lcom/rsdk/Util/g;->c_setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rsdk/Util/k;->a:Lcom/rsdk/Util/SdkHttpListener;

    invoke-interface {v0}, Lcom/rsdk/Util/SdkHttpListener;->onError()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/rsdk/Util/g;->a()Lcom/rsdk/Util/c;

    return-void

    :cond_1
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    invoke-static {v0}, Lcom/rsdk/Util/g;->c_setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rsdk/Util/k;->b:Landroid/content/Context;

    invoke-static {}, Lcom/rsdk/Util/g;->c_gethash()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/rsdk/Util/k;->a:Lcom/rsdk/Util/SdkHttpListener;

    invoke-static {v0, v1, v2}, Lcom/rsdk/Util/g;->b(Landroid/content/Context;Ljava/util/Hashtable;Lcom/rsdk/Util/SdkHttpListener;)V

    goto :goto_0
.end method
