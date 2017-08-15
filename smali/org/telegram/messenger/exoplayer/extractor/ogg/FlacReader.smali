.class final Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;
.super Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;
.source "FlacReader.java"


# static fields
.field private static final AUDIO_PACKET_TYPE:B = -0x1t

.field private static final SEEKTABLE_PACKET_TYPE:B = 0x3t


# instance fields
.field private firstAudioPacketProcessed:Z

.field private seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

.field private streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static verifyBitstreamType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

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
.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 11

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->oggParser:Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggParser;->readPacket(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    if-nez v2, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    const/16 v4, 0x11

    invoke-direct {v2, v1, v4}, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;-><init>([BI)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    const/16 v2, 0x9

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v2, 0x4

    const/16 v4, -0x80

    aput-byte v4, v1, v2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v1, "audio/x-flac"

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->bitRate()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->durationUs()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    iget v6, v6, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->channels:I

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->sampleRate:I

    move-object v9, v0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    move v3, v10

    goto :goto_0

    :cond_2
    aget-byte v2, v1, v10

    if-ne v2, v3, :cond_5

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->firstAudioPacketProcessed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;->sampleRate:I

    int-to-long v8, v3

    invoke-virtual {v2, v6, v7, v8, v9}, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->createSeekMap(JJ)Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->firstAudioPacketProcessed:Z

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer/util/FlacUtil;->extractSampleTimestamp(Lorg/telegram/messenger/exoplayer/util/FlacStreamInfo;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v5

    move v6, v10

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    sget-object v2, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    goto :goto_2

    :cond_5
    aget-byte v0, v1, v10

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;->parseSeekTable(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->seekTable:Lorg/telegram/messenger/exoplayer/util/FlacSeekTable;

    goto :goto_1
.end method
