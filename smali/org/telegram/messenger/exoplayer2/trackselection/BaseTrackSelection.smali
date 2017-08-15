.class public abstract Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;
    }
.end annotation


# instance fields
.field private final blacklistUntilTimes:[J

.field private final formats:[Lorg/telegram/messenger/exoplayer2/Format;

.field protected final group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

.field private hashCode:I

.field protected final length:I

.field protected final tracks:[I


# direct methods
.method public varargs constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    array-length v0, p2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/Format;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    move v0, v1

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;-><init>(Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection$1;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    :goto_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    return-void
.end method


# virtual methods
.method public final blacklist(IJ)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v6, :cond_1

    if-nez v2, :cond_1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    :goto_2
    return v1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    aget-wide v6, v1, p1

    add-long/2addr v4, p2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    aput-wide v4, v0, p1

    move v1, v3

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getSelectedFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getTrackGroup()Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->group:Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->hashCode:I

    return v0
.end method

.method public final indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected final isBlacklisted(IJ)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    aget-wide v0, v0, p1

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/BaseTrackSelection;->tracks:[I

    array-length v0, v0

    return v0
.end method
