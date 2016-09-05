.class Lcom/rsdk/framework/UserDebug$2;
.super Ljava/lang/Object;
.source "UserDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserDebug;->configDeveloperInfo(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/UserDebug;

.field private final synthetic val$curCPInfo:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/UserDebug;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug$2;->this$0:Lcom/rsdk/framework/UserDebug;

    iput-object p2, p0, Lcom/rsdk/framework/UserDebug$2;->val$curCPInfo:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rsdk/framework/UserDebug$2;)Lcom/rsdk/framework/UserDebug;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug$2;->this$0:Lcom/rsdk/framework/UserDebug;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/rsdk/framework/UserDebug$2$1;

    invoke-direct {v0, p0}, Lcom/rsdk/framework/UserDebug$2$1;-><init>(Lcom/rsdk/framework/UserDebug$2;)V

    invoke-static {}, Lcom/rsdk/framework/DebugWrapper;->getInstance()Lcom/rsdk/framework/DebugWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/rsdk/framework/UserDebug$2;->this$0:Lcom/rsdk/framework/UserDebug;

    # getter for: Lcom/rsdk/framework/UserDebug;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/rsdk/framework/UserDebug;->access$0(Lcom/rsdk/framework/UserDebug;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/rsdk/framework/UserDebug$2;->val$curCPInfo:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/rsdk/framework/UserDebug$2;->this$0:Lcom/rsdk/framework/UserDebug;

    # getter for: Lcom/rsdk/framework/UserDebug;->mAdapter:Lcom/rsdk/framework/InterfaceUser;
    invoke-static {v4}, Lcom/rsdk/framework/UserDebug;->access$1(Lcom/rsdk/framework/UserDebug;)Lcom/rsdk/framework/InterfaceUser;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/rsdk/framework/DebugWrapper;->initSDK(Landroid/content/Context;Ljava/util/Hashtable;Ljava/lang/Object;Lcom/rsdk/framework/ILoginCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rsdk/framework/UserDebug$2;->this$0:Lcom/rsdk/framework/UserDebug;

    const/4 v2, 0x1

    const-string v3, "initSDK false"

    invoke-virtual {v1, v2, v3}, Lcom/rsdk/framework/UserDebug;->actionResult(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
