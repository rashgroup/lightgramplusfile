.class final Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;
.implements Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;,
        Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    }
.end annotation


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64

.field private static final MSG_CUSTOM:I = 0xa

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x7

.field public static final MSG_LOADING_CHANGED:I = 0x2

.field private static final MSG_PERIOD_PREPARED:I = 0x7

.field public static final MSG_POSITION_DISCONTINUITY:I = 0x5

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x6

.field private static final MSG_RELEASE:I = 0x5

.field public static final MSG_SEEK_ACK:I = 0x4

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x8

.field public static final MSG_SOURCE_INFO_REFRESHED:I = 0x6

.field public static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_STOP:I = 0x4

.field public static final MSG_TRACKS_CHANGED:I = 0x3

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0x9

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private elapsedRealtimeUs:J

.field private enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isLoading:Z

.field private final loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

.field private loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private pendingInitialSeekCount:I

.field private pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

.field private rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

.field private rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

.field private rendererPositionUs:J

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private final standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

.field private state:I

.field private timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

.field private final window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    array-length v0, p1

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->setIndex(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->getCapabilities()Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    new-array v0, v1, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;->init(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/PriorityHandlerThread;

    const-string/jumbo v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/PriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    return-void
.end method

.method private doSomeWork()V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    const-wide/16 v0, 0xa

    invoke-direct {p0, v4, v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "doSomeWork"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    const/4 v2, 0x1

    const/4 v1, 0x1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v7, v6

    const/4 v0, 0x0

    move v3, v0

    move v0, v2

    :goto_1
    if-ge v3, v7, :cond_6

    aget-object v8, v6, v3

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v12, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    invoke-interface {v8, v10, v11, v12, v13}, Lorg/telegram/messenger/exoplayer2/Renderer;->render(JJ)V

    if-eqz v0, :cond_3

    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/Renderer;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/Renderer;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_2

    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    if-nez v1, :cond_7

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v3, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    if-eqz v0, :cond_a

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    :cond_9
    :goto_5
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_f

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->maybeThrowStreamError()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    if-lez v0, :cond_c

    if-eqz v1, :cond_b

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->haveSufficientBuffer(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_9

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v0

    goto :goto_7

    :cond_d
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    if-lez v0, :cond_e

    move v0, v1

    :goto_8
    if-nez v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_5

    :cond_e
    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v0

    goto :goto_8

    :cond_f
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    :cond_10
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    :cond_11
    const-wide/16 v0, 0xa

    invoke-direct {p0, v4, v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    :goto_9
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v4, v5, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9
.end method

.method private enableRenderers([ZI)V
    .locals 13

    const/4 v11, 0x1

    const/4 v9, 0x0

    new-array v0, p2, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    move v8, v9

    move v1, v9

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    if-ge v8, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v0, v0, v8

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    # getter for: Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    add-int/lit8 v12, v1, 0x1

    aput-object v0, v2, v1

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move v10, v11

    :goto_1
    aget-boolean v1, p1, v8

    if-nez v1, :cond_1

    if-eqz v10, :cond_1

    move v5, v11

    :goto_2
    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/Format;

    move v2, v9

    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_2

    invoke-interface {v3, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    move v10, v9

    goto :goto_1

    :cond_1
    move v5, v9

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v2, v2, v8

    iget-wide v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v6

    invoke-interface/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/Renderer;->enable([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;JZJ)V

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Multiple renderer media clocks enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_3
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    :cond_4
    if-eqz v10, :cond_5

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->start()V

    :cond_5
    move v1, v12

    :cond_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_7
    return-void
.end method

.method private ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V
    .locals 2

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/Renderer;->stop()V

    :cond_0
    return-void
.end method

.method private getPeriodPosition(IJ)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJJ)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/Timeline;",
            "IJJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p3

    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v0

    add-long v2, v0, p3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v4, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    :goto_1
    cmp-long v5, v0, v6

    if-eqz v5, :cond_1

    cmp-long v5, v2, v0

    if-ltz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge v4, v5, :cond_1

    sub-long/2addr v2, v0

    add-int/lit8 v4, v4, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v4, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private handleContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handlePeriodPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->handlePrepared()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_0
.end method

.method private handleSourceInfoRefreshed(Landroid/util/Pair;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Timeline;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v8, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v7, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, v8, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v3, v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    iput-object v12, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_2
    if-nez v3, :cond_4

    invoke-direct {p0, v8, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_2

    invoke-direct {p0, v2, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v3, v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v5, :cond_8

    iget v0, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {p0, v0, v7, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILorg/telegram/messenger/exoplayer2/Timeline;Lorg/telegram/messenger/exoplayer2/Timeline;)I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-direct {p0, v8, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v0, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-direct {p0, v0, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v4, v2, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iput v5, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    move-object v0, v3

    :goto_3
    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_7

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    :goto_4
    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    goto :goto_3

    :cond_6
    move v2, v5

    goto :goto_4

    :cond_7
    invoke-direct {p0, v4, v10, v11}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v0, v4, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {p0, v8, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v5, v7}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v0, :cond_a

    move v0, v6

    :goto_5
    invoke-virtual {v3, v4, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v3, v0, :cond_b

    move v0, v6

    :goto_6
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    if-eq v4, v5, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->copyWithPeriodIndex(I)Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    :cond_9
    move v13, v4

    move-object v4, v3

    move v3, v13

    :goto_7
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v5, :cond_f

    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v7, v3, v9, v6}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_c

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget v9, v9, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v7, :cond_c

    move v7, v6

    :goto_8
    iget-object v9, v5, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget-object v10, v10, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v5, v3, v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v5, v4, :cond_d

    move v4, v6

    :goto_9
    or-int/2addr v0, v4

    move-object v4, v5

    goto :goto_7

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v2

    goto :goto_6

    :cond_c
    move v7, v2

    goto :goto_8

    :cond_d
    move v4, v2

    goto :goto_9

    :cond_e
    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v2

    new-instance v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v4, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    :cond_f
    :goto_a
    invoke-direct {p0, v8, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :cond_10
    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    goto :goto_a
.end method

.method private haveSufficientBuffer(Z)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    :goto_1
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-interface {v2, v0, v1, p1}, Lorg/telegram/messenger/exoplayer2/LoadControl;->shouldStartPlayback(JZ)Z

    move-result v0

    goto :goto_0
.end method

.method private isTimelineReady(J)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeContinueLoading()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/LoadControl;->shouldContinueLoading(J)Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-boolean v6, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    goto :goto_0
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_1
.end method

.method private notifySourceInfoRefresh(Ljava/lang/Object;I)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v2, v3, p1, v4, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private prepareInternal(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V
    .locals 5

    const/4 v4, 0x2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onPrepared()V

    if-eqz p2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {p1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private releaseInternal()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onReleased()V

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    iget-object p1, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reselectTracksInternal()V
    .locals 13

    const/4 v2, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object v5, v0

    move v0, v2

    :goto_1
    if-eqz v5, :cond_0

    iget-boolean v3, v5, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v0, v3, :cond_9

    move v0, v2

    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v12, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v3

    new-array v6, v3, [Z

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v8, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-virtual {v3, v8, v9, v0, v6}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v8, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-direct {p0, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    new-array v7, v0, [Z

    move v0, v1

    move v3, v1

    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v0, v4, :cond_c

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v8, v4, v0

    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    :goto_4
    aput-boolean v4, v7, v0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    aget-boolean v9, v7, v0

    if-eqz v9, :cond_6

    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/Renderer;->getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-result-object v9

    if-eq v4, v9, :cond_b

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    if-ne v8, v9, :cond_5

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    invoke-interface {v9}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    :cond_4
    iput-object v12, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    iput-object v12, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    :cond_5
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v5, v3, :cond_8

    move v0, v1

    :cond_8
    iget-object v3, v5, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object v5, v3

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_2

    :cond_a
    move v4, v1

    goto :goto_4

    :cond_b
    aget-boolean v4, v6, v0

    if-eqz v4, :cond_6

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v8, v10, v11}, Lorg/telegram/messenger/exoplayer2/Renderer;->resetPosition(J)V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getTrackInfo()Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0, v7, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    :cond_d
    :goto_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_e
    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_7
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v12, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    goto :goto_6
.end method

.method private resetInternal()V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->stop()V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    :try_start_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string/jumbo v5, "ExoPlayerImplInternal"

    const-string/jumbo v6, "Stop failed."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    new-array v0, v2, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_3
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    :cond_1
    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private resetRendererPosition(J)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    :goto_0
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/Renderer;->resetPosition(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resolveSeekPosition(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v6, -0x1

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    :cond_0
    move-object v1, v0

    iget v0, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    if-ne v0, v1, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILorg/telegram/messenger/exoplayer2/Timeline;Lorg/telegram/messenger/exoplayer2/Timeline;)I

    move-result v0

    if-eq v0, v6, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveSubsequentPeriod(ILorg/telegram/messenger/exoplayer2/Timeline;Lorg/telegram/messenger/exoplayer2/Timeline;)I
    .locals 3

    const/4 v1, -0x1

    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v0, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private scheduleNextWork(JJ)V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    add-long v0, p1, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private seekToInternal(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .locals 11

    const/4 v10, 0x4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    if-ne v2, v0, :cond_2

    const-wide/16 v0, 0x3e8

    div-long v0, v4, v0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v6, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v0, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    new-instance v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v3, v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v10, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v1, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0
.end method

.method private seekToPeriodPosition(IJ)J
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    invoke-direct {p0, v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    move-object v0, v2

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v1, v4, :cond_5

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v4

    move v1, v3

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object v0, v2

    :goto_2
    if-eqz v1, :cond_0

    iget v4, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-ne v4, p1, :cond_3

    iget-boolean v4, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_3

    move-object v0, v1

    :goto_3
    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    goto :goto_3

    :cond_4
    new-array v1, v3, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    :cond_5
    if-eqz v0, :cond_7

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    :cond_6
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2

    :cond_7
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_4

    :cond_8
    move-object v0, v2

    goto :goto_0
.end method

.method private sendMessagesInternal([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 5

    :try_start_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;

    iget v4, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private setIsLoading(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    new-array v4, v0, [Z

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v5, v3, v0

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/Renderer;->getState()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v4, v0

    # getter for: Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    aget-boolean v3, v4, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    if-ne v5, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    :cond_3
    invoke-direct {p0, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/Renderer;->disable()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getTrackInfo()Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0, v4, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    return-void
.end method

.method private setState(I)V
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->state:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private startRenderers()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->start()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopInternal()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetInternal()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/LoadControl;->onStopped()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method private stopRenderers()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->stop()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lorg/telegram/messenger/exoplayer2/Renderer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePeriods()V
    .locals 14

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v0, v1, :cond_10

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v3, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    :goto_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v2, :cond_a

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v12, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    move v10, v0

    :goto_5
    const/4 v0, -0x1

    if-eq v10, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_d

    move-wide v4, v12

    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    const/4 v2, 0x1

    invoke-virtual {v0, v10, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v0, :cond_e

    const/4 v11, 0x1

    :goto_7
    new-instance v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadControl:Lorg/telegram/messenger/exoplayer2/LoadControl;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;[Lorg/telegram/messenger/exoplayer2/RendererCapabilities;JLorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/source/MediaSource;Ljava/lang/Object;IZJ)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v1, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :cond_8
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    if-nez v1, :cond_b

    const-wide/16 v12, 0x0

    move v10, v0

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v4

    add-long/2addr v0, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    sub-long/2addr v0, v4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lorg/telegram/messenger/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v0, -0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move v10, v0

    goto/16 :goto_5

    :cond_c
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto/16 :goto_5

    :cond_d
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v2

    add-long v4, v0, v2

    goto/16 :goto_6

    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->setCurrentStreamIsFinal()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    # getter for: Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    # getter for: Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->access$000(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v3

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    aget-object v4, v1, v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v5

    if-eqz v1, :cond_14

    if-eqz v5, :cond_15

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v1

    new-array v6, v1, [Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v1, 0x0

    :goto_b
    array-length v7, v6

    if-ge v1, v7, :cond_13

    invoke-interface {v5, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_13
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    aget-object v1, v1, v0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    invoke-interface {v4, v6, v1, v8, v9}, Lorg/telegram/messenger/exoplayer2/Renderer;->replaceStream([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;J)V

    :cond_14
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/Renderer;->setCurrentStreamIsFinal()V

    goto :goto_c
.end method

.method private updatePlaybackPositions()V
    .locals 6

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v0, v0

    if-nez v0, :cond_4

    move-wide v0, v2

    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->period:Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    :cond_1
    iput-wide v0, v4, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lorg/telegram/messenger/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_2
.end method


# virtual methods
.method public varargs declared-synchronized blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ExoPlayerImplInternal"

    const-string/jumbo v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v0, :cond_0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->prepareInternal(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    move v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    move v0, v1

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    move v0, v1

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Landroid/util/Pair;)V

    move v0, v1

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    move v0, v1

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    move v0, v1

    goto :goto_0

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->sendMessagesInternal([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Renderer error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Source error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "ExoPlayerImplInternal"

    const-string/jumbo v3, "Internal runtime error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public seekTo(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public varargs sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ExoPlayerImplInternal"

    const-string/jumbo v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setPlayWhenReady(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
