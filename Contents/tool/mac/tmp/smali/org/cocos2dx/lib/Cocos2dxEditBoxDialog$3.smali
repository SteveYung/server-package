.class Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$3;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    if-nez p2, :cond_0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$0(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setEditTextDialogResult(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    # invokes: Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->closeKeyboard()V
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$1(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$3;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
