.class Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$0(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$0(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->mInputEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$0(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    # invokes: Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->openKeyboard()V
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->access$2(Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;)V

    return-void
.end method
