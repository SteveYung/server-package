.class Lcom/rsdk/framework/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rsdk/framework/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rsdk/framework/SplashActivity;


# direct methods
.method constructor <init>(Lcom/rsdk/framework/SplashActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rsdk/framework/SplashActivity$1;->this$0:Lcom/rsdk/framework/SplashActivity;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/rsdk/framework/SplashActivity$1;->this$0:Lcom/rsdk/framework/SplashActivity;

    # invokes: Lcom/rsdk/framework/SplashActivity;->startGameActivity()V
    invoke-static {v0}, Lcom/rsdk/framework/SplashActivity;->access$0(Lcom/rsdk/framework/SplashActivity;)V

    .line 46
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 41
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 36
    return-void
.end method
