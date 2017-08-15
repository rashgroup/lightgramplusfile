.class final Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DISPLAY_UNIT_PIXELS:I


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

.field public encryptionKeyId:[B

.field public flagDefault:Z

.field public flagForced:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public nalUnitLengthFieldLength:I

.field public number:I

.field public output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field public projectionData:[B

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public type:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private static parseFourCcVc1Private(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    const/16 v0, 0x10

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x31435657

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    :goto_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_2

    aget-byte v2, v1, v0

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    array-length v2, v1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Error parsing FourCC VC1 codec private"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseMsAcmCodecPrivate(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v3, 0xfffe

    if-ne v2, v3, :cond_3

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->access$300()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v2

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->access$300()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Error parsing MS/ACM codec private"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v0

    move v3, v4

    :goto_0
    :try_start_1
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_1

    add-int/lit16 v1, v2, 0xff

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p0, v3

    add-int/2addr v2, v3

    :goto_1
    aget-byte v3, p0, v1

    if-ne v3, v5, :cond_2

    add-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    aget-byte v1, p0, v3

    if-eq v1, v4, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-array v1, v2, [B

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    aget-byte v3, p0, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/2addr v0, v2

    aget-byte v2, p0, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method


# virtual methods
.method public initializeOutput(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;I)V
    .locals 14

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Unrecognized codec identifier."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    :cond_1
    :goto_1
    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v2, v0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    :goto_3
    or-int v10, v2, v0

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    :goto_4
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    return-void

    :pswitch_1
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "video/mpeg2"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v1, "video/mp4v-es"

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_5
    move-object v8, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :pswitch_4
    const-string/jumbo v1, "video/avc"

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/AvcConfig;

    move-result-object v0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    goto :goto_1

    :pswitch_5
    const-string/jumbo v1, "video/hevc"

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/HevcConfig;

    move-result-object v0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    goto :goto_1

    :pswitch_6
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseFourCcVc1Private(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_3

    const-string/jumbo v0, "video/x-unknown"

    :goto_6
    move-object v1, v0

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "video/wvc1"

    goto :goto_6

    :pswitch_7
    const-string/jumbo v1, "video/x-unknown"

    goto/16 :goto_1

    :pswitch_8
    const-string/jumbo v1, "audio/vorbis"

    const/16 v4, 0x2000

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_9
    const-string/jumbo v1, "audio/opus"

    const/16 v4, 0x1680

    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_a
    const-string/jumbo v1, "audio/mp4a-latm"

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_b
    const-string/jumbo v1, "audio/mpeg"

    const/16 v4, 0x1000

    goto/16 :goto_1

    :pswitch_c
    const-string/jumbo v1, "audio/ac3"

    goto/16 :goto_1

    :pswitch_d
    const-string/jumbo v1, "audio/eac3"

    goto/16 :goto_1

    :pswitch_e
    const-string/jumbo v1, "audio/true-hd"

    goto/16 :goto_1

    :pswitch_f
    const-string/jumbo v1, "audio/vnd.dts"

    goto/16 :goto_1

    :pswitch_10
    const-string/jumbo v1, "audio/vnd.dts.hd"

    goto/16 :goto_1

    :pswitch_11
    const-string/jumbo v1, "audio/x-flac"

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_12
    const-string/jumbo v1, "audio/raw"

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Non-PCM MS/ACM is unsupported"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    const-string/jumbo v1, "audio/raw"

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14
    const-string/jumbo v1, "application/x-subrip"

    goto/16 :goto_1

    :pswitch_15
    const-string/jumbo v1, "application/vobsub"

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_1

    :pswitch_16
    const-string/jumbo v1, "application/pgs"

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_7
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    :goto_7
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    :goto_8
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    :cond_8
    const/high16 v10, -0x40800000    # -1.0f

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float v10, v0, v2

    :cond_9
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v9, -0x1

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iget v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iget-object v13, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-static/range {v0 .. v13}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    goto/16 :goto_4

    :cond_a
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    goto :goto_7

    :cond_b
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_8

    :cond_c
    const-string/jumbo v0, "application/x-subrip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move v4, v10

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    goto/16 :goto_4

    :cond_d
    const-string/jumbo v0, "application/vobsub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "application/pgs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    move-object v4, v8

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    goto/16 :goto_4

    :cond_f
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "Unexpected MIME type."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_5
        -0x7ce7f3b0 -> :sswitch_3
        -0x76567dc0 -> :sswitch_15
        -0x6a615338 -> :sswitch_10
        -0x672350af -> :sswitch_a
        -0x585f4fcd -> :sswitch_d
        -0x51dc40b2 -> :sswitch_8
        -0x2016c535 -> :sswitch_4
        -0x2016c4e5 -> :sswitch_6
        -0x19552dbd -> :sswitch_18
        -0x1538b2ba -> :sswitch_13
        0x3c02325 -> :sswitch_c
        0x3c02353 -> :sswitch_e
        0x3c030c5 -> :sswitch_11
        0x4e86155 -> :sswitch_0
        0x4e86156 -> :sswitch_1
        0x5e8da3e -> :sswitch_19
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_12
        0x2b453ce4 -> :sswitch_16
        0x32fdf009 -> :sswitch_7
        0x54c61e47 -> :sswitch_17
        0x6bd6c624 -> :sswitch_2
        0x7446132a -> :sswitch_f
        0x7446b0a6 -> :sswitch_14
        0x744ad97d -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
