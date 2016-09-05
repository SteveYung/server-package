.class Lcom/rsdk/framework/DebugWrapper$1;
.super Ljava/lang/Object;
.source "DebugWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/DebugWrapper;->initSDK(Landroid/content/Context;Ljava/util/Hashtable;Ljava/lang/Object;Lcom/rsdk/framework/ILoginCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/DebugWrapper;

.field private final synthetic val$listener:Lcom/rsdk/framework/ILoginCallback;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/DebugWrapper;Lcom/rsdk/framework/ILoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/DebugWrapper$1;->this$0:Lcom/rsdk/framework/DebugWrapper;

    iput-object p2, p0, Lcom/rsdk/framework/DebugWrapper$1;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$1;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rsdk/framework/DebugWrapper$1;->val$listener:Lcom/rsdk/framework/ILoginCallback;

    const/4 v1, 0x0

    const-string v2, "init success"

    invoke-interface {v0, v1, v2}, Lcom/rsdk/framework/ILoginCallback;->onSuccessed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
