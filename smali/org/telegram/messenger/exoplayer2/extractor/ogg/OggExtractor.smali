.class public Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_VERIFICATION_BYTES:I = 0x8


# instance fields
.field private streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resetPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object p0
.end method


# virtual methods
.method getStreamReader()Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    return-object v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->seek(J)V

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OpusReader;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
