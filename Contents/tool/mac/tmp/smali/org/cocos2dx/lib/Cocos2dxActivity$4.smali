.class Lorg/cocos2dx/lib/Cocos2dxActivity$4;
.super Landroid/os/Handler;
.source "Cocos2dxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSizeChanged_R()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1eb749
        :pswitch_0
    .end packed-switch
.end method
