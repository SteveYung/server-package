.class public final enum Lcom/rsdk/framework/java/ToolBarPlaceEnum;
.super Ljava/lang/Enum;
.source "ToolBarPlaceEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rsdk/framework/java/ToolBarPlaceEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/rsdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopBottomLeft:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopBottomRight:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopLeft:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopLeftMid:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopRight:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kToolBarTopRightMid:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

.field public static final enum kUnkown:Lcom/rsdk/framework/java/ToolBarPlaceEnum;


# instance fields
.field private place:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopLeft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/rsdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeft:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    new-instance v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopRight"

    invoke-direct {v0, v1, v4, v5}, Lcom/rsdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRight:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    new-instance v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopLeftMid"

    invoke-direct {v0, v1, v5, v6}, Lcom/rsdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeftMid:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    new-instance v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopRightMid"

    invoke-direct {v0, v1, v6, v7}, Lcom/rsdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRightMid:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    new-instance v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopBottomLeft"

    invoke-direct {v0, v1, v7, v8}, Lcom/rsdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomLeft:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    new-instance v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kToolBarTopBottomRight"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/rsdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomRight:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    new-instance v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    const-string v1, "kUnkown"

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/rsdk/framework/java/ToolBarPlaceEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kUnkown:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    const/4 v1, 0x0

    sget-object v2, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeft:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    aput-object v2, v0, v1

    sget-object v1, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRight:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeftMid:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRightMid:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomLeft:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomRight:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kUnkown:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->ENUM$VALUES:[Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->place:I

    return-void
.end method

.method public static from(I)Lcom/rsdk/framework/java/ToolBarPlaceEnum;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kUnkown:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeft:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRight:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopLeftMid:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopRightMid:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomLeft:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->kToolBarTopBottomRight:Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rsdk/framework/java/ToolBarPlaceEnum;
    .locals 1

    const-class v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    return-object v0
.end method

.method public static values()[Lcom/rsdk/framework/java/ToolBarPlaceEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->ENUM$VALUES:[Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/rsdk/framework/java/ToolBarPlaceEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getPlace()I
    .locals 1

    iget v0, p0, Lcom/rsdk/framework/java/ToolBarPlaceEnum;->place:I

    return v0
.end method
