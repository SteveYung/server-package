.class final enum Lcom/rsdk/framework/java/RSDKParam$ParamType;
.super Ljava/lang/Enum;
.source "RSDKParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rsdk/framework/java/RSDKParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rsdk/framework/java/RSDKParam$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/rsdk/framework/java/RSDKParam$ParamType;

.field public static final enum kParamTypeBool:Lcom/rsdk/framework/java/RSDKParam$ParamType;

.field public static final enum kParamTypeFloat:Lcom/rsdk/framework/java/RSDKParam$ParamType;

.field public static final enum kParamTypeInt:Lcom/rsdk/framework/java/RSDKParam$ParamType;

.field public static final enum kParamTypeMap:Lcom/rsdk/framework/java/RSDKParam$ParamType;

.field public static final enum kParamTypeNull:Lcom/rsdk/framework/java/RSDKParam$ParamType;

.field public static final enum kParamTypeString:Lcom/rsdk/framework/java/RSDKParam$ParamType;

.field public static final enum kParamTypeStringMap:Lcom/rsdk/framework/java/RSDKParam$ParamType;


# instance fields
.field private paramType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;

    const-string v1, "kParamTypeNull"

    invoke-direct {v0, v1, v4, v4}, Lcom/rsdk/framework/java/RSDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeNull:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    new-instance v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;

    const-string v1, "kParamTypeInt"

    invoke-direct {v0, v1, v5, v5}, Lcom/rsdk/framework/java/RSDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeInt:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    new-instance v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;

    const-string v1, "kParamTypeFloat"

    invoke-direct {v0, v1, v6, v6}, Lcom/rsdk/framework/java/RSDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeFloat:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    new-instance v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;

    const-string v1, "kParamTypeBool"

    invoke-direct {v0, v1, v7, v7}, Lcom/rsdk/framework/java/RSDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeBool:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    new-instance v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;

    const-string v1, "kParamTypeString"

    invoke-direct {v0, v1, v8, v8}, Lcom/rsdk/framework/java/RSDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeString:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    new-instance v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;

    const-string v1, "kParamTypeStringMap"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/rsdk/framework/java/RSDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeStringMap:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    new-instance v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;

    const-string v1, "kParamTypeMap"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/rsdk/framework/java/RSDKParam$ParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeMap:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/rsdk/framework/java/RSDKParam$ParamType;

    sget-object v1, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeNull:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeInt:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeFloat:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeBool:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeString:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeStringMap:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeMap:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->ENUM$VALUES:[Lcom/rsdk/framework/java/RSDKParam$ParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->paramType:I

    return-void
.end method

.method static synthetic access$2(Lcom/rsdk/framework/java/RSDKParam$ParamType;)I
    .locals 1

    iget v0, p0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->paramType:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rsdk/framework/java/RSDKParam$ParamType;
    .locals 1

    const-class v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;

    return-object v0
.end method

.method public static values()[Lcom/rsdk/framework/java/RSDKParam$ParamType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->ENUM$VALUES:[Lcom/rsdk/framework/java/RSDKParam$ParamType;

    array-length v1, v0

    new-array v2, v1, [Lcom/rsdk/framework/java/RSDKParam$ParamType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getParamType()I
    .locals 1

    iget v0, p0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->paramType:I

    return v0
.end method
