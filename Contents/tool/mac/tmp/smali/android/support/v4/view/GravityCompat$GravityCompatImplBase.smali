.class Landroid/support/v4/view/GravityCompat$GravityCompatImplBase;
.super Ljava/lang/Object;
.source "GravityCompat.java"

# interfaces
.implements Landroid/support/v4/view/GravityCompat$GravityCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GravityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GravityCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/graphics/Rect;
    .param p5    # I
    .param p6    # I
    .param p7    # Landroid/graphics/Rect;
    .param p8    # I

    invoke-static/range {p1 .. p7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/graphics/Rect;
    .param p5    # Landroid/graphics/Rect;
    .param p6    # I

    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/graphics/Rect;
    .param p3    # Landroid/graphics/Rect;
    .param p4    # I

    invoke-static {p1, p2, p3}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getAbsoluteGravity(II)I
    .locals 1
    .param p1    # I
    .param p2    # I

    const v0, -0x800001

    and-int/2addr v0, p1

    return v0
.end method
