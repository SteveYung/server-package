.class public Lcom/rsdk/framework/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/rsdk/framework/SplashActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/rsdk/framework/SplashActivity;->startGameActivity()V

    return-void
.end method

.method private startGameActivity()V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    const-string v3, "###rsdk_Start_Activity###"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 54
    .local v2, "mainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/rsdk/framework/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/rsdk/framework/SplashActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/rsdk/framework/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "plugin_splash"

    const-string v5, "layout"

    invoke-virtual {p0}, Lcom/rsdk/framework/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/rsdk/framework/SplashActivity;->setContentView(I)V

    .line 20
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 21
    .local v0, "ani":Landroid/view/animation/AlphaAnimation;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 22
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 23
    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 24
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/rsdk/framework/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "plugin_splash_img"

    const-string v5, "id"

    invoke-virtual {p0}, Lcom/rsdk/framework/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/rsdk/framework/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 26
    .local v1, "image":Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 27
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Lcom/rsdk/framework/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "plugin_splash_layout"

    const-string v6, "id"

    invoke-virtual {p0}, Lcom/rsdk/framework/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 28
    .local v2, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "image":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 30
    .end local v2    # "layout":Landroid/widget/RelativeLayout;
    .restart local v1    # "image":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 31
    new-instance v3, Lcom/rsdk/framework/SplashActivity$1;

    invoke-direct {v3, p0}, Lcom/rsdk/framework/SplashActivity$1;-><init>(Lcom/rsdk/framework/SplashActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 49
    return-void
.end method
