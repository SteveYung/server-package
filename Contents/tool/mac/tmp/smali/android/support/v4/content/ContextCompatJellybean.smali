.class Landroid/support/v4/content/ContextCompatJellybean;
.super Ljava/lang/Object;
.source "ContextCompatJellybean.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # [Landroid/content/Intent;
    .param p2    # Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
