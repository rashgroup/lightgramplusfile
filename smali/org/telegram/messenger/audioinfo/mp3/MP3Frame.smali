.class public Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
.super Ljava/lang/Object;
.source "MP3Frame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;,
        Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private final header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    return-void
.end method


# virtual methods
.method public getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    return-object v0
.end method

.method public getNumberOfFrames()I
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->isXingFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getXingOffset()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v2, v0, 0x7

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v2, v0, 0x8

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v3, v0, 0x9

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v3, v0, 0xa

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v0, v0, 0xb

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->isVBRIFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getVBRIOffset()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v2, v0, 0xe

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v3, v0, 0xf

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v3, v0, 0x10

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v0, v0, 0x11

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method isChecksumError()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getProtection()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getLayer()I

    move-result v2

    if-ne v2, v0, :cond_2

    new-instance v3, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;

    invoke-direct {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    const/4 v4, 0x2

    aget-byte v2, v2, v4

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->update(B)V

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    const/4 v4, 0x3

    aget-byte v2, v2, v4

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->update(B)V

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getSideInfoSize()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v6, v2, 0x6

    aget-byte v5, v5, v6

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->update(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    const/4 v4, 0x4

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$CRC16;->getValue()S

    move-result v3

    if-eq v2, v3, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method isVBRIFrame()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getVBRIOffset()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    array-length v2, v2

    add-int/lit8 v3, v1, 0x1a

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    aget-byte v2, v2, v1

    const/16 v3, 0x56

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0x42

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v3, v1, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x52

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v2, v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isXingFrame()Z
    .locals 6

    const/16 v5, 0x6e

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->header:Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getXingOffset()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    array-length v3, v3

    add-int/lit8 v4, v2, 0xc

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz v2, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    array-length v3, v3

    add-int/lit8 v4, v2, 0x8

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    aget-byte v3, v3, v2

    const/16 v4, 0x58

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0x69

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v2, 0x3

    aget-byte v3, v3, v4

    const/16 v4, 0x67

    if-ne v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    aget-byte v3, v3, v2

    const/16 v4, 0x49

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0x66

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->bytes:[B

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v3, v2

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method
