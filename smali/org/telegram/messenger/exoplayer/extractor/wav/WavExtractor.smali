.class public final Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;
.implements Lorg/telegram/messenger/exoplayer/extractor/SeekMap;


# static fields
.field private static final MAX_INPUT_SIZE:I = 0x8000


# instance fields
.field private bytesPerFrame:I

.field private extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private pendingBytes:I

.field private trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

.field private wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition(J)J
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 12

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader;->peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "Error initializing WavHeader. Did you sniff first?"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getBytesPerFrame()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->bytesPerFrame:I

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->hasDataBounds()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader;->skipToData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;)V

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const/4 v0, 0x0

    const-string/jumbo v1, "audio/raw"

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getBitrate()I

    move-result v2

    const v3, 0x8000

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getDurationUs()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getNumChannels()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getSampleRateHz()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v10}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getEncoding()I

    move-result v10

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {v11, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const v1, 0x8000

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->bytesPerFrame:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->bytesPerFrame:I

    mul-int v5, v1, v2

    if-lez v5, :cond_4

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    int-to-long v6, v1

    sub-long/2addr v2, v6

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->wavHeader:Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;->getTimeUs(J)J

    move-result-wide v2

    const/4 v4, 0x1

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/wav/WavExtractor;->pendingBytes:I

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 1

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeaderReader;->peek(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/wav/WavHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
