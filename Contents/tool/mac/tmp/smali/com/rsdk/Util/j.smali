.class final Lcom/rsdk/Util/j;
.super Ljava/lang/Object;
.source "j.java"

# interfaces
.implements Lcom/rsdk/Util/SdkHttpListener;


# instance fields
.field final a:Lcom/rsdk/Util/SdkHttpListener;


# direct methods
.method constructor <init>(Lcom/rsdk/Util/SdkHttpListener;)V
    .locals 0
    .param p1    # Lcom/rsdk/Util/SdkHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rsdk/Util/j;->a:Lcom/rsdk/Util/SdkHttpListener;

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 1

    iget-object v0, p0, Lcom/rsdk/Util/j;->a:Lcom/rsdk/Util/SdkHttpListener;

    invoke-interface {v0}, Lcom/rsdk/Util/SdkHttpListener;->onError()V

    invoke-static {}, Lcom/rsdk/Util/g;->a()Lcom/rsdk/Util/c;

    return-void
.end method

.method public final onResponse(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/rsdk/Util/j;->a:Lcom/rsdk/Util/SdkHttpListener;

    invoke-interface {v0, p1}, Lcom/rsdk/Util/SdkHttpListener;->onResponse(Ljava/lang/String;)V

    invoke-static {}, Lcom/rsdk/Util/g;->a()Lcom/rsdk/Util/c;

    return-void
.end method
