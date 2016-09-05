.class public Lcom/rsdk/framework/java/RSDKParam;
.super Ljava/lang/Object;
.source "RSDKParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rsdk/framework/java/RSDKParam$ParamType;
    }
.end annotation


# instance fields
.field private _boolValue:Z

.field private _floatValue:F

.field private _intValue:I

.field private _mapValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _strValue:Ljava/lang/String;

.field private _type:Lcom/rsdk/framework/java/RSDKParam$ParamType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeNull:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    iput-object v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_type:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rsdk/framework/java/RSDKParam;->_floatValue:F

    sget-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeFloat:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    iput-object v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_type:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rsdk/framework/java/RSDKParam;->_intValue:I

    sget-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeInt:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    iput-object v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_type:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rsdk/framework/java/RSDKParam;->_strValue:Ljava/lang/String;

    sget-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeString:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    iput-object v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_type:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rsdk/framework/java/RSDKParam;->_mapValue:Ljava/util/Map;

    sget-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeMap:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    iput-object v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_type:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/rsdk/framework/java/RSDKParam;->_boolValue:Z

    sget-object v0, Lcom/rsdk/framework/java/RSDKParam$ParamType;->kParamTypeBool:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    iput-object v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_type:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    return-void
.end method


# virtual methods
.method public getBoolValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_boolValue:Z

    return v0
.end method

.method public getCurrentType()I
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_type:Lcom/rsdk/framework/java/RSDKParam$ParamType;

    # getter for: Lcom/rsdk/framework/java/RSDKParam$ParamType;->paramType:I
    invoke-static {v0}, Lcom/rsdk/framework/java/RSDKParam$ParamType;->access$2(Lcom/rsdk/framework/java/RSDKParam$ParamType;)I

    move-result v0

    return v0
.end method

.method public getFloatValue()F
    .locals 1

    iget v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_floatValue:F

    return v0
.end method

.method public getIntValue()I
    .locals 1

    iget v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_intValue:I

    return v0
.end method

.method public getMapValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_mapValue:Ljava/util/Map;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rsdk/framework/java/RSDKParam;->_strValue:Ljava/lang/String;

    return-object v0
.end method
