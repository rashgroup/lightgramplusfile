.class final Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfoQueue"
.end annotation


# static fields
.field private static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8


# instance fields
.field private absoluteReadIndex:I

.field private capacity:I

.field private encryptionKeys:[[B

.field private flags:[I

.field private formats:[Lorg/telegram/messenger/exoplayer2/Format;

.field private largestDequeuedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private offsets:[J

.field private queueSize:I

.field private relativeReadIndex:I

.field private relativeWriteIndex:I

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private upstreamFormatRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized attemptSplice(J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    :goto_1
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v2, v3

    aget-wide v2, v1, v2

    cmp-long v1, v2, p1

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->discardUpstreamSamples(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearSampleData()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    return-void
.end method

.method public declared-synchronized commitSample(JIJI[B)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSampleTimestamp(J)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p1, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p4, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p6, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p3, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-object p7, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    aput v2, v0, v1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/lit16 v0, v0, 0x3e8

    new-array v1, v0, [I

    new-array v2, v0, [J

    new-array v3, v0, [J

    new-array v4, v0, [I

    new-array v5, v0, [I

    new-array v6, v0, [[B

    new-array v7, v0, [Lorg/telegram/messenger/exoplayer2/Format;

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    const/4 v11, 0x0

    invoke-static {v10, v11, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commitSampleTimestamp(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public discardUpstreamSamples(I)J
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getWriteIndex()I

    move-result v0

    sub-int v1, v0, p1

    if-ltz v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    if-nez v1, :cond_3

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    :goto_2
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    aget v0, v1, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v1, v2

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v4, v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v1, v2, v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aget-wide v0, v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public declared-synchronized format(Lorg/telegram/messenger/exoplayer2/Format;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    return v0
.end method

.method public declared-synchronized getUpstreamFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriteIndex()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekSourceId()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public declared-synchronized readData(Lorg/telegram/messenger/exoplayer2/FormatHolder;Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)I
    .locals 4

    const/4 v0, -0x5

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eq v1, p3, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v1, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v1, v1, v2

    if-eq v1, p3, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v1, v1, v2

    iput-object v1, p1, Lorg/telegram/messenger/exoplayer2/FormatHolder;->format:Lorg/telegram/messenger/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    iput v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object v0, v0, v1

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->encryptionKeyId:[B

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide v2, p2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    :goto_1
    iput-wide v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->nextOffset:J

    const/4 v0, -0x4

    goto :goto_0

    :cond_4
    iget-wide v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    iget v2, p4, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public resetLargestParsedTimestamps()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    return-void
.end method

.method public declared-synchronized skipToKeyframeBefore(J)J
    .locals 9

    const/4 v5, -0x1

    const-wide/16 v0, -0x1

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-nez v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    :goto_1
    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v2, v3, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v3, 0x0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    move v4, v2

    move v2, v5

    :goto_2
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-eq v4, v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v6, v6, v4

    cmp-long v6, v6, p1

    if-lez v6, :cond_4

    :cond_2
    if-eq v2, v5, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v0, v2

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    move v2, v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v4, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sourceId(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    return-void
.end method
