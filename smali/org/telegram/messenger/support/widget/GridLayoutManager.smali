.class public Lorg/telegram/messenger/support/widget/GridLayoutManager;
.super Lorg/telegram/messenger/support/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;,
        Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;IIZ)V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v1, v0

    move v0, v2

    :goto_0
    move v3, v2

    move v2, v0

    :goto_1
    if-eq v2, p3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v4

    iput v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    iput v3, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v0

    add-int v0, v2, v1

    move v2, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p3, -0x1

    move p3, v0

    move v5, v0

    move v0, v1

    move v1, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 6

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    :cond_1
    aput v2, p0, v2

    div-int v1, p2, p1

    rem-int v5, p2, p1

    const/4 v0, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    if-gt v3, p1, :cond_2

    add-int/2addr v2, v5

    if-lez v2, :cond_3

    sub-int v0, p1, v2

    if-ge v0, v5, :cond_3

    add-int/lit8 v0, v1, 0x1

    sub-int/2addr v2, p1

    :goto_1
    add-int/2addr v4, v0

    aput v4, p0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    :goto_0
    iget v1, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v1

    if-eqz v0, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v0, :cond_3

    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v0, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v2, v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v1

    if-le v1, v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_2
    iput v2, p3, Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 3

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private guessMeasurement(FI)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    iget v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getHeightMode()I

    move-result v4

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v1, v0, p3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    return-void

    :cond_0
    iget v4, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getWidthMode()I

    move-result v4

    iget v0, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateMeasurements()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    iget v2, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-interface {p3, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v3, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v2, v3

    iput v2, p2, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method findReferenceChild(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    :goto_1
    if-eq p3, p4, :cond_4

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_7

    if-ge v0, p5, :cond_7

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    move-object v3, v4

    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v4, :cond_7

    move-object v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_5

    :cond_3
    if-nez v2, :cond_7

    move-object v0, v3

    move-object v3, v4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    :goto_3
    move-object v3, v2

    :cond_5
    return-object v3

    :cond_6
    move-object v2, v4

    goto :goto_3

    :cond_7
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getColumnCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRowCountForAccessibility(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getSpaceForSpanRange(II)I
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 15

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getModeInOther()I

    move-result v12

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_2

    const/4 v2, 0x1

    move v8, v2

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    aget v2, v2, v3

    move v11, v2

    :goto_1
    if-eqz v8, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    :cond_0
    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v7, 0x1

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-nez v7, :cond_1

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v2

    move-object/from16 v0, p3

    iget v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    :goto_3
    iget v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ge v5, v3, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->hasMore(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-lez v2, :cond_6

    move-object/from16 v0, p3

    iget v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v3}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanSize(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v4

    iget v9, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-le v4, v9, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Item at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " spans but GridLayoutManager has only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " spans."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_1

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_5
    sub-int/2addr v2, v4

    if-gez v2, :cond_7

    :cond_6
    if-nez v5, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    :goto_4
    return-void

    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->next(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    add-int/2addr v6, v4

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->assignSpans(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;IIZ)V

    const/4 v2, 0x0

    move v6, v2

    move v4, v9

    move v3, v10

    :goto_5
    if-ge v6, v5, :cond_d

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v9, v2, v6

    move-object/from16 v0, p3

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v2, :cond_b

    if-eqz v7, :cond_a

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    :goto_6
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-direct {p0, v9, v12, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-le v2, v3, :cond_9

    move v3, v2

    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v13, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v13, v9}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v10

    iget v2, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v2, v2

    div-float v2, v9, v2

    cmpl-float v9, v2, v4

    if-lez v9, :cond_1b

    :goto_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v2

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {p0, v9, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v9, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_6

    :cond_d
    if-eqz v8, :cond_e

    invoke-direct {p0, v4, v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->guessMeasurement(FI)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_8
    if-ge v4, v5, :cond_e

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v4

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    invoke-direct {p0, v2, v6, v7}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-le v2, v3, :cond_1a

    :goto_9
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    move v6, v2

    :goto_a
    if-ge v6, v5, :cond_11

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v2, v6

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-eq v2, v3, :cond_f

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    iget-object v4, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v9

    iget v9, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v4, v9

    iget v9, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v4, v9

    iget v9, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v10, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v9, v10}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v9

    iget v10, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const/high16 v10, 0x40000000    # 2.0f

    iget v2, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v2, v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    sub-int v2, v3, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_b
    const/4 v8, 0x1

    invoke-direct {p0, v7, v4, v2, v8}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :cond_f
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_a

    :cond_10
    sub-int v4, v3, v4

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/high16 v10, 0x40000000    # 2.0f

    iget v2, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v8, v2, v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    goto :goto_b

    :cond_11
    move-object/from16 v0, p4

    iput v3, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget v8, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_14

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v3, v2, v3

    move v4, v6

    move v6, v7

    :goto_c
    const/4 v7, 0x0

    move v11, v2

    move v9, v3

    move v10, v4

    move v8, v6

    move v3, v7

    :goto_d
    if-ge v3, v5, :cond_19

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    iget v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_18

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v8, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    iget v10, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v8, v10

    aget v6, v6, v8

    add-int v10, v4, v6

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    sub-int v8, v10, v4

    :goto_e
    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    :cond_13
    move-object/from16 v0, p4

    iget-boolean v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v7}, Landroid/view/View;->isFocusable()Z

    move-result v4

    or-int/2addr v2, v4

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d

    :cond_14
    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int v2, v4, v3

    move v3, v4

    move v4, v6

    move v6, v7

    goto :goto_c

    :cond_15
    move-object/from16 v0, p3

    iget v6, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_16

    move-object/from16 v0, p3

    iget v6, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v3, v6, v3

    move v14, v4

    move v4, v6

    move v6, v3

    move v3, v14

    goto :goto_c

    :cond_16
    move-object/from16 v0, p3

    iget v6, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v3, v6

    move v14, v4

    move v4, v3

    move v3, v14

    goto :goto_c

    :cond_17
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v8, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v6, v6, v8

    add-int v8, v4, v6

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v10, v8, v4

    goto :goto_e

    :cond_18
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget v9, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v6, v6, v9

    add-int v9, v4, v6

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientationHelper:Lorg/telegram/messenger/support/widget/OrientationHelper;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/support/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v4

    add-int v11, v9, v4

    goto :goto_e

    :cond_19
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move v2, v3

    goto/16 :goto_9

    :cond_1b
    move v2, v4

    goto/16 :goto_7
.end method

.method onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onAnchorReady(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/LinearLayoutManager$AnchorInfo;I)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;
    .locals 20

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    iget v14, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v3, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v2, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int v15, v3, v2

    invoke-super/range {p0 .. p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    const/4 v3, -0x1

    const/4 v2, -0x1

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_4
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    move v12, v2

    :goto_5
    if-eq v12, v3, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-ne v9, v13, :cond_8

    :cond_3
    move-object v9, v8

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v6

    move v6, v7

    move-object v7, v8

    :goto_6
    add-int v8, v12, v4

    move v12, v8

    move-object v8, v7

    move v7, v6

    move v6, v2

    goto :goto_5

    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    iget v0, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v16, v0

    iget v10, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v11, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int v17, v10, v11

    move/from16 v0, v16

    if-ne v0, v14, :cond_a

    move/from16 v0, v17

    if-eq v0, v15, :cond_0

    :cond_a
    const/4 v10, 0x0

    if-nez v8, :cond_c

    const/4 v10, 0x1

    :cond_b
    :goto_7
    if-eqz v10, :cond_f

    iget v6, v2, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v2, v7

    move-object v7, v9

    goto :goto_6

    :cond_c
    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v11, v18, v11

    if-le v11, v6, :cond_d

    const/4 v10, 0x1

    goto :goto_7

    :cond_d
    if-ne v11, v6, :cond_b

    move/from16 v0, v16

    if-le v0, v7, :cond_e

    const/4 v11, 0x1

    :goto_8
    if-ne v5, v11, :cond_b

    const/4 v10, 0x1

    goto :goto_7

    :cond_e
    const/4 v11, 0x0

    goto :goto_8

    :cond_f
    move v2, v6

    move v6, v7

    move-object v7, v8

    goto :goto_6
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    check-cast v6, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getSpanGroupIndex(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    move-result v2

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v1

    const/4 v3, 0x1

    iget v4, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget v5, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onItemsAdded(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsMoved(Lorg/telegram/messenger/support/widget/RecyclerView;III)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->onLayoutCompleted(Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v0, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setMeasuredDimension(II)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v0, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    goto :goto_0
.end method

.method public setSpanCount(I)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-ge p1, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanCount:I

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mSpanSizeLookup:Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public setStackFromEnd(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSavedState:Lorg/telegram/messenger/support/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
