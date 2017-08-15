.class final Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "DtsReader.java"


# static fields
.field private static final HEADER_SIZE:I = 0xf

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2

.field private static final SYNC_VALUE:I = 0x7ffe8001

.field private static final SYNC_VALUE_SIZE:I = 0x4


# instance fields
.field private bytesRead:I

.field private final headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private syncBytes:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xf

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v1, 0x7f

    aput-byte v1, v0, v3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, -0x2

    aput-byte v1, v0, v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, 0x2

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, 0x3

    aput-byte v4, v0, v1

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->state:I

    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseHeader()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-nez v1, :cond_0

    const-wide/16 v2, -0x1

    invoke-static {v0, v4, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->parseDtsFormat([BLjava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->getDtsFrameSize([B)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->sampleSize:I

    const-wide/32 v2, 0xf4240

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->sampleDurationUs:J

    return-void
.end method

.method private skipToNextSync(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 3

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    const v2, 0x7ffe8001

    if-ne v1, v2, :cond_0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 9

    const/16 v8, 0xf

    const/4 v4, 0x1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->skipToNextSync(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    iput v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->state:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {p0, p1, v0, v8}, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->parseHeader()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-interface {v0, v1, v8}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->state:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->sampleSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->sampleSize:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->timeUs:J

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->timeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->timeUs:J

    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->state:I

    goto :goto_0

    :cond_1
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

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->timeUs:J

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->state:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->bytesRead:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/DtsReader;->syncBytes:I

    return-void
.end method
