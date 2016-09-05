.class Lcom/rsdk/framework/UserDebug2$3;
.super Ljava/lang/Object;
.source "UserDebug2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/UserDebug2;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/UserDebug2;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/UserDebug2;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/UserDebug2$3;->this$0:Lcom/rsdk/framework/UserDebug2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/rsdk/framework/UserDebug2$3;->this$0:Lcom/rsdk/framework/UserDebug2;

    const/4 v1, 0x7

    const-string v2, "\u767b\u51fa\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Lcom/rsdk/framework/UserDebug2;->actionResult(ILjava/lang/String;)V

    return-void
.end method
