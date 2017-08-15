.class public Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SampleStream;
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/SampleStream;",
        "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private lastSeekPositionUs:J

.field private final loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final mediaChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private final nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

.field private pendingResetPositionUs:J

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

.field private final trackType:I


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream",
            "<TT;>;>;",
            "Lorg/telegram/messenger/exoplayer2/upstream/Allocator;",
            "JI",
            "Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iput p7, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->minLoadableRetryCount:I

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "Loader:ChunkSampleStream"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-direct {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-void
.end method

.method private discardUpstreamMediaChunks(I)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeDiscardUpstream(J)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunks(I)Z

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    move-wide/from16 p1, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    move-wide/from16 v0, p1

    invoke-interface {v3, v2, v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->getNextChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;JLorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    iget-object v12, v3, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->clear()V

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    goto :goto_1

    :cond_4
    if-nez v12, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    move-object v2, v12

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->init(Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->minLoadableRetryCount:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v12, v0, v3}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, v12, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v5, v12, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    iget-object v7, v12, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget v8, v12, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v12, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v12, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v12, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v3 .. v15}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public getBufferedPositionUs()J
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    if-eqz v0, :cond_4

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_2
.end method

.method public getChunkSource()Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->maybeThrowError()V

    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v3 .. v19}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v3 .. v19}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I
    .locals 22

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v4, v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSource;->onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v21, 0x1

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->discardUpstreamSamples(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->type:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    invoke-virtual/range {v3 .. v21}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    const/4 v2, 0x2

    :goto_2
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->onLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I
    .locals 8

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->trackType:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionReason:I

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;J)V

    :cond_2
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->downstreamTrackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;ZJ)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    return-void
.end method

.method public seekToUs(J)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->cancelLoading()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    goto :goto_2
.end method

.method public skipToKeyframeBefore(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkSampleStream;->sampleQueue:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    return-void
.end method
