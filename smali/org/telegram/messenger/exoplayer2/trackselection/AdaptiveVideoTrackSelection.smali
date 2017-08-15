.class public Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;
.super Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;
.source "AdaptiveVideoTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_INITIAL_BITRATE:I = 0xc3500

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxInitialBitrate:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private reason:I

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[ILorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;)V
    .locals 13

    const v5, 0xc3500

    const-wide/16 v6, 0x2710

    const-wide/16 v8, 0x61a8

    const-wide/16 v10, 0x61a8

    const/high16 v12, 0x3f400000    # 0.75f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[ILorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;IJJJF)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[ILorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;IJJJF)V
    .locals 7

    const-wide/16 v4, 0x3e8

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->bandwidthMeter:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->maxInitialBitrate:I

    mul-long v2, p5, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationForQualityIncreaseUs:J

    mul-long v2, p7, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->maxDurationForQualityDecreaseUs:J

    mul-long v2, p9, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationToRetainAfterDiscardUs:J

    move/from16 v0, p11

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->bandwidthFraction:F

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->reason:I

    return-void
.end method

.method private determineIdealSelectedIndex(J)I
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->bandwidthMeter:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->maxInitialBitrate:I

    int-to-long v0, v0

    :goto_0
    move v3, v2

    :goto_1
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->length:I

    if-ge v2, v4, :cond_4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->isBlacklisted(IJ)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    int-to-long v4, v3

    cmp-long v3, v4, v0

    if-gtz v3, :cond_2

    :goto_2
    return v2

    :cond_1
    long-to-float v0, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->bandwidthFraction:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long/2addr v4, p1

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v4, p1

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationToRetainAfterDiscardUs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    iget v5, v3, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    if-ge v4, v5, :cond_2

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v5, v3, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ge v4, v5, :cond_2

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    const/16 v5, 0x2d0

    if-ge v4, v5, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    const/16 v4, 0x500

    if-ge v0, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->reason:I

    return v0
.end method

.method public updateSelectedTrack(J)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->getSelectedFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->determineIdealSelectedIndex(J)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    iput v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    if-eqz v3, :cond_0

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    invoke-virtual {p0, v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->isBlacklisted(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v5, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    iget v1, v3, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    if-le v0, v1, :cond_2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->minDurationForQualityIncreaseUs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->reason:I

    :cond_1
    return-void

    :cond_2
    iget v0, v5, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    iget v1, v3, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection;->selectedIndex:I

    goto :goto_0
.end method
