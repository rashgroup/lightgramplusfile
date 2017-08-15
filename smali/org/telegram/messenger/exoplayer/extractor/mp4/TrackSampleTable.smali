.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;
.super Ljava/lang/Object;
.source "TrackSampleTable.java"


# static fields
.field public static final NO_SAMPLE:I = -0x1


# instance fields
.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sampleCount:I

.field public final sizes:[I

.field public final timestampsUs:[J


# direct methods
.method constructor <init>([J[II[J[I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v3, p4

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    array-length v0, p1

    array-length v3, p4

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    array-length v0, p5

    array-length v3, p4

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->sizes:[I

    iput p3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->maximumSize:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->sampleCount:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public getIndexOfEarlierOrEqualSynchronizationSample(J)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getIndexOfLaterOrEqualSynchronizationSample(J)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
