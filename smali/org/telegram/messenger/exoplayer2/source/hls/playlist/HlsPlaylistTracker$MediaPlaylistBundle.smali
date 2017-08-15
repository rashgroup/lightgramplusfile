.class final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPlaylistBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# instance fields
.field private callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

.field private latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field private final mediaPlaylistLoadable:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private final playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 5

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "HlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$300(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v1

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->masterPlaylist:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$400(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->baseUri:Ljava/lang/String;

    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistParser:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$500(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lorg/telegram/messenger/exoplayer2/upstream/Loader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method private processLoadedPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    # invokes: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->adjustPlaylistTimestamps(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    invoke-static {v3, v2, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$900(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;->onPlaylistChanged()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-nez v2, :cond_3

    :goto_0
    # invokes: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->onPlaylistUpdated(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Z)Z
    invoke-static {v3, v4, v5, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$1000(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Z)Z

    move-result v0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$1100(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v2, p1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public adjustTimestampsOfPlaylist(IJ)V
    .locals 10

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v4, p1, v0

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    sub-long/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x7a120

    cmp-long v1, v6, v8

    if-ltz v1, :cond_0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v4, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v6, v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v4, 0x1

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v6, v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWithSegments(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    goto :goto_0
.end method

.method public loadPlaylist()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->minRetryCount:I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$600(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    :cond_0
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

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$700(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$700(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

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

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

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
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v13, v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$700(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v5, 0x4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v0, p6

    invoke-interface {v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;->onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V

    :cond_0
    if-eqz v13, :cond_1

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->primaryHlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$800(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    return-void
.end method

.method public setCallback(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    return-void
.end method
