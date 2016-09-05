.class public Lcom/rsdk/framework/SocialWrapper;
.super Ljava/lang/Object;
.source "SocialWrapper.java"


# static fields
.field public static final ACTION_TYPE_FB_GET_FRIEND:I = 0x1a

.field public static final ACTION_TYPE_FB_GET_MYINFO:I = 0x1d

.field public static final ACTION_TYPE_FB_POST_FEED:I = 0x17

.field public static final ACTION_TYPE_GETSOCIL_BACKTOGAME_USERID:I = 0x1e

.field public static final ACTION_TYPE_INVITE_FRIEND:I = 0x18

.field public static final SOCIAL_ACTION_TYPE_ONBACKPRESSED:I = 0x9

.field public static final SOCIAL_SIGNIN_FAIL:I = 0x6

.field public static final SOCIAL_SIGNIN_SUCCEED:I = 0x5

.field public static final SOCIAL_SIGNOUT_FAIL:I = 0x8

.field public static final SOCIAL_SIGNOUT_SUCCEED:I = 0x7

.field public static final SOCIAL_SUBMITSCORE_FAIL:I = 0x2

.field public static final SOCIAL_SUBMITSCORE_SUCCEED:I = 0x1

.field public static final SOCIAL_UNLOCKACH_FAIL:I = 0x4

.field public static final SOCIAL_UNLOCKACH_SUCCEED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rsdk/framework/SocialWrapper;->nativeOnSocialResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static native nativeOnSocialResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onSocialResult(Lcom/rsdk/framework/InterfaceSocial;ILjava/lang/String;)V
    .locals 4
    .param p0    # Lcom/rsdk/framework/InterfaceSocial;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    move v2, p1

    move-object v1, p2

    move-object v0, p0

    new-instance v3, Lcom/rsdk/framework/SocialWrapper$1;

    invoke-direct {v3, v0, v2, v1}, Lcom/rsdk/framework/SocialWrapper$1;-><init>(Lcom/rsdk/framework/InterfaceSocial;ILjava/lang/String;)V

    invoke-static {v3}, Lcom/rsdk/framework/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
