.class public final Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED_SAMPLES:I = 0x5

.field private static final SORT_ORDER_BY_INDEX:I = 0x1

.field private static final SORT_ORDER_BY_VALUE:I = 0x0

.field private static final SORT_ORDER_NONE:I = -0x1

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$2;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$2;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->maxWeight:I

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSamples:[Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    return-void
.end method

.method private ensureSortedByIndex()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    :cond_0
    return-void
.end method

.method private ensureSortedByValue()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->currentSortOrder:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addSample(IF)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->ensureSortedByIndex()V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSamples:[Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    aget-object v0, v0, v1

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->nextSampleIndex:I

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->index:I

    iput p1, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    iput p2, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    :cond_0
    :goto_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->maxWeight:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->maxWeight:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    if-gt v2, v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSamples:[Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->recycledSampleCount:I

    aput-object v0, v1, v2

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;-><init>(Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$1;)V

    goto :goto_0

    :cond_2
    iget v2, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v2, v1

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getPercentile(F)F
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->ensureSortedByValue()V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->totalWeight:I

    int-to-float v1, v1

    mul-float v3, p1, v1

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->weight:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/util/SlidingPercentile$Sample;->value:F

    goto :goto_1
.end method
