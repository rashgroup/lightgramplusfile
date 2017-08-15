.class final Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;,
        Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;,
        Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;",
        "Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private durationUs:J

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private lastSeekPositionUs:J

.field private length:J

.field private final loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

.field private final loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final minLoadableRetryCount:I

.field private notifyReset:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private released:Z

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private final sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

.field private trackEnabledStates:[Z

.field private trackIsAudioVideoFlags:[Z

.field private tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private tracksBuilt:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "Loader:ExtractorMediaPeriod"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {v0, p3, p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;-><init>([Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$2;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private configureRetry(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(J)V

    goto :goto_0
.end method

.method private copyLengthFromLoader(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->length:J
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->access$500(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    :cond_0
    return-void
.end method

.method private getExtractedSamplesCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getWriteIndex()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getLargestQueuedTimestampUs()J
    .locals 8

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private isLoadableExceptionFatal(Ljava/io/IOException;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$UnrecognizedInputFormatException;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

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

.method private maybeFinishPrepare()V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracksBuilt:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->close()Z

    new-array v5, v4, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    new-array v0, v4, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    new-array v0, v4, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    new-array v7, v2, [Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v0, v7, v1

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v6, v5, v3

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    :goto_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aput-boolean v0, v6, v3

    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    goto/16 :goto_0
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$4;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private startLoading()V
    .locals 8

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;)V

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->getPosition(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->setLoadPosition(J)V

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->minLoadableRetryCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->length:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x3

    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v2, v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->open()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public endTracks()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracksBuilt:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 8

    const-wide/high16 v4, -0x8000000000000000L

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_1

    move-wide v0, v4

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v0, :cond_4

    const-wide v2, 0x7fffffffffffffffL

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackIsAudioVideoFlags:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v0, v2

    :goto_3
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method isReady(I)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

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

.method maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    if-nez p6, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->durationUs:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->copyLengthFromLoader(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    invoke-direct {p0, p6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V

    invoke-direct {p0, p6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isLoadableExceptionFatal(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v3, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->configureRetry(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->getExtractedSamplesCount()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->onLoadError(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onUpstreamFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadCondition:Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ConditionVariable;->open()Z

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->startLoading()V

    return-void
.end method

.method readData(ILorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;)I
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;ZJ)I

    move-result v0

    goto :goto_0
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->released:Z

    return-void
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->lastSeekPositionUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v2, v1

    :goto_2
    if-eqz v0, :cond_3

    if-ge v2, v3, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->pendingResetPositionUs:J

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loadingFinished:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->cancelLoading()V

    :cond_4
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    return-wide p1

    :cond_5
    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->reset(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    move v1, v2

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    aget-object v0, p3, v1

    if-eqz v0, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    aget-boolean v0, p2, v1

    if-nez v0, :cond_1

    :cond_0
    aget-object v0, p3, v1

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->track:I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->access$400(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I

    move-result v0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v4, v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v2, v4, v0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    const/4 v0, 0x0

    aput-object v0, p3, v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    move v1, v2

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_7

    aget-object v4, p3, v0

    if-nez v4, :cond_3

    aget-object v4, p1, v0

    if-eqz v4, :cond_3

    aget-object v4, p1, v0

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-interface {v4, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_6

    move v1, v3

    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aput-boolean v3, v1, v4

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0, v4}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;-><init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;I)V

    aput-object v1, p3, v0

    aput-boolean v3, p4, v0

    move v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v4, v2

    :goto_5
    if-ge v4, v5, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->trackEnabledStates:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    :cond_9
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_b

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->notifyReset:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->cancelLoading()V

    :cond_a
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v0, :cond_d

    if-eqz v1, :cond_a

    :goto_6
    invoke-virtual {p0, p5, p6}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    :goto_7
    array-length v0, p3

    if-ge v2, v0, :cond_a

    aget-object v0, p3, v2

    if-eqz v0, :cond_c

    aput-boolean v3, p4, v2

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_a

    goto :goto_6
.end method

.method public track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->setUpstreamFormatChangeListener(Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method
