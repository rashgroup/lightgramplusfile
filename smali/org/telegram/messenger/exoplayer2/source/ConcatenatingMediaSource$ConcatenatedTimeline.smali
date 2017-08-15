.class final Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Lorg/telegram/messenger/exoplayer2/Timeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final sourcePeriodOffsets:[I

.field private final sourceWindowOffsets:[I

.field private final timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Timeline;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/Timeline;-><init>()V

    array-length v1, p1

    new-array v3, v1, [I

    array-length v1, p1

    new-array v4, v1, [I

    move v1, v0

    move v2, v0

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_0

    aget-object v5, p1, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v6

    add-int/2addr v2, v6

    aput v2, v3, v0

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v5

    add-int/2addr v1, v5

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v0

    return v0
.end method

.method private getFirstPeriodIndexInSource(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getFirstWindowIndexInSource(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getSourceIndexForPeriod(I)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getSourceIndexForWindow(I)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 4

    const/4 v1, -0x1

    instance-of v0, p1, Landroid/util/Pair;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ltz v0, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .locals 4

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstWindowIndexInSource(I)I

    move-result v1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aget-object v3, v3, v0

    sub-int v2, p1, v2

    invoke-virtual {v3, v2, p2, p3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget v2, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v1, v2

    iput v1, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    if-eqz p3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public getPeriodCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .locals 8

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForWindow(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstWindowIndexInSource(I)I

    move-result v1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aget-object v0, v2, v0

    sub-int v1, p1, v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    return-object p2
.end method

.method public getWindowCount()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method
