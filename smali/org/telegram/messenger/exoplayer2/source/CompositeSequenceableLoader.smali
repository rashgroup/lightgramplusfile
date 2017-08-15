.class public final Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;


# instance fields
.field private final loaders:[Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 13

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v4

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    array-length v7, v6

    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v7, :cond_3

    aget-object v8, v6, v3

    invoke-interface {v8}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v10

    cmp-long v9, v10, v4

    if-nez v9, :cond_2

    invoke-interface {v8, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v8

    or-int/2addr v2, v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    or-int/2addr v0, v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getNextLoadPositionUs()J
    .locals 12

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    invoke-interface {v9}, Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

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
