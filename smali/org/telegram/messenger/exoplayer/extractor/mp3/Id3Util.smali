.class final Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;
.super Ljava/lang/Object;
.source "Id3Util.java"


# static fields
.field private static final CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

.field private static final ID3_TAG:I

.field private static final MAXIMUM_METADATA_SIZE:I = 0x300000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->ID3_TAG:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const-string/jumbo v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "UTF-16LE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "UTF-16BE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canParseMetadata(IIII)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0xff

    if-eq p1, v0, :cond_3

    if-lt p0, v1, :cond_3

    if-gt p0, v2, :cond_3

    const/high16 v0, 0x300000

    if-gt p3, v0, :cond_3

    if-ne p0, v1, :cond_0

    and-int/lit8 v0, p2, 0x3f

    if-nez v0, :cond_3

    and-int/lit8 v0, p2, 0x40

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    and-int/lit8 v0, p2, 0x1f

    if-nez v0, :cond_3

    :cond_1
    if-ne p0, v2, :cond_2

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static canUnescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z
    .locals 12

    const/4 v2, 0x1

    const-wide/16 v10, 0x7f

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    if-nez p1, :cond_2

    const-wide/32 v4, 0x808080

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    and-long v4, v0, v10

    const/16 v6, 0x8

    shr-long v6, v0, v6

    and-long/2addr v6, v10

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0x10

    shr-long v6, v0, v6

    and-long/2addr v6, v10

    const/16 v8, 0xe

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0x18

    shr-long/2addr v0, v6

    and-long/2addr v0, v10

    const/16 v6, 0x15

    shl-long/2addr v0, v6

    or-long/2addr v0, v4

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private static findNextComment(ILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v1, 0x0

    :goto_0
    if-ne p0, v8, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v0, 0x3

    const-string/jumbo v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "\u0000\u0000\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-gt v0, v5, :cond_0

    const-string/jumbo v5, "COM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ltz v2, :cond_0

    sget-object v5, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    sget-object v5, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->CHARSET_BY_ENCODING:[Ljava/nio/charset/Charset;

    aget-object v2, v5, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ne v2, v8, :cond_9

    aget-object v1, v0, v4

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "\u0000\u0000\u0000\u0000"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p0, v7, :cond_7

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-gt v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    if-ne p0, v7, :cond_4

    and-int/lit8 v6, v2, 0xc

    if-nez v6, :cond_5

    :cond_4
    const/4 v6, 0x3

    if-ne p0, v6, :cond_8

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_8

    :cond_5
    move v2, v3

    :goto_4
    if-nez v2, :cond_6

    const-string/jumbo v2, "COMM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_6
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    goto :goto_3

    :cond_8
    move v2, v4

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method private static parseGaplessInfo(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->unescape(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    if-ne p1, v4, :cond_4

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-ge v0, v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-le v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-lt v0, v5, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    sub-int v2, v3, v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-ge v2, v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_3
    :goto_1
    invoke-static {p1, p0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->findNextComment(ILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_3

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->createFromComment(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_4
    if-ne p1, v3, :cond_3

    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-ge v0, v3, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    if-lt v0, v5, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_7

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method

.method public static parseId3(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 9

    const/16 v8, 0xa

    const/4 v2, 0x0

    new-instance v3, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v3, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    iget-object v4, v3, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p0, v4, v2, v8}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->ID3_TAG:I

    if-eq v4, v5, :cond_0

    invoke-interface {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-object v0

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v7

    if-nez v0, :cond_1

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->canParseMetadata(IIII)Z

    move-result v5

    if-eqz v5, :cond_1

    new-array v0, v7, [B

    invoke-interface {p0, v0, v2, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    new-instance v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v5, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    invoke-static {v5, v4, v6}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->parseGaplessInfo(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v0

    :goto_1
    add-int/lit8 v4, v7, 0xa

    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    invoke-interface {p0, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1
.end method

.method private static unescape(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    and-int/lit16 v2, p2, 0x80

    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    array-length v2, v3

    move v7, v0

    move v0, v2

    move v2, v7

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_1

    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v3, v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    add-int/lit8 v6, v6, -0x2

    invoke-static {v3, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    :cond_2
    :goto_1
    move v0, v1

    :cond_3
    return v0

    :cond_4
    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->canUnescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->unescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)V

    goto :goto_1

    :cond_5
    invoke-static {p0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->canUnescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->unescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)V

    goto :goto_1
.end method

.method private static unescapeVersion4(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)V
    .locals 10

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v1

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-static {v9, v2, v9, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v0, -0x4

    and-int/lit8 v2, v8, -0x2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    :goto_2
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    move v5, v0

    :goto_3
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v1, :cond_4

    add-int/lit8 v6, v0, -0x1

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_2

    aget-byte v6, v9, v0

    if-nez v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v9, v0

    aput-byte v0, v9, v5

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v6

    move v0, v7

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    sub-int v6, v0, v5

    sub-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v9, v0, v9, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    and-int/lit8 v0, v2, -0x3

    :goto_4
    if-ne v0, v8, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-static {v9, v2, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->writeSyncSafeInteger([BII)V

    add-int/lit8 v3, v2, 0x4

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v9, v3

    add-int/lit8 v2, v2, 0x5

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v9, v2

    :cond_6
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v2, v8

    move v1, v0

    goto :goto_2
.end method

.method private static writeSyncSafeInteger([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x15

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0xe

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x7

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method
