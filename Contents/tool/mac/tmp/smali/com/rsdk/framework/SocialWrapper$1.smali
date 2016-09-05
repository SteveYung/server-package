.class Lcom/rsdk/framework/SocialWrapper$1;
.super Ljava/lang/Object;
.source "SocialWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/SocialWrapper;->onSocialResult(Lcom/rsdk/framework/InterfaceSocial;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$curAdapter:Lcom/rsdk/framework/InterfaceSocial;

.field private final synthetic val$curMsg:Ljava/lang/String;

.field private final synthetic val$curRet:I


# direct methods
.method constructor <init>(Lcom/rsdk/framework/InterfaceSocial;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/SocialWrapper$1;->val$curAdapter:Lcom/rsdk/framework/InterfaceSocial;

    iput p2, p0, Lcom/rsdk/framework/SocialWrapper$1;->val$curRet:I

    iput-object p3, p0, Lcom/rsdk/framework/SocialWrapper$1;->val$curMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/rsdk/framework/SocialWrapper$1;->val$curAdapter:Lcom/rsdk/framework/InterfaceSocial;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/rsdk/framework/SocialWrapper$1;->val$curRet:I

    iget-object v2, p0, Lcom/rsdk/framework/SocialWrapper$1;->val$curMsg:Ljava/lang/String;

    # invokes: Lcom/rsdk/framework/SocialWrapper;->nativeOnSocialResult(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/rsdk/framework/SocialWrapper;->access$0(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
