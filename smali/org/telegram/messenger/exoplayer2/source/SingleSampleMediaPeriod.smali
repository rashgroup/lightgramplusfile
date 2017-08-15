.class final Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;,
        Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_SAMPLE_SIZE:I = 0x400


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

.field private final eventSourceId:I

.field final format:Lorg/telegram/messenger/exoplayer2/Format;

.field final loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field loadingFinished:Z

.field private final minLoadableRetryCount:I

.field sampleData:[B

.field sampleSize:I

.field private final sampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/Format;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->minLoadableRetryCount:I

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventHandler:Landroid/os/Handler;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

    iput p7, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventSourceId:I

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    new-array v1, v3, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    new-array v3, v3, [Lorg/telegram/messenger/exoplayer2/Format;

    aput-object p3, v3, v4

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;-><init>([Lorg/telegram/messenger/exoplayer2/Format;)V

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "Loader:SingleSampleMediaPeriod"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventSourceId:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;)Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

    return-object v0
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventListener:Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->minLoadableRetryCount:I

    invoke-virtual {v0, v1, p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->maybeThrowError()V

    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V
    .locals 1

    # getter for: Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    # getter for: Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$200(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleData:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;)I
    .locals 1

    invoke-direct {p0, p6}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->onLoadError(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    return-void
.end method

.method public seekToUs(J)J
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->seekToUs(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p3, v0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    aput-object v3, p3, v0

    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0, v3}, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$1;)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method
