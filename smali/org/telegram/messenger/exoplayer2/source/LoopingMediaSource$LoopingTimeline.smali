.class final Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
.super Lorg/telegram/messenger/exoplayer2/Timeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/Timeline;I)V
    .locals 4

    const v1, 0x7fffffff

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/Timeline;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int v0, v1, v0

    if-le p2, v0, :cond_1

    if-eq p2, v1, :cond_0

    const-string/jumbo v1, "LoopingMediaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Capped loops to avoid overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    :goto_0
    return-void

    :cond_1
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    goto :goto_0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, -0x1

    instance-of v1, p1, Landroid/util/Pair;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Landroid/util/Pair;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int v0, p1, v0

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int/2addr v2, v0

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

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    rem-int v1, p1, v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    div-int v0, p1, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int/2addr v0, v1

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v1, v0

    iput v1, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v1

    iput v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    return-object p2
.end method

.method public getWindowCount()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, v1

    return v0
.end method
