.class public final Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaSource;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L


# instance fields
.field private final chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final livePresentationDelayMs:J

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private manifestDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final manifestDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private manifestLoadStartTimestamp:J

.field private manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final manifestParser:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

.field private manifestRefreshHandler:Landroid/os/Handler;

.field private final manifestUri:Landroid/net/Uri;

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final minLoadableRetryCount:I

.field private sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 11

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 10

    const/4 v5, 0x3

    const-wide/16 v6, 0x7530

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 12

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    if-nez p2, :cond_3

    const/4 p2, 0x0

    :cond_1
    :goto_1
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iput p6, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-direct {v0, p9, p10}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Manifest"

    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_1
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x7530

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 6

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    return-void
.end method

.method private processManifest()V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->updateManifest(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v0, :cond_5

    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v1, v1, v0

    iget v6, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget v6, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    iget v8, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v6

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    sub-long v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v6, v4

    :goto_3
    sub-long v4, v2, v6

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    sub-long v8, v4, v0

    const-wide/32 v0, 0x4c4b40

    cmp-long v0, v8, v0

    if-gez v0, :cond_4

    const-wide/32 v0, 0x4c4b40

    const-wide/16 v2, 0x2

    div-long v2, v4, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_4
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JZ)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    move-wide v6, v4

    goto :goto_3
.end method

.method private scheduleManifestRefresh()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startLoadingManifest()V
    .locals 5

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestParser:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    invoke-virtual {v1, v0, p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {v1, v4, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadStarted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJ)V

    return-void
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->minLoadableRetryCount:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJZ)V"
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ)V"
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    sub-long v0, p2, p4

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->scheduleManifestRefresh()V

    return-void
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v13, v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v5, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->type:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->processManifest()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "Loader:Manifest"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    goto :goto_0
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaPeriod;->release()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseSource()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method
