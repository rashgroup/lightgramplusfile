.class final Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# static fields
.field private static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field private final language:Ljava/lang/String;

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private sampleData:[B

.field private final sampleDataWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private sampleSize:I

.field private final timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "MPEGTS:(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    return-void
.end method

.method private buildTrackOutput(J)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .locals 11

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    const-string/jumbo v2, "text/vtt"

    const/4 v4, -0x1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->language:Ljava/lang/String;

    move-object v3, v1

    move-object v7, v1

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;J)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-object v0
.end method

.method private processSample()V
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    new-instance v5, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    invoke-direct {v5, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([B)V

    :try_start_0
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    move-wide v6, v2

    :cond_0
    :goto_0
    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "X-TIMESTAMP-MAP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    sget-object v1, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->findNextCueHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->buildTrackOutput(J)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    :goto_1
    return-void

    :cond_4
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    add-long/2addr v0, v8

    sub-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v2

    sub-long v0, v2, v8

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->buildTrackOutput(J)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v0, v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleDataWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v1, v0, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_1
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 6

    const/4 v2, -0x1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    long-to-int v1, v0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    if-eq v1, v2, :cond_2

    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    array-length v4, v4

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    sub-int/2addr v4, v5

    invoke-interface {p1, v0, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    if-eq v1, v2, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleSize:I

    if-eq v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->sampleData:[B

    array-length v0, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;->processSample()V

    move v0, v2

    goto :goto_1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(J)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
