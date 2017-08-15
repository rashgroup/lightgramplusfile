.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_cenc:I

.field private static final TYPE_clcp:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "vide"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    const-string/jumbo v0, "soun"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    const-string/jumbo v0, "text"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    const-string/jumbo v0, "sbtl"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    const-string/jumbo v0, "subt"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    const-string/jumbo v0, "clcp"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    const-string/jumbo v0, "cenc"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_cenc:I

    const-string/jumbo v0, "meta"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findEsdsPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)I
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    :goto_0
    sub-int v0, v1, p1

    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v3, "childAtomSize should be positive"

    invoke-static {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

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

.method private static parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 20

    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v6, 0x0

    if-eqz p6, :cond_7

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v8, v6

    :goto_0
    if-eqz v8, :cond_0

    const/4 v6, 0x1

    if-ne v8, v6, :cond_8

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/16 v8, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v18

    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v8, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)I

    move-result p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_2
    const/4 v8, 0x0

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_9

    const-string/jumbo v8, "audio/ac3"

    :cond_3
    :goto_2
    const/16 v17, 0x0

    move v12, v6

    move v11, v7

    move-object v7, v8

    :goto_3
    sub-int v6, v18, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v19

    if-lez v19, :cond_13

    const/4 v6, 0x1

    :goto_4
    const-string/jumbo v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v6, v8, :cond_4

    if-eqz p6, :cond_15

    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    if-ne v6, v8, :cond_15

    :cond_4
    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v6, v8, :cond_14

    move/from16 v6, v18

    :goto_5
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1c

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

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

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v9

    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :cond_5
    :goto_6
    move-object/from16 v17, v8

    :cond_6
    :goto_7
    add-int v18, v18, v19

    goto :goto_3

    :cond_7
    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v8, v6

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x2

    if-ne v8, v6, :cond_19

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    const/16 v8, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_9
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_a

    const-string/jumbo v8, "audio/eac3"

    goto/16 :goto_2

    :cond_a
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_b

    const-string/jumbo v8, "audio/vnd.dts"

    goto/16 :goto_2

    :cond_b
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_c

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_d

    :cond_c
    const-string/jumbo v8, "audio/vnd.dts.hd"

    goto/16 :goto_2

    :cond_d
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_e

    const-string/jumbo v8, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2

    :cond_e
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_f

    const-string/jumbo v8, "audio/3gpp"

    goto/16 :goto_2

    :cond_f
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_10

    const-string/jumbo v8, "audio/amr-wb"

    goto/16 :goto_2

    :cond_10
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_11

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_12

    :cond_11
    const-string/jumbo v8, "audio/raw"

    goto/16 :goto_2

    :cond_12
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_3

    const-string/jumbo v8, "audio/mpeg"

    goto/16 :goto_2

    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)I

    move-result v6

    goto/16 :goto_5

    :cond_15
    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v6, v8, :cond_16

    add-int/lit8 v6, v18, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v6, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_7

    :cond_16
    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v6, v8, :cond_17

    add-int/lit8 v6, v18, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-static {v0, v6, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_7

    :cond_17
    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    if-ne v6, v8, :cond_6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, p7

    move-object/from16 v16, p5

    invoke-static/range {v6 .. v16}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_7

    :cond_18
    move-object/from16 v0, p8

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v6, :cond_19

    if-eqz v7, :cond_19

    const-string/jumbo v6, "audio/raw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v13, 0x2

    :goto_8
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    if-nez v17, :cond_1b

    const/4 v14, 0x0

    :goto_9
    const/16 v16, 0x0

    move-object/from16 v15, p7

    move-object/from16 v17, p5

    invoke-static/range {v6 .. v17}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    :cond_19
    return-void

    :cond_1a
    const/4 v13, -0x1

    goto :goto_8

    :cond_1b
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_9

    :cond_1c
    move-object/from16 v8, v17

    goto/16 :goto_6
.end method

.method private static parseEdts(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz p0, :cond_0

    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    new-array v6, v5, [J

    new-array v7, v5, [J

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    if-ne v4, v8, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v6, v2

    if-ne v4, v8, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v7, v2

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v0

    if-eq v0, v8, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseEsdsFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
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

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

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

.method private static parseExpandableClassSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v0, v1, 0x7f

    :goto_0
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static parseHdlr(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    if-eq v0, v1, :cond_2

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    if-eq v0, v1, :cond_2

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    if-eq v0, v1, :cond_2

    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    sget v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static parseIlst(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_1
.end method

.method private static parseMdhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    if-nez v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

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

.method private static parseMetaAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 4

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseMvhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)F
    .locals 2

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static parseProjFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v1, v0

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v2, v0

    :goto_0
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v4, "childAtomSize should be positive"

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v0, v4, :cond_2

    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseSinfFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v1, p3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v0, v1, p4

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    add-int v0, v2, v3

    move v2, v0

    goto :goto_0
.end method

.method private static parseSchiFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x8

    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v4, v5, :cond_1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

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

.method private static parseSinfFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 v0, p1, 0x8

    move-object v1, v5

    move v2, v4

    move v6, v0

    move-object v0, v5

    :goto_0
    sub-int v7, v6, p1

    if-ge v7, p2, :cond_4

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_1
    add-int/2addr v6, v7

    goto :goto_0

    :cond_1
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v8, v9, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v8, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->TYPE_cenc:I

    if-ne v2, v8, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v8, v9, :cond_0

    invoke-static {p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_7

    if-eqz v0, :cond_5

    move v2, v3

    :goto_2
    const-string/jumbo v5, "frma atom is mandatory"

    invoke-static {v2, v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v1, :cond_6

    :goto_3
    const-string/jumbo v2, "schi->tenc atom is mandatory"

    invoke-static {v3, v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    move-object v0, v5

    goto :goto_4
.end method

.method public static parseStbl(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 32

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    :goto_0
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v28

    if-nez v28, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    const/4 v3, 0x0

    new-array v3, v3, [J

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [J

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    :goto_1
    return-object v2

    :cond_0
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v3, "Track has no sample table size information"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v4, 0x1

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    :cond_3
    iget-object v6, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v7, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v0, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v29, v0

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    :goto_2
    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    :goto_3
    new-instance v30, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    move-object/from16 v0, v30

    invoke-direct {v0, v7, v6, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v4, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v23, v4, -0x1

    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v22

    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    if-eqz v5, :cond_4

    const/16 v4, 0xc

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    :cond_4
    const/4 v6, -0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v31, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v31

    :goto_4
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "audio/raw"

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v23, :cond_8

    if-nez v13, :cond_8

    if-nez v3, :cond_8

    const/4 v7, 0x1

    :goto_5
    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    if-nez v7, :cond_16

    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v17, v0

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move/from16 v0, v28

    new-array v15, v0, [J

    move/from16 v0, v28

    new-array v14, v0, [I

    const-wide/16 v20, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move/from16 v24, v7

    move/from16 v25, v22

    move/from16 v7, v18

    move/from16 v18, v3

    move v3, v12

    move/from16 v31, v4

    move v4, v13

    move-wide v12, v8

    move v8, v11

    move v9, v10

    move/from16 v10, v19

    move/from16 v11, v23

    move/from16 v19, v31

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    move-wide/from16 v22, v20

    move/from16 v20, v9

    :goto_7
    if-nez v20, :cond_9

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    move-object/from16 v0, v30

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move-wide/from16 v22, v20

    move/from16 v20, v9

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x0

    move/from16 v31, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v31

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_b

    :goto_8
    if-nez v7, :cond_a

    if-lez v4, :cond_a

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v7, v7, -0x1

    :cond_b
    aput-wide v22, v17, v24

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v9

    aput v9, v16, v24

    aget v9, v16, v24

    if-le v9, v8, :cond_c

    aget v8, v16, v24

    :cond_c
    int-to-long v0, v3

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    aput-wide v26, v15, v24

    if-nez v6, :cond_e

    const/4 v9, 0x1

    :goto_9
    aput v9, v14, v24

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/4 v9, 0x1

    aput v9, v14, v24

    add-int/lit8 v9, v18, -0x1

    if-lez v9, :cond_2e

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v18

    move/from16 v18, v9

    :cond_d
    :goto_a
    int-to-long v0, v10

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    add-int/lit8 v9, v25, -0x1

    if-nez v9, :cond_2d

    if-lez v11, :cond_2d

    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    add-int/lit8 v11, v11, -0x1

    :goto_b
    aget v12, v16, v24

    int-to-long v12, v12

    add-long v22, v22, v12

    add-int/lit8 v13, v20, -0x1

    add-int/lit8 v12, v24, 0x1

    move/from16 v24, v12

    move-wide/from16 v20, v22

    move/from16 v25, v10

    move v10, v9

    move v9, v13

    move-wide/from16 v12, v26

    goto/16 :goto_6

    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    if-nez v7, :cond_10

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    :goto_d
    if-lez v4, :cond_12

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_e
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    goto :goto_e

    :cond_12
    if-nez v18, :cond_13

    if-nez v25, :cond_13

    if-nez v9, :cond_13

    if-eqz v11, :cond_14

    :cond_13
    const-string/jumbo v2, "AtomParsers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inconsistent stbl box for track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remainingSamplesInChunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object v7, v14

    move-object v6, v15

    move v5, v8

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-wide v14, v12

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-eqz v2, :cond_15

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_15
    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v6, v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, v30

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v3, v3, [J

    move-object/from16 v0, v30

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [I

    :goto_10
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_17

    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v30

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v6, v3, v5

    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v30

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v6, v4, v5

    goto :goto_10

    :cond_17
    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v2

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v2

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    iget v5, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    iget-object v6, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    iget-object v7, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    move-wide v14, v8

    goto :goto_f

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1a

    array-length v2, v6

    const/4 v8, 0x2

    if-lt v2, v8, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v8, 0x0

    aget-wide v16, v2, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    add-long v8, v8, v16

    const/4 v2, 0x0

    aget-wide v10, v6, v2

    cmp-long v2, v10, v16

    if-gtz v2, :cond_1a

    const/4 v2, 0x1

    aget-wide v10, v6, v2

    cmp-long v2, v16, v10

    if-gez v2, :cond_1a

    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aget-wide v10, v6, v2

    cmp-long v2, v10, v8

    if-gez v2, :cond_1a

    cmp-long v2, v8, v14

    if-gtz v2, :cond_1a

    sub-long/2addr v14, v8

    const/4 v2, 0x0

    aget-wide v8, v6, v2

    sub-long v8, v16, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide v8, v14

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v16, v10

    if-nez v2, :cond_19

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1a

    :cond_19
    const-wide/32 v10, 0x7fffffff

    cmp-long v2, v16, v10

    if-gtz v2, :cond_1a

    const-wide/32 v10, 0x7fffffff

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1a

    move-wide/from16 v0, v16

    long-to-int v2, v0

    move-object/from16 v0, p2

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v2, v8

    move-object/from16 v0, p2

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v6, v8, v9, v10, v11}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    :goto_11
    array-length v8, v6

    if-ge v2, v8, :cond_1b

    aget-wide v8, v6, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    aput-wide v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1b
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_1c
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    :goto_12
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ge v2, v8, :cond_1e

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v18, v8, v2

    const-wide/16 v8, -0x1

    cmp-long v8, v18, v8

    if-eqz v8, :cond_2c

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1, v10, v11}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v11

    add-long v8, v8, v18

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-static {v6, v8, v9, v10, v12}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v9

    sub-int v8, v9, v11

    add-int v10, v16, v8

    if-eq v15, v11, :cond_1d

    const/4 v8, 0x1

    :goto_13
    or-int/2addr v8, v14

    :goto_14
    add-int/lit8 v2, v2, 0x1

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    goto :goto_12

    :cond_1d
    const/4 v8, 0x0

    goto :goto_13

    :cond_1e
    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_21

    const/4 v2, 0x1

    :goto_15
    or-int v23, v14, v2

    if-eqz v23, :cond_22

    move/from16 v0, v16

    new-array v2, v0, [J

    move-object/from16 v22, v2

    :goto_16
    if-eqz v23, :cond_23

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v21, v2

    :goto_17
    if-eqz v23, :cond_24

    const/4 v10, 0x0

    :goto_18
    if-eqz v23, :cond_25

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v17, v2

    :goto_19
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v24, v0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v14, v5

    move-wide/from16 v18, v8

    move v5, v10

    :goto_1a
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ge v2, v8, :cond_27

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v26, v8, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v8, v8, v2

    const-wide/16 v10, -0x1

    cmp-long v10, v26, v10

    if-eqz v10, :cond_2b

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    add-long v12, v26, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v26

    invoke-static {v6, v0, v1, v10, v11}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v10

    const/4 v11, 0x1

    const/4 v15, 0x0

    invoke-static {v6, v12, v13, v11, v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v25

    if-eqz v23, :cond_1f

    sub-int v11, v25, v10

    move-object/from16 v0, v22

    invoke-static {v3, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v21

    invoke-static {v4, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    invoke-static {v7, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    move/from16 v20, v10

    move/from16 v16, v14

    :goto_1b
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_26

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v10, v18

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v28

    aget-wide v10, v6, v20

    sub-long v10, v10, v26

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    add-long v10, v10, v28

    aput-wide v10, v24, v16

    if-eqz v23, :cond_20

    aget v10, v21, v16

    if-le v10, v5, :cond_20

    aget v5, v4, v20

    :cond_20
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v10, v20, 0x1

    move/from16 v20, v10

    goto :goto_1b

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_22
    move-object/from16 v22, v3

    goto/16 :goto_16

    :cond_23
    move-object/from16 v21, v4

    goto/16 :goto_17

    :cond_24
    move v10, v5

    goto/16 :goto_18

    :cond_25
    move-object/from16 v17, v7

    goto/16 :goto_19

    :cond_26
    move v10, v5

    move/from16 v5, v16

    :goto_1c
    add-long v8, v8, v18

    add-int/lit8 v2, v2, 0x1

    move v14, v5

    move-wide/from16 v18, v8

    move v5, v10

    goto/16 :goto_1a

    :cond_27
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1d
    move-object/from16 v0, v17

    array-length v4, v0

    if-ge v2, v4, :cond_29

    if-nez v3, :cond_29

    aget v4, v17, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    :goto_1e
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_28
    const/4 v4, 0x0

    goto :goto_1e

    :cond_29
    if-nez v3, :cond_2a

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v3, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2a
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_2b
    move v10, v5

    move v5, v14

    goto :goto_1c

    :cond_2c
    move v8, v14

    move v9, v15

    move/from16 v10, v16

    goto/16 :goto_14

    :cond_2d
    move/from16 v31, v10

    move v10, v9

    move/from16 v9, v31

    goto/16 :goto_b

    :cond_2e
    move/from16 v18, v9

    goto/16 :goto_a

    :cond_2f
    move/from16 v31, v4

    move v4, v6

    move-object v6, v3

    move/from16 v3, v31

    goto/16 :goto_4
.end method

.method private static parseStsd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 22

    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v21

    new-instance v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move/from16 v0, v21

    invoke-direct {v9, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v10, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v10, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v3, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v3, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v3, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v3, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v3, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v3, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v3, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v3, v2, :cond_0

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v3, v2, :cond_3

    :cond_0
    move-object/from16 v2, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIIILorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    :cond_1
    :goto_2
    add-int v2, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-eq v3, v2, :cond_4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-ne v3, v2, :cond_5

    :cond_4
    move-object/from16 v11, p0

    move v12, v3

    move v13, v4

    move v14, v5

    move/from16 v15, p1

    move-object/from16 v16, p3

    move/from16 v17, p5

    move-object/from16 v18, p4

    move-object/from16 v19, v9

    move/from16 v20, v10

    invoke-static/range {v11 .. v20}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    :cond_5
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v3, v2, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "application/ttml+xml"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v17}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto :goto_2

    :cond_6
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v3, v2, :cond_7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "application/x-quicktime-tx3g"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v17}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_2

    :cond_7
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v3, v2, :cond_8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "application/x-mp4vtt"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v17}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_2

    :cond_8
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v3, v2, :cond_9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "application/ttml+xml"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v19}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;J)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_2

    :cond_9
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-ne v3, v2, :cond_a

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "application/cea-608"

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-static/range {v11 .. v17}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v2, 0x1

    iput v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    goto/16 :goto_2

    :cond_a
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    if-ne v3, v2, :cond_1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/x-camera-motion"

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p4

    invoke-static {v2, v3, v6, v7, v0}, Lorg/telegram/messenger/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_2

    :cond_b
    return-object v9
.end method

.method private static parseTkhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 13

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v3, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    if-nez v8, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v10

    if-nez v8, :cond_0

    move v1, v3

    :cond_0
    move v7, v6

    :goto_1
    if-ge v7, v1, :cond_1

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v12, v10, v7

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    move v0, v6

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move-wide v0, v4

    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    const/high16 v7, 0x10000

    if-nez v2, :cond_7

    if-ne v4, v7, :cond_7

    neg-int v8, v7

    if-ne v3, v8, :cond_7

    if-nez v5, :cond_7

    const/16 v2, 0x5a

    :goto_3
    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v3, v9, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v3

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-nez v8, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_4
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-nez v7, :cond_2

    move-wide v0, v4

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

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

.method public static parseTrak(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;JLorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .locals 24

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v8

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v14

    const/4 v2, -0x1

    if-ne v14, v2, :cond_0

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->duration:J
    invoke-static {v15}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v2

    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v8, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v8, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static {v15}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I
    invoke-static {v15}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v10

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v8 .. v13}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;Z)Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    sget v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v5

    iget-object v2, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v2, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    goto :goto_2

    :cond_2
    new-instance v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->id:I
    invoke-static {v15}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v10

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v18, v0

    iget v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    move/from16 v19, v0

    iget-object v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v20, v0

    iget v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v21, v0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [J

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [J

    move v11, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v23}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLorg/telegram/messenger/exoplayer2/Format;I[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v2, p2

    goto/16 :goto_1
.end method

.method public static parseUdta(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x8

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_1
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int v0, v2, v3

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseMetaAtom(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v3, -0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1
.end method

.method private static parseVideoSampleEntry(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IIIIILorg/telegram/messenger/exoplayer2/drm/DrmInitData;Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 19

    add-int/lit8 v5, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    const/4 v7, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v5, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    sget v6, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IILorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)I

    move-result p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_0
    const/4 v13, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    move v8, v5

    :goto_0
    sub-int v5, v8, p2

    move/from16 v0, p3

    if-ge v5, v0, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    sub-int v5, v5, p2

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    :cond_1
    if-nez v6, :cond_13

    :goto_1
    return-void

    :cond_2
    if-lez v12, :cond_4

    const/4 v5, 0x1

    :goto_2
    const-string/jumbo v14, "childAtomSize should be positive"

    invoke-static {v5, v14}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    sget v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    if-ne v5, v14, :cond_6

    if-nez v6, :cond_5

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    const-string/jumbo v6, "video/avc"

    add-int/lit8 v5, v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/AvcConfig;

    move-result-object v5

    iget-object v13, v5, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    iget v9, v5, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v7, :cond_3

    iget v15, v5, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    :cond_3
    move v5, v7

    :goto_4
    add-int v7, v8, v12

    move v8, v7

    move v7, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    sget v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v5, v14, :cond_8

    if-nez v6, :cond_7

    const/4 v5, 0x1

    :goto_5
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    const-string/jumbo v6, "video/hevc"

    add-int/lit8 v5, v9, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/HevcConfig;

    move-result-object v5

    iget-object v13, v5, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move v5, v7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    sget v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    if-ne v5, v14, :cond_b

    if-nez v6, :cond_9

    const/4 v5, 0x1

    :goto_6
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    sget v5, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    const-string/jumbo v6, "video/x-vnd.on2.vp8"

    :goto_7
    move v5, v7

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    goto :goto_7

    :cond_b
    sget v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v5, v14, :cond_d

    if-nez v6, :cond_c

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    const-string/jumbo v6, "video/3gpp"

    move v5, v7

    goto :goto_4

    :cond_c
    const/4 v5, 0x0

    goto :goto_8

    :cond_d
    sget v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v5, v14, :cond_f

    if-nez v6, :cond_e

    const/4 v5, 0x1

    :goto_9
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v6

    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object v6, v5

    move v5, v7

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    sget v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v5, v14, :cond_10

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)F

    move-result v15

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_10
    sget v14, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    if-ne v5, v14, :cond_11

    move-object/from16 v0, p0

    invoke-static {v0, v9, v12}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v16

    move v5, v7

    goto/16 :goto_4

    :cond_11
    sget v9, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    if-ne v5, v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_12
    move v5, v7

    goto/16 :goto_4

    :pswitch_0
    const/16 v17, 0x0

    move v5, v7

    goto/16 :goto_4

    :pswitch_1
    const/16 v17, 0x1

    move v5, v7

    goto/16 :goto_4

    :pswitch_2
    const/16 v17, 0x2

    move v5, v7

    goto/16 :goto_4

    :cond_13
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    move/from16 v14, p5

    move-object/from16 v18, p6

    invoke-static/range {v5 .. v18}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    move-object/from16 v0, p7

    iput-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
