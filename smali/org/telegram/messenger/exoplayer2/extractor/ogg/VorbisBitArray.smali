.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field public final data:[B

.field private final limit:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    mul-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    return-void
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public limit()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    return v0
.end method

.method public readBit()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 14

    const/16 v12, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    if-nez p1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    rsub-int/lit8 v2, v0, 0x8

    ushr-int v2, v12, v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v3, v3, v4

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    ushr-int/2addr v3, v4

    and-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    :cond_2
    :goto_2
    sub-int v3, p1, v0

    const/4 v4, 0x7

    if-le v3, v4, :cond_5

    sub-int v3, p1, v0

    div-int/lit8 v4, v3, 0x8

    move v13, v1

    move v1, v2

    move v2, v13

    :goto_3
    if-ge v2, v4, :cond_3

    int-to-long v6, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v1, v1, v3

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    long-to-int v3, v6

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_3

    :cond_3
    move v13, v0

    move v0, v1

    move v1, v13

    :goto_4
    if-le p1, v1, :cond_4

    sub-int v2, p1, v1

    rsub-int/lit8 v3, v2, 0x8

    ushr-int v3, v12, v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v4, v4, v5

    and-int/2addr v3, v4

    shl-int v1, v3, v1

    or-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    move v1, v0

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    move v2, v1

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skipBits(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
