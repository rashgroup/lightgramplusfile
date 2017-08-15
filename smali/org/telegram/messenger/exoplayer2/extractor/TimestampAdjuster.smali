.class public final Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# static fields
.field public static final DO_NOT_OFFSET:J = 0x7fffffffffffffffL

.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L


# instance fields
.field private final firstSampleTimestampUs:J

.field private volatile lastSampleTimestamp:J

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    return-void
.end method

.method public static ptsToUs(J)J
    .locals 4

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    const-wide/32 v2, 0x15f90

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static usToPts(J)J
    .locals 4

    const-wide/32 v0, 0x15f90

    mul-long/2addr v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public adjustSampleTimestamp(J)J
    .locals 5

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v0, p1

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->firstSampleTimestampUs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->timestampOffsetUs:J

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public adjustTsTimestamp(J)J
    .locals 9

    const-wide v6, 0x200000000L

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->usToPts(J)J

    move-result-wide v4

    const-wide v0, 0x100000000L

    add-long/2addr v0, v4

    div-long v2, v0, v6

    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    mul-long/2addr v0, v6

    add-long/2addr v0, p1

    mul-long/2addr v2, v6

    add-long/2addr v2, p1

    sub-long v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v0, p1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    return-void
.end method

.method public declared-synchronized waitUntilInitialized()V
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->lastSampleTimestamp:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method
