.class final Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# static fields
.field private static final STATE_BEGIN_READING:I = 0x0

.field private static final STATE_READ_CONTENTS:I = 0x1

.field private static final VARINT_LENGTH_MASKS:[J


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    return-void
.end method

.method public static assembleVarint([BIZ)J
    .locals 9

    const-wide/16 v6, 0xff

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    if-eqz p2, :cond_0

    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v3, p1, -0x1

    aget-wide v2, v2, v3

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    :cond_0
    const/4 v2, 0x1

    move v8, v2

    move-wide v2, v0

    move v0, v8

    :goto_0
    if-ge v0, p1, :cond_1

    const/16 v1, 0x8

    shl-long/2addr v2, v1

    aget-byte v1, p0, v0

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static parseUnsignedVarintLength(I)I
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    aget-wide v2, v2, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getLastLength()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;ZZI)J
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    invoke-interface {p1, v0, v2, v3, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    if-le v0, p4, :cond_3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    const-wide/16 v0, -0x2

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v0, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    :cond_4
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->state:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->length:I

    return-void
.end method
