.class public Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# instance fields
.field private streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->seek()V

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 7

    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v3, 0x1b

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([BI)V

    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;-><init>()V

    const/4 v4, 0x1

    invoke-static {p1, v3, v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->type:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget v3, v3, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    if-ge v3, v6, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-interface {p1, v3, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method
