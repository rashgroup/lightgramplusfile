.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Lorg/telegram/messenger/exoplayer2/Format;

.field private final headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private final headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private isEac3:Z

.field private final language:Ljava/lang/String;

.field private lastByteWas0B:Z

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseHeader()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->isEac3:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x2d

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseEac3SyncframeFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeSize([B)I

    move-result v0

    :goto_2
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount([B)I

    move-result v0

    :goto_3
    const-wide/32 v2, 0xf4240

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseAc3SyncframeFormat(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBits:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_3
.end method

.method private skipToNextSync(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 5

    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v3, 0x77

    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    :goto_2
    return v1

    :cond_2
    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->skipToNextSync(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0xb

    aput-byte v1, v0, v6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v4

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, p1, v0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->parseHeader()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->headerScratchBytes:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iput v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->timeUs:J

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->state:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->bytesRead:I

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    return-void
.end method
