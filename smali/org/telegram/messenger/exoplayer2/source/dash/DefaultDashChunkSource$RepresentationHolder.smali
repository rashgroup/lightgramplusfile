.class public final Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field public final extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private periodDurationUs:J

.field public representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

.field public sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field public segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

.field private segmentNumShift:I


# direct methods
.method public constructor <init>(JLorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)V
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    iget-object v0, p3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    :goto_0
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v3, "application/x-rawcc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/rawcc/RawCcExtractor;

    iget-object v1, p3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/rawcc/RawCcExtractor;-><init>(Lorg/telegram/messenger/exoplayer2/Format;)V

    move v1, v2

    :goto_1
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object v4, p3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {v3, v0, v4, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/Format;ZZ)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_1
.end method

.method private static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFirstSegmentNum()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLastSegmentNum()I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSegmentEndTimeUs(I)J
    .locals 6

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v3, p1, v3

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSegmentNum(J)I
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSegmentStartTimeUs(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public setSampleFormat(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-void
.end method

.method public updateRepresentation(JLorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v2

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v4

    invoke-interface {v1, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0

    :cond_2
    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v6, v7, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0
.end method
