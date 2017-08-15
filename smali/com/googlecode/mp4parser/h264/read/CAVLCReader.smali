.class public Lcom/googlecode/mp4parser/h264/read/CAVLCReader;
.super Lcom/googlecode/mp4parser/h264/read/BitstreamReader;
.source "CAVLCReader.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private readUE()I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(I)J

    move-result-wide v2

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v0, v2

    long-to-int v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x20

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/googlecode/mp4parser/h264/read/BitstreamReader;->bitsRead:I

    iget-object v3, p0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/h264/CharCache;->length()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    iget-object v3, p0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/h264/CharCache;->length()I

    move-result v3

    sub-int/2addr v1, v3

    :goto_1
    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->debugBits:Lcom/googlecode/mp4parser/h264/CharCache;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/CharCache;->clear()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/mp4parser/h264/Debug;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public read(I)[B
    .locals 3

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readByte()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readAE()Z
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Stan"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAEI()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Stan"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBool(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1
.end method

.method public readCE(Lcom/googlecode/mp4parser/h264/BTree;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/h264/BTree;->down(I)Lcom/googlecode/mp4parser/h264/BTree;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Illegal code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/h264/BTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public readME(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public readNBit(ILjava/lang/String;)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public readSE(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v2, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public readTE(I)I
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readTrailingBits()V
    .locals 0

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readRemainingByte()J

    return-void
.end method

.method public readU(ILjava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readNBit(ILjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public readUE(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->readUE()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public readZeroBitCount(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->read1Bit()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/read/CAVLCReader;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
