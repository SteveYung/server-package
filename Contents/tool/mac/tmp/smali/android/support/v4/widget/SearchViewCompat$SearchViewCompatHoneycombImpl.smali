.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.super Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatHoneycombImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->getQuery(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isIconified(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->isIconified(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isQueryRefinementEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->isQueryRefinementEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isSubmitButtonEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->isSubmitButtonEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;

    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;-><init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)V

    invoke-static {v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newOnCloseListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    new-instance v0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;-><init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V

    invoke-static {v0}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setIconified(Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Z

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setIconified(Landroid/view/View;Z)V

    return-void
.end method

.method public setMaxWidth(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setMaxWidth(Landroid/view/View;I)V

    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setOnCloseListener(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # Z

    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setQueryRefinementEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Z

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setQueryRefinementEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/ComponentName;

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setSubmitButtonEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Z

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatHoneycomb;->setSubmitButtonEnabled(Landroid/view/View;Z)V

    return-void
.end method
