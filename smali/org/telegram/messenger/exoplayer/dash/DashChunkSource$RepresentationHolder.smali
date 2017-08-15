.class public final Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field public final extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

.field public mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

.field public final mimeTypeIsRawText:Z

.field private periodDurationUs:J

.field private final periodStartTimeUs:J

.field public representation:Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

.field public segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

.field private segmentNumShift:I


# direct methods
.method public constructor <init>(JJLorg/telegram/messenger/exoplayer/dash/mpd/Representation;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodStartTimeUs:J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    iget-object v0, p5, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->mimeTypeIsRawText:Z

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->mimeTypeIsRawText:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-virtual {p5}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->getIndex()Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->mimeTypeIsWebm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/webm/WebmExtractor;-><init>()V

    :goto_1
    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public getFirstAvailableSegmentNum()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLastSegmentNum()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v0

    return v0
.end method

.method public getSegmentEndTimeUs(I)J
    .locals 6

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v3, p1, v3

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSegmentNum(J)I
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodStartTimeUs:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSegmentStartTimeUs(I)J
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodStartTimeUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getSegmentUrl(I)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public isBeyondLastSegment(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->getLastSegmentNum()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    add-int/2addr v1, v2

    if-le p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateRepresentation(JLorg/telegram/messenger/exoplayer/dash/mpd/Representation;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->getIndex()Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    move-result-object v0

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->getIndex()Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    move-result-object v1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v2

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v6, v7}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v4

    invoke-interface {v1, v4}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0

    :cond_2
    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v6, v7, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentNumShift:I

    goto :goto_0
.end method
