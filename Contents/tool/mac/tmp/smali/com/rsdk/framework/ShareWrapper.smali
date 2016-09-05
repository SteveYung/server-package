.class public Lcom/rsdk/framework/ShareWrapper;
.super Ljava/lang/Object;
.source "ShareWrapper.java"


# static fields
.field public static final ACTION_TYPE_FB_GET_FRIEND:I = 0x1a

.field public static final ACTION_TYPE_FB_GET_MYINFO:I = 0x1d

.field public static final ACTION_TYPE_FB_POST_FEED:I = 0x17

.field public static final ACTION_TYPE_INVITE_FRIEND:I = 0x18

.field public static final SHARERESULT_CANCEL:I = 0x2

.field public static final SHARERESULT_FAIL:I = 0x1

.field public static final SHARERESULT_NETWORK_ERROR:I = 0x3

.field public static final SHARERESULT_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rsdk/framework/ShareWrapper;->nativeOnShareResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static native nativeOnShareResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onShareResult(Lcom/rsdk/framework/InterfaceShare;ILjava/lang/String;)V
    .locals 4
    .param p0    # Lcom/rsdk/framework/InterfaceShare;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    move v2, p1

    move-object v1, p2

    move-object v0, p0

    new-instance v3, Lcom/rsdk/framework/ShareWrapper$1;

    invoke-direct {v3, v0, v2, v1}, Lcom/rsdk/framework/ShareWrapper$1;-><init>(Lcom/rsdk/framework/InterfaceShare;ILjava/lang/String;)V

    invoke-static {v3}, Lcom/rsdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
