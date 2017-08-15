.class abstract Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;
    }
.end annotation


# static fields
.field private static final STATE_END_OF_INPUT:I = 0x3

.field private static final STATE_READ_HEADERS:I = 0x0

.field private static final STATE_READ_PAYLOAD:I = 0x2

.field private static final STATE_SKIP_HEADERS:I = 0x1


# instance fields
.field private currentGranule:J

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private formatSet:Z

.field private lengthOfReadPacket:J

.field private oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

.field private oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

.field private payloadStartPosition:J

.field private sampleRate:I

.field private seekMapSet:Z

.field private setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

.field private state:I

.field private targetGranule:J

.field private trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readHeaders(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x1

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {p0, v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->formatSet:Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    :goto_2
    iput-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;

    invoke-direct {v0, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->getPageHeader()Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v7, v6

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v6, p0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;-><init>(JJLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;IJ)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_2
.end method

.method private readPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;->position:J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    neg-long v0, v0

    const-wide/16 v2, 0x2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;->createSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    :cond_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->getPayload()Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->preparePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-ltz v1, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v2, v8

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-interface {v1, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    :cond_4
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected convertGranuleToTime(J)J
    .locals 5

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected convertTimeToGranule(J)J
    .locals 5

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    return-void
.end method

.method protected onSeekEnd(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method

.method protected abstract preparePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
.end method

.method final read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->readHeaders(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->readPayload(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract readHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
.end method

.method protected reset(Z)V
    .locals 4

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->setupData:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->payloadStartPosition:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->currentGranule:J

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_0
.end method

.method final seek(J)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggPacket:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->reset()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;->startSeek()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->targetGranule:J

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->state:I

    goto :goto_1
.end method
