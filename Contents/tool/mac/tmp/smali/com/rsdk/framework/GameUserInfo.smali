.class public Lcom/rsdk/framework/GameUserInfo;
.super Ljava/lang/Object;
.source "GameUserInfo.java"


# instance fields
.field public backday:Ljava/lang/String;

.field public extData:Ljava/lang/String;

.field public gameUserID:Ljava/lang/String;

.field public gameUserName:Ljava/lang/String;

.field public inGuide:Ljava/lang/String;

.field public isNew:Ljava/lang/String;

.field public isPayUser:Ljava/lang/String;

.field public level:Ljava/lang/String;

.field public logType:Ljava/lang/String;

.field public platformUserID:Ljava/lang/String;

.field public registTime:Ljava/lang/String;

.field public zoneID:Ljava/lang/String;

.field public zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->gameUserID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->platformUserID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->gameUserName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->zoneID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->zoneName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->level:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->backday:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->isNew:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->inGuide:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->logType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->isPayUser:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->registTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rsdk/framework/GameUserInfo;->extData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameUserInfo [gameUserID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->gameUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", platformUserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->platformUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->gameUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoneID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->zoneID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zoneName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->zoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->backday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->isNew:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inGuide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->inGuide:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->logType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPayUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->isPayUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", registTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->registTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rsdk/framework/GameUserInfo;->extData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
