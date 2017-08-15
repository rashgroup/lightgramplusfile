.class final Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;
.super Lorg/telegram/messenger/exoplayer2/Timeline;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final firstPeriodId:I

.field private final manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJIJJJLorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/Timeline;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    iput p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    iput-wide p8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    iput-wide p10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    iput-object p12, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    return-void
.end method

.method private getAdjustedWindowDefaultStartPositionUs(J)J
    .locals 13

    const/4 v8, 0x0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v2, :cond_1

    move-wide v2, v0

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_2
    move-wide v2, v0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    add-long v4, v0, v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v0

    move-wide v6, v4

    move-wide v4, v0

    move v0, v8

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    cmp-long v1, v6, v4

    if-ltz v1, :cond_3

    sub-long v4, v6, v4

    add-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v0

    move-wide v10, v0

    move v0, v6

    move-wide v6, v4

    move-wide v4, v10

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v6, v7, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v0

    add-long/2addr v0, v2

    sub-long v2, v0, v6

    goto :goto_0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    if-lt v1, v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    invoke-static {p1, v3, v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v2

    invoke-static {p1, v3, v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    sub-long/2addr v6, v8

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public getPeriodCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .locals 20

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getAdjustedWindowDefaultStartPositionUs(J)J

    move-result-wide v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v11, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v18, v0

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v19}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v4

    return-object v4
.end method

.method public getWindowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
