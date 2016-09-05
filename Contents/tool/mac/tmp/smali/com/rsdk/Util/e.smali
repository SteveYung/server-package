.class final Lcom/rsdk/Util/e;
.super Ljava/lang/Thread;
.source "e.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Lcom/rsdk/Util/c;


# direct methods
.method constructor <init>(Lcom/rsdk/Util/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/rsdk/Util/c;
    .param p2    # Landroid/content/Context;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/rsdk/Util/e;->c:Lcom/rsdk/Util/c;

    iput-object p2, p0, Lcom/rsdk/Util/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/rsdk/Util/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/rsdk/Util/e;->c:Lcom/rsdk/Util/c;

    invoke-static {v3}, Lcom/rsdk/Util/c;->a(Lcom/rsdk/Util/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/rsdk/Util/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/rsdk/Util/e;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/rsdk/Util/e;->c:Lcom/rsdk/Util/c;

    invoke-static {v5}, Lcom/rsdk/Util/c;->b(Lcom/rsdk/Util/c;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/rsdk/Util/e;->c:Lcom/rsdk/Util/c;

    invoke-static {v6}, Lcom/rsdk/Util/c;->c(Lcom/rsdk/Util/c;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/rsdk/Util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/rsdk/Util/c;->a()V

    if-eqz v2, :cond_3

    move-object v0, v2

    check-cast v0, Lorg/apache/http/HttpResponse;

    move-object v3, v0

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/rsdk/Util/e;->c:Lcom/rsdk/Util/c;

    invoke-static {v3}, Lcom/rsdk/Util/c;->d(Lcom/rsdk/Util/c;)Lcom/rsdk/Util/SdkHttpListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/rsdk/Util/SdkHttpListener;->onError()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/rsdk/Util/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/rsdk/Util/e;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/rsdk/Util/e;->c:Lcom/rsdk/Util/c;

    invoke-static {v5}, Lcom/rsdk/Util/c;->c(Lcom/rsdk/Util/c;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/rsdk/Util/b;->a(Landroid/content/Context;Ljava/lang/String;I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_0

    :cond_2
    check-cast v2, Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/io/InputStream;

    invoke-static {v2}, Lcom/rsdk/Util/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/rsdk/Util/e;->c:Lcom/rsdk/Util/c;

    invoke-static {v3}, Lcom/rsdk/Util/c;->d(Lcom/rsdk/Util/c;)Lcom/rsdk/Util/SdkHttpListener;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/rsdk/Util/SdkHttpListener;->onResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/rsdk/Util/c;->a()V

    iget-object v3, p0, Lcom/rsdk/Util/e;->c:Lcom/rsdk/Util/c;

    invoke-static {v3}, Lcom/rsdk/Util/c;->d(Lcom/rsdk/Util/c;)Lcom/rsdk/Util/SdkHttpListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/rsdk/Util/SdkHttpListener;->onError()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/rsdk/Util/e;->c:Lcom/rsdk/Util/c;

    invoke-static {v3}, Lcom/rsdk/Util/c;->d(Lcom/rsdk/Util/c;)Lcom/rsdk/Util/SdkHttpListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/rsdk/Util/SdkHttpListener;->onError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
