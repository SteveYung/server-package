.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr2;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellybeanMr2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/String;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    return-void
.end method
