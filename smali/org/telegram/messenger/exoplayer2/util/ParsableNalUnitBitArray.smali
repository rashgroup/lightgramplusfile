.class public final Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;
.super Ljava/lang/Object;
.source "ParsableNalUnitBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field private data:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readExpGolombCodeNum()I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    :cond_1
    add-int v0, v2, v1

    return v0
.end method

.method private shouldSkipByte(I)Z
    .locals 2

    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    add-int/lit8 v1, p1, -0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canReadBits(I)Z
    .locals 5

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v1, v0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rem-int/lit8 v3, p1, 0x8

    add-int/2addr v0, v3

    const/4 v3, 0x7

    if-le v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    :goto_0
    if-gt v1, v2, :cond_2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v2, v3, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v2, v1, :cond_3

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v2, v1, :cond_4

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canReadExpGolombCodedNum()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v2, v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v2, v6, :cond_1

    move v2, v3

    :goto_1
    iput v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-nez v2, :cond_2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return v3

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2
.end method

.method public readBit()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 8

    const/16 v7, 0x8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    div-int/lit8 v4, p1, 0x8

    move v3, v0

    move v2, v0

    :goto_1
    if-ge v3, v4, :cond_3

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x2

    :goto_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    shl-int/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rsub-int/lit8 v6, v6, 0x8

    ushr-int/2addr v5, v6

    or-int/2addr v1, v5

    :goto_3
    add-int/lit8 p1, p1, -0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, p1

    or-int/2addr v2, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v1, v1, v5

    goto :goto_3

    :cond_3
    if-lez p1, :cond_7

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int v3, v0, p1

    const/16 v0, 0xff

    rsub-int/lit8 v1, p1, 0x8

    shr-int/2addr v0, v1

    int-to-byte v4, v0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_4
    if-le v3, v7, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v3, -0x8

    shl-int/2addr v0, v5

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    rsub-int/lit8 v6, v3, 0x10

    shr-int/2addr v5, v6

    or-int/2addr v0, v5

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    :cond_4
    :goto_5
    rem-int/lit8 v1, v3, 0x8

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    :goto_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    rsub-int/lit8 v5, v3, 0x8

    shr-int/2addr v0, v5

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    if-ne v3, v7, :cond_4

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v1

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([BII)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    return-void
.end method

.method public skipBits(I)V
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    div-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rem-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    if-gt v0, v1, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    return-void
.end method
