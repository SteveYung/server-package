.class Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionBarDrawerToggleImplHC"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/ActionBarDrawerToggle$1;

    invoke-direct {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;-><init>()V

    return-void
.end method


# virtual methods
.method public getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/app/Activity;

    invoke-static {p1}, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/app/Activity;
    .param p3    # I

    invoke-static {p1, p2, p3}, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Landroid/app/Activity;
    .param p3    # Landroid/graphics/drawable/Drawable;
    .param p4    # I

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
