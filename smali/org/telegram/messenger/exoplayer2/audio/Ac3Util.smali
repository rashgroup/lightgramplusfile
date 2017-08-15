.class public final Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# static fields
.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x13

    const/4 v1, 0x3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 3

    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_0

    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v1, v1

    if-ge p0, v1, :cond_0

    if-ltz p1, :cond_0

    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v1, p0

    const v2, 0xac44

    if-ne v1, v2, :cond_2

    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    aget v0, v1, v0

    rem-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v0, v2, v0

    const/16 v2, 0x7d00

    if-ne v1, v2, :cond_3

    mul-int/lit8 v0, v0, 0x6

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public static parseAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 11

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v1, v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v4, v0, 0x38

    shr-int/lit8 v4, v4, 0x3

    aget v5, v1, v4

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    const-string/jumbo v1, "audio/ac3"

    const/4 v9, 0x0

    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseAc3SyncframeFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 11

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x2

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_0

    if-eq v5, v0, :cond_0

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_0
    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_1
    if-ne v5, v6, :cond_2

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    const-string/jumbo v1, "audio/ac3"

    sget-object v7, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v5, v7, v5

    if-eqz v6, :cond_3

    :goto_0
    add-int/2addr v5, v0

    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v0, v4

    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v9

    goto :goto_0
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 3

    const/4 v2, 0x4

    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3f

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v0

    goto :goto_0
.end method

.method public static parseEAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 11

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v1, v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v4, v0, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v5, v1, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    const-string/jumbo v1, "audio/eac3"

    const/4 v9, 0x0

    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    mul-int/lit16 v0, v0, 0x100

    return v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static parseEAc3SyncframeAudioSampleCount([B)I
    .locals 3

    const/4 v2, 0x4

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    :goto_0
    mul-int/lit16 v0, v0, 0x100

    return v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static parseEAc3SyncframeSize([B)I
    .locals 2

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static parseEac3SyncframeFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 11

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    sget-object v0, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    aget v6, v0, v1

    :goto_0
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v4

    const-string/jumbo v1, "audio/eac3"

    sget-object v5, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v5, v5, v0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v5, v0

    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    sget-object v1, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v1, v0

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_1
.end method
