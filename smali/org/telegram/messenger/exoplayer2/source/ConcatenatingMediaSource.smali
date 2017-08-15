.class public final Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    }
.end annotation


# instance fields
.field private final duplicateFlags:[Z

.field private listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

.field private final manifests:[Ljava/lang/Object;

.field private final mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private final sourceIndexByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

.field private final timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v0, p1

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->buildDuplicateFlags([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)[Z

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->handleSourceInfoRefreshed(ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private static buildDuplicateFlags([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)[Z
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Z

    new-instance v2, Ljava/util/IdentityHashMap;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private handleSourceInfoRefreshed(ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aput-object p2, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v0, p1

    add-int/lit8 v0, p1, 0x1

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, p1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aput-object p2, v1, v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    if-nez v3, :cond_2

    :goto_2
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v0}, [Lorg/telegram/messenger/exoplayer2/Timeline;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>([Lorg/telegram/messenger/exoplayer2/Timeline;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    # invokes: Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I
    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->access$100(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    # invokes: Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I
    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->access$200(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    invoke-interface {v2, v1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;I)V

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public releaseSource()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
