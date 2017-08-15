.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;
.super Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
    }
.end annotation


# static fields
.field private static final AUDIO_PACKET_TYPE:B = -0x1t

.field private static final FRAME_HEADER_SAMPLE_NUMBER_OFFSET:I = 0x4

.field private static final SEEKTABLE_PACKET_TYPE:B = 0x3t


# instance fields
.field private flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

.field private streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;)Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    return-object v0
.end method

.method private getFlacFrameBlockSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I
    .locals 2

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xc0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x240

    add-int/lit8 v0, v0, -0x2

    shl-int v0, v1, v0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUtf8EncodedLong()J

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x100

    add-int/lit8 v0, v0, -0x8

    shl-int v0, v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static isAudioPacket([B)Z
    .locals 3

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected preparePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->getFlacFrameBlockSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method protected readHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 14

    const/4 v11, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    if-nez v4, :cond_2

    new-instance v4, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    const/16 v5, 0x11

    invoke-direct {v4, v3, v5}, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;-><init>([BI)V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    const/16 v4, 0x9

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, -0x80

    aput-byte v5, v3, v4

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string/jumbo v3, "audio/x-flac"

    const/4 v5, -0x1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->bitRate()I

    move-result v6

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    iget v7, v4, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->channels:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    iget v8, v4, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    move-object v4, v2

    move-object v10, v2

    move-object v12, v2

    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    :cond_0
    :goto_0
    const/4 v11, 0x1

    :cond_1
    :goto_1
    return v11

    :cond_2
    aget-byte v4, v3, v11

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$1;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->parseSeekTable(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->setFirstFrameOffset(J)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_1
.end method

.method protected reset(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    :cond_0
    return-void
.end method
