.class public final Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;
.implements Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;",
        "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final BYTES_TRANSFERRED_FOR_ESTIMATE:I = 0x80000

.field public static final DEFAULT_MAX_WEIGHT:I = 0x7d0

.field private static final ELAPSED_MILLIS_FOR_ESTIMATE:I = 0x7d0


# instance fields
.field private bitrateEstimate:J

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter$EventListener;

.field private sampleBytesTransferred:J

.field private sampleStartTimeMs:J

.field private final slidingPercentile:Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;

.field private streamCount:I

.field private totalBytesTransferred:J

.field private totalElapsedTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter$EventListener;)V
    .locals 1

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter$EventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter$EventListener;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->eventHandler:Landroid/os/Handler;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter$EventListener;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;

    invoke-direct {v0, p3}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;)Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter$EventListener;

    return-object v0
.end method

.method private notifyBandwidthSample(IJJ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter$1;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getBitrateEstimate()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBytesTransferred(Ljava/lang/Object;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransferEnd(Ljava/lang/Object;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v0, v6, v0

    long-to-int v1, v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    if-lez v1, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    const-wide/16 v4, 0x1f40

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-float v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->addSample(IF)V

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    const-wide/32 v4, 0x80000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->slidingPercentile:Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->getPercentile(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->notifyBandwidthSample(IJJ)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v0, :cond_2

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    float-to-long v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
