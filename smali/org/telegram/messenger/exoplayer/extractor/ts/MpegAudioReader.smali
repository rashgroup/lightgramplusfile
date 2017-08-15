.class final Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "MpegAudioReader.java"


# static fields
.field private static final HEADER_SIZE:I = 0x4

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_FRAME:I = 0x2

.field private static final STATE_READING_HEADER:I = 0x1


# instance fields
.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

.field private final headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private lastByteWasFF:Z

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    return-void
.end method

.method private findHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v5, p1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v6

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v3, :cond_1

    aget-byte v3, v5, v4

    and-int/lit16 v3, v3, 0xe0

    const/16 v7, 0xe0

    if-ne v3, v7, :cond_1

    move v3, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v3, :cond_2

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v2, v5, v4

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_3
.end method

.method private readFrameRemainder(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0
.end method

.method private readHeaderRemainder(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v2, v3, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge v1, v12, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer/util/MpegAudioHeader;)Z

    move-result v1

    if-nez v1, :cond_1

    iput v10, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v11, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameSize:I

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v1, :cond_2

    const-wide/32 v2, 0xf4240

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameDurationUs:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v2, -0x1

    const/16 v3, 0x1000

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->channels:I

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->header:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move-object v8, v0

    move-object v9, v0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    iput-boolean v11, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->headerScratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-interface {v0, v1, v12}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    goto :goto_0
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 1

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->findHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->readHeaderRemainder(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->readFrameRemainder(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->state:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    return-void
.end method
