.class final Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodSeekInfo"
.end annotation


# instance fields
.field public final availableEndTimeUs:J

.field public final availableStartTimeUs:J

.field public final isIndexExplicit:Z


# direct methods
.method private constructor <init>(ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->isIndexExplicit:Z

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableStartTimeUs:J

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->availableEndTimeUs:J

    return-void
.end method

.method public static createPeriodSeekInfo(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;J)Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;
    .locals 13

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getFirstSegmentNum()I

    move-result v8

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getLastSegmentNum(J)I

    move-result v9

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v10

    or-int/2addr v1, v10

    invoke-interface {v0, v8}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v8, -0x1

    if-eq v9, v8, :cond_1

    invoke-interface {v0, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v10

    invoke-interface {v0, v9, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getDurationUs(IJ)J

    move-result-wide v8

    add-long/2addr v8, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;-><init>(ZJJ)V

    goto :goto_1
.end method
