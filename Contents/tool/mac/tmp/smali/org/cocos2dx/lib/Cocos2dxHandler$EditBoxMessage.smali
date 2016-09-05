.class public Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;
.super Ljava/lang/Object;
.source "Cocos2dxHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditBoxMessage"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public inputFlag:I

.field public inputMode:I

.field public maxLength:I

.field public returnType:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->content:Ljava/lang/String;

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->title:Ljava/lang/String;

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->inputMode:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->inputFlag:I

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->returnType:I

    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->maxLength:I

    return-void
.end method
