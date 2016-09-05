.class Lcom/raysns/android/zombie/Zombie$1;
.super Lcom/raysns/gameapi/util/ActionListener;
.source "Zombie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raysns/android/zombie/Zombie;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raysns/android/zombie/Zombie;


# direct methods
.method constructor <init>(Lcom/raysns/android/zombie/Zombie;)V
    .locals 0

    iput-object p1, p0, Lcom/raysns/android/zombie/Zombie$1;->this$0:Lcom/raysns/android/zombie/Zombie;

    invoke-direct {p0}, Lcom/raysns/gameapi/util/ActionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILorg/json/JSONObject;)V
    .locals 0
    .param p1    # I
    .param p2    # Lorg/json/JSONObject;

    return-void
.end method
