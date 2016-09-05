.class Lcom/rsdk/framework/AdsWrapper$2;
.super Ljava/lang/Object;
.source "AdsWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/AdsWrapper;->onPlayerGetPoints(Lcom/rsdk/framework/InterfaceAds;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$curAdapter:Lcom/rsdk/framework/InterfaceAds;

.field private final synthetic val$curPoints:I


# direct methods
.method constructor <init>(Lcom/rsdk/framework/InterfaceAds;I)V
    .locals 0

    iput-object p1, p0, Lcom/rsdk/framework/AdsWrapper$2;->val$curAdapter:Lcom/rsdk/framework/InterfaceAds;

    iput p2, p0, Lcom/rsdk/framework/AdsWrapper$2;->val$curPoints:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/rsdk/framework/AdsWrapper$2;->val$curAdapter:Lcom/rsdk/framework/InterfaceAds;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/rsdk/framework/AdsWrapper$2;->val$curPoints:I

    # invokes: Lcom/rsdk/framework/AdsWrapper;->nativeOnPlayerGetPoints(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/rsdk/framework/AdsWrapper;->access$1(Ljava/lang/String;I)V

    return-void
.end method
