.class public Lcom/rsdk/framework/PushWrapper;
.super Ljava/lang/Object;
.source "PushWrapper.java"


# static fields
.field public static final ACTION_RET_RECEIVEMESSAGE:I = 0x0

.field public static final ACTION_RET_RECEIVETOKEN:I = 0x1

.field public static final ACTION_RET_RECEIVETOKEN_SUCCESS:Ljava/lang/String; = "success"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rsdk/framework/PushWrapper;->nativeOnPushActionResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static native nativeOnPushActionResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onActionResult(Lcom/rsdk/framework/InterfacePush;ILjava/lang/String;)V
    .locals 4
    .param p0    # Lcom/rsdk/framework/InterfacePush;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    move v2, p1

    move-object v0, p2

    move-object v1, p0

    new-instance v3, Lcom/rsdk/framework/PushWrapper$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/rsdk/framework/PushWrapper$1;-><init>(Lcom/rsdk/framework/InterfacePush;ILjava/lang/String;)V

    invoke-static {v3}, Lcom/rsdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
