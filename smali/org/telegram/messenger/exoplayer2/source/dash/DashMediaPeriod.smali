.class final Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
        "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final elapsedRealtimeOffset:J

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field final id:I

.field private index:I

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final minLoadableRetryCount:I

.field private period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

.field private sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

.field private final trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;ILorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->id:I

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->index:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

    iput p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    iput-object p9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    iput-object p10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->buildTrackGroups(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;)Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-void
.end method

.method private buildSampleStream(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->index:I

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    move-object v5, p1

    invoke-interface/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;->createDashChunkSource(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;IILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;

    move-result-object v3

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    iget v2, v8, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object v4, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;-><init>(ILorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v1
.end method

.method private static buildTrackGroups(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;)Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Lorg/telegram/messenger/exoplayer2/Format;

    move v3, v2

    :goto_1
    array-length v0, v6

    if-ge v3, v0, :cond_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v0, v6, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    return-object v0
.end method

.method private static newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    new-array v0, p0, [Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    return-object v0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public getBufferedPositionUs()J
    .locals 12

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->getBufferedPositionUs()J

    move-result-wide v10

    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_4

    aget-object v0, p3, v1

    if-eqz v0, :cond_1

    aget-object v0, p3, v1

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v1

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    const/4 v0, 0x0

    aput-object v0, p3, v1

    :cond_1
    :goto_1
    aget-object v0, p3, v1

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    if-eqz v0, :cond_2

    aget-object v0, p1, v1

    invoke-direct {p0, v0, p5, p6}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->buildSampleStream(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v0, p3, v1

    const/4 v0, 0x1

    aput-boolean v0, p4, v1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    return-wide p5
.end method

.method public updateManifest(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->index:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->period:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method
