.class public Landroid/support/v4/view/ViewParentCompatICS;
.super Ljava/lang/Object;
.source "ViewParentCompatICS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p0    # Landroid/view/ViewParent;
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
