.class public final Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
.implements Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private final continueLoadingHandler:Landroid/os/Handler;

.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final manifestFetcher:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private final minLoadableRetryCount:I

.field private pendingPrepareCount:I

.field private final playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final preparePositionUs:J

.field private sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private seenFirstTrackSelection:Z

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

.field private final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "Loader:ManifestFetcher"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->preparePositionUs:J

    return-void
.end method

.method private buildAndPrepareSampleStreamWrappers()V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v6

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-gtz v8, :cond_0

    const-string/jumbo v8, "avc"

    invoke-static {v0, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "mp4a"

    invoke-static {v0, v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v3

    :goto_2
    iget-object v7, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    iget-object v8, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v1, v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v5

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v3, v6, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-direct {p0, v2, v1, v0, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aput-object v0, v1, v2

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    move v1, v2

    move v3, v5

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    new-array v4, v5, [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v0, v4, v2

    invoke-direct {p0, v5, v4, v9, v9}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v4, v3, 0x1

    aput-object v0, v6, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {v4, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    move-object v0, v4

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    const/4 v4, 0x3

    new-array v6, v5, [Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    aput-object v0, v6, v2

    invoke-direct {p0, v4, v6, v9, v9}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    move-result-object v6

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepareSingleTrack(Lorg/telegram/messenger/exoplayer2/Format;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    add-int/lit8 v4, v3, 0x1

    aput-object v6, v0, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_5

    :cond_8
    return-void
.end method

.method private buildSampleStreamWrapper(I[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;
    .locals 12

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v0

    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-direct {v4, v1, p2, v0, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;[Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;)V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->allocator:Lorg/telegram/messenger/exoplayer2/upstream/Allocator;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->preparePositionUs:J

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->minLoadableRetryCount:I

    iget-object v11, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move v2, p1

    move-object v3, p0

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;-><init>(ILorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;JLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v1
.end method

.method private static variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public getBufferedPositionUs()J
    .locals 12

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getBufferedPositionUs()J

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

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public onPlaylistChanged()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->continuePreparing()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public onPlaylistRefreshRequired(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;)V

    return-void
.end method

.method public onPrepared()V
    .locals 11

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->pendingPrepareCount:I

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v5, v2, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v7, v6

    move v4, v1

    move v0, v1

    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v8, v6, v4

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    iget v9, v2, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    move v2, v0

    move v0, v1

    :goto_3
    if-ge v0, v9, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v5, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    goto :goto_0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers()V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->continueLoadingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->manifestFetcher:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/TimestampAdjusterProvider;->reset()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekTo(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 15

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v10, v2, [I

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v11, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v3, v2, :cond_3

    aget-object v2, p3, v3

    if-nez v2, :cond_1

    const/4 v2, -0x1

    :goto_1
    aput v2, v10, v3

    const/4 v2, -0x1

    aput v2, v11, v3

    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    aget-object v2, p1, v3

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v4

    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    aput v2, v11, v3

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->clear()V

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v12, v2, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v5, v2, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v3, v2, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    new-instance v13, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v8, v2

    move v9, v4

    :goto_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v2

    if-ge v8, v2, :cond_e

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v2, v4, :cond_6

    aget v4, v10, v2

    if-ne v4, v8, :cond_4

    aget-object v4, p3, v2

    :goto_5
    aput-object v4, v5, v2

    aget v4, v11, v2

    if-ne v4, v8, :cond_5

    aget-object v4, p1, v2

    :goto_6
    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v2, v2, v8

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    if-nez v4, :cond_8

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v4, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZZ)Z

    move-result v2

    or-int v4, v9, v2

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p1

    array-length v7, v0

    if-ge v2, v7, :cond_c

    aget v7, v11, v2

    if-ne v7, v8, :cond_a

    aget-object v6, v5, v2

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    :goto_9
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    aget-object v6, v5, v2

    aput-object v6, v12, v2

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    aget-object v9, v5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v9, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    :cond_a
    aget v7, v10, v2

    if-ne v7, v8, :cond_7

    aget-object v7, v5, v2

    if-nez v7, :cond_b

    const/4 v7, 0x1

    :goto_b
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    goto :goto_b

    :cond_c
    if-eqz v6, :cond_d

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v2, v2, v8

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v4

    goto :goto_3

    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v12

    move-object/from16 v0, p3

    invoke-static {v12, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v2, v2

    if-lez v2, :cond_f

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    const/4 v2, 0x1

    :goto_c
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    array-length v3, v3

    if-ge v2, v3, :cond_f

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsTimestampMaster(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_f
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz v2, :cond_11

    if-eqz v9, :cond_11

    move-wide/from16 v0, p5

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seekToUs(J)J

    const/4 v2, 0x0

    :goto_d
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v2, v3, :cond_11

    aget-object v3, p3, v2

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    aput-boolean v3, p4, v2

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5
.end method
