.class public final Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;,
        Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field public static final NAL_START_CODE:[B

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    const/4 v1, 0x0

    aput-boolean v1, p0, v1

    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_1
    return-void

    :cond_0
    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sub-int v3, p2, p1

    if-ltz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    if-nez v3, :cond_2

    :cond_0
    :goto_1
    return p2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_5

    aget-boolean v0, p3, v2

    if-eqz v0, :cond_3

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p2, p1, -0x3

    goto :goto_1

    :cond_3
    if-le v3, v1, :cond_4

    aget-boolean v0, p3, v1

    if-eqz v0, :cond_4

    aget-byte v0, p0, p1

    if-ne v0, v1, :cond_4

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p2, p1, -0x2

    goto :goto_1

    :cond_4
    if-le v3, v6, :cond_5

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_5

    aget-byte v0, p0, p1

    if-nez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_5

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v0, p1, 0x2

    :goto_2
    if-ge v0, v4, :cond_9

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfe

    if-eqz v5, :cond_6

    :goto_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v0, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    aget-byte v5, p0, v0

    if-ne v5, v1, :cond_8

    if-eqz p3, :cond_7

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    :cond_7
    add-int/lit8 p2, v0, -0x2

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_9
    if-eqz p3, :cond_0

    if-le v3, v6, :cond_b

    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_4
    aput-boolean v0, p3, v2

    if-le v3, v1, :cond_10

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_5
    aput-boolean v0, p3, v1

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_12

    :goto_6
    aput-boolean v1, p3, v6

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    if-ne v3, v6, :cond_d

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_c

    move v0, v1

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    aget-boolean v0, p3, v1

    if-eqz v0, :cond_e

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_4

    :cond_e
    move v0, v2

    goto :goto_4

    :cond_f
    move v0, v2

    goto :goto_5

    :cond_10
    aget-boolean v0, p3, v6

    if-eqz v0, :cond_11

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_5

    :cond_11
    move v0, v2

    goto :goto_5

    :cond_12
    move v1, v2

    goto :goto_6
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 3

    move v0, p1

    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move p2, v0

    :cond_0
    return p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static parsePpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    new-instance v3, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v3
.end method

.method public static parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;
    .locals 18

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x64

    if-eq v5, v6, :cond_0

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_0

    const/16 v6, 0x7a

    if-eq v5, v6, :cond_0

    const/16 v6, 0xf4

    if-eq v5, v6, :cond_0

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_0

    const/16 v6, 0x53

    if-eq v5, v6, :cond_0

    const/16 v6, 0x56

    if-eq v5, v6, :cond_0

    const/16 v6, 0x76

    if-eq v5, v6, :cond_0

    const/16 v6, 0x80

    if-eq v5, v6, :cond_0

    const/16 v6, 0x8a

    if-ne v5, v6, :cond_14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    const/4 v4, 0x3

    if-ne v6, v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    if-eq v6, v4, :cond_3

    const/16 v4, 0x8

    :goto_0
    const/4 v5, 0x0

    move v7, v5

    :goto_1
    if-ge v7, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    if-ge v7, v5, :cond_4

    const/16 v5, 0x10

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->skipScalingList(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;I)V

    :cond_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_1

    :cond_3
    const/16 v4, 0xc

    goto :goto_0

    :cond_4
    const/16 v5, 0x40

    goto :goto_2

    :cond_5
    move v7, v2

    move v2, v6

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v9, v4, 0x4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v11, v4, 0x4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v4, 0x1

    :goto_4
    rsub-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v6

    if-nez v8, :cond_7

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :cond_7
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    mul-int/lit8 v6, v5, 0x10

    mul-int/lit8 v5, v4, 0x10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    if-nez v2, :cond_c

    const/4 v4, 0x1

    if-eqz v8, :cond_b

    const/4 v2, 0x1

    :goto_5
    rsub-int/lit8 v2, v2, 0x2

    :goto_6
    add-int v13, v14, v15

    mul-int/2addr v4, v13

    sub-int v4, v6, v4

    add-int v6, v16, v17

    mul-int/2addr v2, v6

    sub-int/2addr v5, v2

    :goto_7
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/16 v13, 0xff

    if-ne v6, v13, :cond_10

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/16 v13, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v13

    if-eqz v6, :cond_8

    if-eqz v13, :cond_8

    int-to-float v2, v6

    int-to-float v6, v13

    div-float/2addr v2, v6

    :cond_8
    move v6, v2

    :goto_8
    new-instance v2, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;-><init>(IIIFZZIIIZ)V

    return-object v2

    :cond_9
    const/4 v4, 0x1

    if-ne v10, v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    int-to-long v14, v4

    const/4 v4, 0x0

    :goto_9
    int-to-long v0, v4

    move-wide/from16 v16, v0

    cmp-long v5, v16, v14

    if-gez v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    const/4 v4, 0x3

    if-ne v2, v4, :cond_d

    const/4 v4, 0x1

    :goto_a
    const/4 v13, 0x1

    if-ne v2, v13, :cond_e

    const/4 v2, 0x2

    move v13, v2

    :goto_b
    if-eqz v8, :cond_f

    const/4 v2, 0x1

    :goto_c
    rsub-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v13

    goto :goto_6

    :cond_d
    const/4 v4, 0x2

    goto :goto_a

    :cond_e
    const/4 v2, 0x1

    move v13, v2

    goto :goto_b

    :cond_f
    const/4 v2, 0x0

    goto :goto_c

    :cond_10
    sget-object v13, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v13, v13

    if-ge v6, v13, :cond_11

    sget-object v2, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v2, v2, v6

    move v6, v2

    goto :goto_8

    :cond_11
    const-string/jumbo v13, "NalUnitUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v6, v2

    goto :goto_8

    :cond_13
    move v4, v6

    goto/16 :goto_7

    :cond_14
    move v7, v2

    move v2, v4

    goto/16 :goto_3
.end method

.method private static skipScalingList(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;I)V
    .locals 3

    const/16 v1, 0x8

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, p1, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    :cond_0
    if-nez v1, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 9

    const/4 v0, 0x0

    sget-object v4, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v4

    move v3, v0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    :try_start_0
    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_3

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v1, v1

    if-gt v1, v3, :cond_0

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v5, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    sput-object v1, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    :cond_0
    sget-object v5, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v1, v3, 0x1

    aput v2, v5, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v1

    move v1, v2

    goto :goto_0

    :cond_1
    sub-int v5, p1, v3

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v0, v3, :cond_2

    sget-object v6, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v6, v6, v0

    sub-int/2addr v6, v2

    invoke-static {p0, v2, p0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v6

    add-int/lit8 v7, v1, 0x1

    const/4 v8, 0x0

    aput-byte v8, p0, v1

    add-int/lit8 v1, v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sub-int v0, v5, v1

    invoke-static {p0, v2, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method
