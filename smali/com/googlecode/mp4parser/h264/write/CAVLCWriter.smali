.class public Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;
.super Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;
.source "CAVLCWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/h264/write/BitstreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public writeBool(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->write1Bit(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeNBit(JILjava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-int v1, p3, v0

    add-int/lit8 v1, v1, -0x1

    shr-long v2, p1, v1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->write1Bit(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeSE(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    shl-int/lit8 v2, p1, 0x1

    if-gez p1, :cond_0

    const/4 v1, -0x1

    :goto_0
    mul-int/2addr v1, v2

    if-lez p1, :cond_1

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public writeSliceTrailingBits()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "todo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTrailingBits()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->write1Bit(I)V

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeRemainingZero()V

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->flush()V

    return-void
.end method

.method public writeU(II)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JI)V

    return-void
.end method

.method public writeU(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JI)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    return-void
.end method

.method public writeUE(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v3, 0xf

    if-lt v0, v3, :cond_1

    move v0, v1

    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JI)V

    invoke-virtual {p0, v6}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->write1Bit(I)V

    sub-int v1, p1, v2

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3, v0}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeNBit(JI)V

    return-void

    :cond_1
    shl-int v3, v6, v0

    add-int/2addr v3, v2

    if-lt p1, v3, :cond_0

    shl-int v3, v6, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeUE(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/h264/write/CAVLCWriter;->writeUE(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    return-void
.end method
