.class public Lcom/anysdk/framework/AdsUtil;
.super Ljava/lang/Object;
.source "AdsUtil.java"


# static fields
.field private static final ADS_PARAMS:Ljava/lang/String; = "{\"Banner\":[{\"unitId\":\"ca-app-pub-1817561889749610/4962264881\",\"size\":\"BANNER\",\"pos\":\"center\"},{\"unitId\":\"ca-app-pub-1817561889749610/2609922887\",\"size\":\"LARGE_BANNER\",\"pos\":\"bottom-middle\"}],\"FullScreen\":[{\"unitId\":\"ca-app-pub-1817561889749610/6438998083\"},{\"unitId\":\"ca-app-pub-1817561889749610/6438998083\"},{\"unitId\":\"ca-app-pub-1817561889749610/6438998083\"}],\"other\":\"\"}"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdsParams()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    const-string v0, "#%str%#"

    invoke-static {v0}, Lcom/anysdk/framework/Wrapper;->pluginDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
