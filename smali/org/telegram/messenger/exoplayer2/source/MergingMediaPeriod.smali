.class final Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.implements Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;


# instance fields
.field private callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

.field private enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

.field private pendingChildPrepareCount:I

.field public final periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

.field private sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v0

    return v0
.end method

.method public getBufferedPositionUs()J
    .locals 12

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    invoke-interface {v9}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v10

    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    goto :goto_0
.end method

.method public bridge synthetic onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 11

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v5, v2, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v7, v6

    move v4, v1

    move v0, v1

    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v2, v6, v4

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v8

    iget v9, v8, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    move v2, v0

    move v0, v1

    :goto_3
    if-ge v0, v9, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v10

    aput-object v10, v5, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v5}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->trackGroups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    goto :goto_0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->pendingChildPrepareCount:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3, p0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 8

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Child reported discontinuity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_2

    invoke-interface {v6, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Children seeked to different positions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-wide v2
.end method

.method public seekToUs(J)J
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v1, v1, v0

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Children seeked to different positions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
    .locals 17

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v12, v2, [I

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v13, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v3, v2, :cond_3

    aget-object v2, p3, v3

    if-nez v2, :cond_1

    const/4 v2, -0x1

    :goto_1
    aput v2, v12, v3

    const/4 v2, -0x1

    aput v2, v13, v3

    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    aget-object v2, p1, v3

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v4

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    aput v2, v13, v3

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->clear()V

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v14, v2, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v6, v2, [Lorg/telegram/messenger/exoplayer2/source/SampleStream;

    move-object/from16 v0, p1

    array-length v2, v0

    new-array v4, v2, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v2, v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move-wide/from16 v8, p5

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    array-length v3, v3

    if-ge v2, v3, :cond_f

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v3, v5, :cond_6

    aget v5, v12, v3

    if-ne v5, v2, :cond_4

    aget-object v5, p3, v3

    :goto_5
    aput-object v5, v6, v3

    aget v5, v13, v3

    if-ne v5, v2, :cond_5

    aget-object v5, p1, v3

    :goto_6
    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v2

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;->selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v10

    if-nez v2, :cond_9

    move-wide v8, v10

    :cond_7
    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p1

    array-length v7, v0

    if-ge v3, v7, :cond_d

    aget v7, v13, v3

    if-ne v7, v2, :cond_b

    aget-object v5, v6, v3

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_8
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    aget-object v5, v6, v3

    aput-object v5, v14, v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v10, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    cmp-long v3, v10, v8

    if-eqz v3, :cond_7

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Children enabled at different positions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    const/4 v5, 0x0

    goto :goto_8

    :cond_b
    aget v7, v12, v3

    if-ne v7, v2, :cond_8

    aget-object v7, v6, v3

    if-nez v7, :cond_c

    const/4 v7, 0x1

    :goto_a
    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    goto :goto_a

    :cond_d
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v2

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v14

    move-object/from16 v0, p3

    invoke-static {v14, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->enabledPeriods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->sequenceableLoader:Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    return-wide v8
.end method
