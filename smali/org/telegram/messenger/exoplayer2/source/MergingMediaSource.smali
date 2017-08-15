.class public final Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation


# static fields
.field private static final PERIOD_COUNT_UNSET:I = -0x1


# instance fields
.field private listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

.field private final mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

.field private final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private primaryManifest:Ljava/lang/Object;

.field private primaryTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private final window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->handleSourceInfoRefreshed(ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private checkTimelineMerges(Lorg/telegram/messenger/exoplayer2/Timeline;)Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->window:Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    invoke-virtual {p1, v0, v3, v1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v3, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    goto :goto_1
.end method

.method private handleSourceInfoRefreshed(ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->checkTimelineMerges(Lorg/telegram/messenger/exoplayer2/Timeline;)Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_3

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v0, v0

    new-array v1, v0, [Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;-><init>([Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;I)V

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 3

    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releaseSource()V
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
