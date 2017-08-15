.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;,
        Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findEsdsPosition(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)I
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v1

    :goto_0
    sub-int v0, v1, p1

    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v3, "childAtomSize should be positive"

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_2
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 19

    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    const/4 v6, 0x0

    if-eqz p8, :cond_7

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move v8, v6

    :goto_0
    if-eqz v8, :cond_0

    const/4 v6, 0x1

    if-ne v8, v6, :cond_8

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/16 v8, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v16

    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v8, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    move-result p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :cond_2
    const/4 v8, 0x0

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_9

    const-string/jumbo v8, "audio/ac3"

    :cond_3
    :goto_2
    const/16 v17, 0x0

    move v13, v6

    move v12, v7

    move-object v7, v8

    :goto_3
    sub-int v6, v16, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    if-lez v18, :cond_12

    const/4 v6, 0x1

    :goto_4
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v6, v8, :cond_4

    if-eqz p8, :cond_14

    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_wave:I

    if-ne v6, v8, :cond_14

    :cond_4
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v6, v8, :cond_13

    move/from16 v6, v16

    :goto_5
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1b

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v8

    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, [B

    const-string/jumbo v6, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v9

    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_5
    :goto_6
    move-object/from16 v17, v8

    :cond_6
    :goto_7
    add-int v16, v16, v18

    goto :goto_3

    :cond_7
    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move v8, v6

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x2

    if-ne v8, v6, :cond_18

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    const/16 v8, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_9
    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_a

    const-string/jumbo v8, "audio/eac3"

    goto/16 :goto_2

    :cond_a
    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_b

    const-string/jumbo v8, "audio/vnd.dts"

    goto/16 :goto_2

    :cond_b
    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_c

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_d

    :cond_c
    const-string/jumbo v8, "audio/vnd.dts.hd"

    goto/16 :goto_2

    :cond_d
    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_e

    const-string/jumbo v8, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2

    :cond_e
    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_f

    const-string/jumbo v8, "audio/3gpp"

    goto/16 :goto_2

    :cond_f
    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_10

    const-string/jumbo v8, "audio/amr-wb"

    goto/16 :goto_2

    :cond_10
    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_11

    sget v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_3

    :cond_11
    const-string/jumbo v8, "audio/raw"

    goto/16 :goto_2

    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->findEsdsPosition(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)I

    move-result v6

    goto/16 :goto_5

    :cond_14
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v6, v8, :cond_15

    add-int/lit8 v6, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_7

    :cond_15
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v6, v8, :cond_16

    add-int/lit8 v6, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseEAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_7

    :cond_16
    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ddts:I

    if-ne v6, v8, :cond_6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v15}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p9

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-nez v6, :cond_18

    if-eqz v7, :cond_18

    const-string/jumbo v6, "audio/raw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    const/16 v16, 0x2

    :goto_8
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    if-nez v17, :cond_1a

    const/4 v14, 0x0

    :goto_9
    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v16}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    :cond_18
    return-void

    :cond_19
    const/16 v16, -0x1

    goto :goto_8

    :cond_1a
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_9

    :cond_1b
    move-object/from16 v8, v17

    goto/16 :goto_6
.end method

.method private static parseAvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    .locals 8

    const/4 v2, 0x0

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v0, 0x1

    const/4 v0, 0x3

    if-ne v3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v5, v1, 0x1f

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    new-instance v1, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    :cond_3
    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    invoke-direct {v1, v4, v3, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;-><init>(Ljava/util/List;IF)V

    return-object v1
.end method

.method private static parseEdts(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz p0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    new-array v6, v5, [J

    new-array v7, v5, [J

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    if-ne v4, v8, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v6, v2

    if-ne v4, v8, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v7, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readShort()S

    move-result v0

    if-eq v0, v8, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseEsdsFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_0
    const-string/jumbo v1, "audio/mpeg"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "video/mp4v-es"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "video/avc"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "audio/ac3"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "audio/eac3"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "audio/vnd.dts"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "audio/vnd.dts.hd"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseExpandableClassSize(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v0, v1, 0x7f

    :goto_0
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static parseHdlr(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseHvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v5, v0, 0x3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v7

    move v3, v1

    move v4, v1

    :goto_0
    if-ge v3, v6, :cond_1

    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v0, v1

    move v2, v4

    :goto_1
    if-ge v0, v8, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    add-int/lit8 v9, v4, 0x4

    add-int/2addr v2, v9

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    new-array v7, v4, [B

    move v3, v1

    move v0, v1

    :goto_2
    if-ge v3, v6, :cond_3

    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v2, v0

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    sget-object v10, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    sget-object v11, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    invoke-static {v10, v1, v7, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v10, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v10, v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    invoke-static {v10, v11, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v9

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v1, v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4
.end method

.method private static parseIlst(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 9

    const/4 v8, 0x4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_DASHES:I

    if-ne v0, v1, :cond_6

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-ge v5, v4, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int/lit8 v5, v5, -0xc

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    sget v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mean:I

    if-ne v6, v7, :cond_1

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_name:I

    if-ne v6, v7, :cond_2

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget v7, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_data:I

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v5, -0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "com.apple.iTunes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->createFromComment(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v3

    :cond_5
    return-object v3

    :cond_6
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0
.end method

.method private static parseMdhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    if-nez v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parseMetaAtom(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 4

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    new-instance v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    add-int/lit8 v2, v0, -0x8

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseIlst(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseMvhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)F
    .locals 2

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v3, v0

    :goto_0
    sub-int v0, v3, p1

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    if-lez v4, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v5, "childAtomSize should be positive"

    invoke-static {v0, v5}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v0, v5, :cond_3

    invoke-static {p0, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    :goto_2
    const-string/jumbo v2, "frma atom is mandatory"

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v2, p3, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    aput-object v1, v2, p4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    add-int v0, v3, v4

    move v3, v0

    goto :goto_0
.end method

.method private static parseSchiFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x8

    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v4, v5, :cond_1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x8

    move v2, v1

    move-object v1, v0

    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_3

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v4, v5, :cond_2

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    goto :goto_1

    :cond_2
    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v4, v5, :cond_0

    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSchiFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static parseStbl(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;
    .locals 34

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    :goto_0
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v26

    if-nez v26, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    const/4 v3, 0x0

    new-array v3, v3, [J

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [J

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    :goto_1
    return-object v2

    :cond_0
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stz2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v3, "Track has no sample table size information"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v4, 0x1

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    :cond_3
    iget-object v6, v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v7, v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v0, v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v27, v0

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    :goto_2
    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    :goto_3
    new-instance v28, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;

    move-object/from16 v0, v28

    invoke-direct {v0, v7, v6, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)V

    const/16 v4, 0xc

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v23, v4, -0x1

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v22

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    if-eqz v5, :cond_4

    const/16 v4, 0xc

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    :cond_4
    const/4 v6, -0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v32, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v32

    :goto_4
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "audio/raw"

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v23, :cond_8

    if-nez v17, :cond_8

    if-nez v3, :cond_8

    const/4 v7, 0x1

    :goto_5
    const/4 v8, 0x0

    if-nez v7, :cond_17

    move/from16 v0, v26

    new-array v15, v0, [J

    move/from16 v0, v26

    new-array v14, v0, [I

    move/from16 v0, v26

    new-array v13, v0, [J

    move/from16 v0, v26

    new-array v12, v0, [I

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-wide/from16 v24, v10

    move/from16 v10, v21

    move/from16 v11, v23

    move/from16 v23, v22

    move/from16 v22, v7

    move/from16 v7, v20

    move/from16 v32, v17

    move/from16 v17, v4

    move/from16 v4, v32

    move/from16 v33, v16

    move/from16 v16, v3

    move/from16 v3, v33

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    move-wide/from16 v20, v18

    move/from16 v18, v9

    :goto_7
    if-nez v18, :cond_9

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    move-object/from16 v0, v28

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v28

    iget v9, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move-wide/from16 v20, v18

    move/from16 v18, v9

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x0

    move/from16 v32, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v32

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_b

    :goto_8
    if-nez v7, :cond_a

    if-lez v4, :cond_a

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v7, v7, -0x1

    :cond_b
    aput-wide v20, v15, v22

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v9

    aput v9, v14, v22

    aget v9, v14, v22

    if-le v9, v8, :cond_c

    aget v8, v14, v22

    :cond_c
    int-to-long v0, v3

    move-wide/from16 v30, v0

    add-long v30, v30, v24

    aput-wide v30, v13, v22

    if-nez v6, :cond_e

    const/4 v9, 0x1

    :goto_9
    aput v9, v12, v22

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v9, 0x1

    aput v9, v12, v22

    add-int/lit8 v9, v16, -0x1

    if-lez v9, :cond_2d

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v16

    move/from16 v16, v9

    :cond_d
    :goto_a
    int-to-long v0, v10

    move-wide/from16 v30, v0

    add-long v24, v24, v30

    add-int/lit8 v9, v23, -0x1

    if-nez v9, :cond_2c

    if-lez v11, :cond_2c

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    add-int/lit8 v11, v11, -0x1

    :goto_b
    aget v19, v14, v22

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v20, v20, v30

    add-int/lit8 v19, v18, -0x1

    add-int/lit8 v18, v22, 0x1

    move/from16 v22, v18

    move/from16 v23, v10

    move v10, v9

    move/from16 v9, v19

    move-wide/from16 v18, v20

    goto/16 :goto_6

    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    if-nez v7, :cond_10

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    :goto_d
    if-lez v4, :cond_12

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_e
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    goto :goto_e

    :cond_12
    if-nez v16, :cond_13

    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    if-nez v23, :cond_14

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    if-nez v9, :cond_15

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    if-nez v11, :cond_16

    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    move-object v7, v12

    move-object v6, v13

    move v5, v8

    move-object v4, v14

    move-object v3, v15

    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-nez v2, :cond_19

    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static {v6, v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_13
    const/4 v2, 0x0

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    goto :goto_10

    :cond_15
    const/4 v2, 0x0

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    goto :goto_12

    :cond_17
    move-object/from16 v0, v28

    iget v3, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v3, v3, [J

    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [I

    :goto_14
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, v28

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v28

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v6, v3, v5

    move-object/from16 v0, v28

    iget v5, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v28

    iget v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v6, v4, v5

    goto :goto_14

    :cond_18
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v2

    move/from16 v0, v21

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v2

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    iget v5, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    iget-object v6, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    iget-object v7, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    goto :goto_13

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    :goto_15
    array-length v8, v6

    if-ge v2, v8, :cond_1a

    aget-wide v8, v6, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    aput-wide v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1a
    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_1b
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    :goto_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ge v2, v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v18, v8, v2

    const-wide/16 v8, -0x1

    cmp-long v8, v18, v8

    if-eqz v8, :cond_2b

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1, v10, v11}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v11

    add-long v8, v8, v18

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-static {v6, v8, v9, v10, v12}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v9

    sub-int v8, v9, v11

    add-int v10, v16, v8

    if-eq v15, v11, :cond_1c

    const/4 v8, 0x1

    :goto_17
    or-int/2addr v8, v14

    :goto_18
    add-int/lit8 v2, v2, 0x1

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    goto :goto_16

    :cond_1c
    const/4 v8, 0x0

    goto :goto_17

    :cond_1d
    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_20

    const/4 v2, 0x1

    :goto_19
    or-int v23, v14, v2

    if-eqz v23, :cond_21

    move/from16 v0, v16

    new-array v2, v0, [J

    move-object/from16 v22, v2

    :goto_1a
    if-eqz v23, :cond_22

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v21, v2

    :goto_1b
    if-eqz v23, :cond_23

    const/4 v10, 0x0

    :goto_1c
    if-eqz v23, :cond_24

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v17, v2

    :goto_1d
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v24, v0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v14, v5

    move-wide/from16 v18, v8

    move v5, v10

    :goto_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ge v2, v8, :cond_26

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v26, v8, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v8, v8, v2

    const-wide/16 v10, -0x1

    cmp-long v10, v26, v10

    if-eqz v10, :cond_2a

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    add-long v12, v26, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v26

    invoke-static {v6, v0, v1, v10, v11}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v10

    const/4 v11, 0x1

    const/4 v15, 0x0

    invoke-static {v6, v12, v13, v11, v15}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v25

    if-eqz v23, :cond_1e

    sub-int v11, v25, v10

    move-object/from16 v0, v22

    invoke-static {v3, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v21

    invoke-static {v4, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    invoke-static {v7, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    move/from16 v20, v10

    move/from16 v16, v14

    :goto_1f
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_25

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v10, v18

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v28

    aget-wide v10, v6, v20

    sub-long v10, v10, v26

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    add-long v10, v10, v28

    aput-wide v10, v24, v16

    if-eqz v23, :cond_1f

    aget v10, v21, v16

    if-le v10, v5, :cond_1f

    aget v5, v4, v20

    :cond_1f
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v10, v20, 0x1

    move/from16 v20, v10

    goto :goto_1f

    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_21
    move-object/from16 v22, v3

    goto/16 :goto_1a

    :cond_22
    move-object/from16 v21, v4

    goto/16 :goto_1b

    :cond_23
    move v10, v5

    goto/16 :goto_1c

    :cond_24
    move-object/from16 v17, v7

    goto/16 :goto_1d

    :cond_25
    move v10, v5

    move/from16 v5, v16

    :goto_20
    add-long v8, v8, v18

    add-int/lit8 v2, v2, 0x1

    move v14, v5

    move-wide/from16 v18, v8

    move v5, v10

    goto/16 :goto_1e

    :cond_26
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_21
    move-object/from16 v0, v17

    array-length v4, v0

    if-ge v2, v4, :cond_28

    if-nez v3, :cond_28

    aget v4, v17, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    :goto_22
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_27
    const/4 v4, 0x0

    goto :goto_22

    :cond_28
    if-nez v3, :cond_29

    new-instance v2, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v3, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_2a
    move v10, v5

    move v5, v14

    goto :goto_20

    :cond_2b
    move v8, v14

    move v9, v15

    move/from16 v10, v16

    goto/16 :goto_18

    :cond_2c
    move/from16 v32, v10

    move v10, v9

    move/from16 v9, v32

    goto/16 :goto_b

    :cond_2d
    move/from16 v16, v9

    goto/16 :goto_a

    :cond_2e
    move/from16 v32, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v32

    goto/16 :goto_4
.end method

.method private static parseStsd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .locals 26

    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v24

    new-instance v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move/from16 v0, v24

    invoke-direct {v11, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v24

    if-ge v12, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v4, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v4, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v4, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v4, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v4, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v4, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v4, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v4, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v4, v2, :cond_3

    :cond_0
    move-object/from16 v3, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    invoke-static/range {v3 .. v12}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    :cond_1
    :goto_2
    add-int v2, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v4, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v4, v2, :cond_5

    :cond_4
    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, p1

    move-wide/from16 v18, p2

    move-object/from16 v20, p5

    move/from16 v21, p6

    move-object/from16 v22, v11

    move/from16 v23, v12

    invoke-static/range {v13 .. v23}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    :cond_5
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v4, v2, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/ttml+xml"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto :goto_2

    :cond_6
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v4, v2, :cond_7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/x-quicktime-tx3g"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto :goto_2

    :cond_7
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v4, v2, :cond_8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "application/x-mp4vtt"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_2

    :cond_8
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v4, v2, :cond_1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "application/ttml+xml"

    const/16 v16, -0x1

    const-wide/16 v20, 0x0

    move-wide/from16 v17, p2

    move-object/from16 v19, p5

    invoke-static/range {v14 .. v21}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_2

    :cond_9
    return-object v11
.end method

.method private static parseTkhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    .locals 13

    const-wide/16 v4, -0x1

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v3, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    if-nez v8, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v10

    if-nez v8, :cond_0

    move v1, v3

    :cond_0
    move v7, v6

    :goto_1
    if-ge v7, v1, :cond_1

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    add-int v12, v10, v7

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    move v0, v6

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move-wide v0, v4

    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    const/high16 v7, 0x10000

    if-nez v2, :cond_7

    if-ne v4, v7, :cond_7

    neg-int v8, v7

    if-ne v3, v8, :cond_7

    if-nez v5, :cond_7

    const/16 v2, 0x5a

    :goto_3
    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v3, v9, v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v3

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-nez v8, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_4
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-nez v7, :cond_2

    move-wide v0, v4

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_4

    :cond_7
    if-nez v2, :cond_8

    neg-int v8, v7

    if-ne v4, v8, :cond_8

    if-ne v3, v7, :cond_8

    if-nez v5, :cond_8

    const/16 v2, 0x10e

    goto :goto_3

    :cond_8
    neg-int v8, v7

    if-ne v2, v8, :cond_9

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    neg-int v2, v7

    if-ne v5, v2, :cond_9

    const/16 v2, 0xb4

    goto :goto_3

    :cond_9
    move v2, v6

    goto :goto_3
.end method

.method public static parseTrak(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    .locals 28

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v8

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseHdlr(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v15

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_text:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_sbtl:I

    if-eq v15, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_subt:I

    if-eq v15, v2, :cond_0

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseTkhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v16

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    # getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->duration:J
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$000(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v2

    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseMvhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-wide/16 v10, -0x1

    :goto_2
    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v8, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseMdhd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    # getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    # getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$200(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v12

    iget-object v13, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v14, p4

    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseStsd(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseEdts(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v5

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-nez v2, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    goto :goto_2

    :cond_2
    new-instance v13, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    # getter for: Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v22, v0

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v23, v0

    iget v0, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v24, v0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [J

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v26}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;-><init>(IIJJJLorg/telegram/messenger/exoplayer/MediaFormat;[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v2, p2

    goto/16 :goto_1
.end method

.method public static parseUdta(Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;Z)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 6

    const/4 v0, 0x0

    const/16 v5, 0x8

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :goto_1
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v5, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseMetaAtom(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1
.end method

.method private static parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IIIIJILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 15

    add-int/lit8 v4, p2, 0x8

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    const/4 v7, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v4, 0x32

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v4

    sget v5, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :cond_0
    const/4 v12, 0x0

    const/4 v5, 0x0

    move v8, v4

    :goto_0
    sub-int v4, v8, p2

    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v9

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v4

    sub-int v4, v4, p2

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    :cond_1
    if-nez v5, :cond_10

    :goto_1
    return-void

    :cond_2
    if-lez v13, :cond_4

    const/4 v4, 0x1

    :goto_2
    const-string/jumbo v6, "childAtomSize should be positive"

    invoke-static {v4, v6}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    if-ne v4, v6, :cond_6

    if-nez v5, :cond_5

    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const-string/jumbo v5, "video/avc"

    invoke-static {p0, v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseAvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    move-result-object v4

    iget-object v12, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;->initializationData:Ljava/util/List;

    iget v6, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p8

    iput v6, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v7, :cond_3

    iget v14, v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$AvcCData;->pixelWidthAspectRatio:F

    :cond_3
    move v4, v7

    :goto_4
    add-int v6, v8, v13

    move v8, v6

    move v7, v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v4, v6, :cond_8

    if-nez v5, :cond_7

    const/4 v4, 0x1

    :goto_5
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const-string/jumbo v6, "video/hevc"

    invoke-static {p0, v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseHvcCFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v9

    iget-object v4, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    iget-object v4, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p8

    iput v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v12, v5

    move v4, v7

    move-object v5, v6

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v4, v6, :cond_a

    if-nez v5, :cond_9

    const/4 v4, 0x1

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const-string/jumbo v5, "video/3gpp"

    move v4, v7

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_6

    :cond_a
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v4, v6, :cond_c

    if-nez v5, :cond_b

    const/4 v4, 0x1

    :goto_7
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-static {p0, v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v5

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object v5, v4

    move v4, v7

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    goto :goto_7

    :cond_c
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v4, v6, :cond_d

    invoke-static {p0, v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;->parsePaspFromParent(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)F

    move-result v14

    const/4 v4, 0x1

    goto :goto_4

    :cond_d
    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_vpcC:I

    if-ne v4, v6, :cond_11

    if-nez v5, :cond_e

    const/4 v4, 0x1

    :goto_8
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    sget v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_f

    const-string/jumbo v5, "video/x-vnd.on2.vp8"

    :goto_9
    move v4, v7

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    goto :goto_8

    :cond_f
    const-string/jumbo v5, "video/x-vnd.on2.vp9"

    goto :goto_9

    :cond_10
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-wide/from16 v8, p5

    move/from16 v13, p7

    invoke-static/range {v4 .. v14}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, p8

    iput-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    goto/16 :goto_1

    :cond_11
    move v4, v7

    goto/16 :goto_4
.end method
