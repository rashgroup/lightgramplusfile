.class public Lcom/googlecode/mp4parser/h264/model/ScalingList;
.super Ljava/lang/Object;
.source "ScalingList.java"


# instance fields
.field public scalingList:[I

.field public useDefaultScalingMatrixFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lcom/googlecode/mp4parser/h264/read/CAVLCReader;I)Lcom/googlecode/mp4parser/h264/model/ScalingList;
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x0

    new-instance v5, Lcom/googlecode/mp4parser/h264/model/ScalingList;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/h264/model/ScalingList;-><init>()V

    new-array v2, p1, [I

    iput-object v2, v5, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    move v4, v1

    move v3, v0

    :goto_0
    if-lt v4, p1, :cond_0

    return-object v5

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "deltaScale"

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readSE(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v2, v0, 0x100

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v5, Lcom/googlecode/mp4parser/h264/model/ScalingList;->useDefaultScalingMatrixFlag:Z

    move v0, v2

    :cond_1
    iget-object v6, v5, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    if-nez v0, :cond_3

    move v2, v3

    :goto_2
    aput v2, v6, v4

    iget-object v2, v5, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    aget v3, v2, v4

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ScalingList{scalingList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", useDefaultScalingMatrixFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->useDefaultScalingMatrixFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->useDefaultScalingMatrixFlag:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SPS: "

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    aget v2, v2, v0

    sub-int v1, v2, v1

    add-int/lit16 v1, v1, -0x100

    const-string/jumbo v2, "SPS: "

    invoke-virtual {p1, v1, v2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeSE(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/model/ScalingList;->scalingList:[I

    aget v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
