.class public Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.super Lorg/telegram/messenger/support/widget/GridLayoutManager;
.source "ExtendedGridLayoutManager.java"


# instance fields
.field private calculatedWidth:I

.field private itemSpans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private itemsToRow:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemsToRow:Landroid/util/SparseArray;

    return-void
.end method

.method private checkLayout()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getFlowItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->calculatedWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->calculatedWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->prepareLayout(F)V

    :cond_1
    return-void
.end method

.method private getLinearPartitionForSequence([II)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v0, 0x0

    array-length v2, p1

    if-gtz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    if-ge p2, v2, :cond_1

    if-ne v2, v10, :cond_3

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getLinearPartitionTable([II)[I

    move-result-object v5

    add-int/lit8 v6, p2, -0x1

    add-int/lit8 v1, p2, -0x2

    add-int/lit8 v3, v2, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    move v1, v3

    :goto_2
    if-ltz v4, :cond_6

    if-ge v1, v10, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, v6

    add-int/2addr v3, v4

    aget v3, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v1, 0x1

    :goto_4
    if-ge v3, v8, :cond_5

    aget v9, p1, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v6

    add-int/2addr v1, v4

    aget v1, v5, v1

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v4, v1, 0x1

    move v1, v0

    :goto_5
    if-ge v1, v4, :cond_7

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v0, v2

    goto/16 :goto_0
.end method

.method private getLinearPartitionTable([II)[I
    .locals 13

    const/4 v6, 0x1

    const/4 v1, 0x0

    array-length v8, p1

    mul-int v0, v8, p2

    new-array v9, v0, [I

    add-int/lit8 v0, v8, -0x1

    add-int/lit8 v2, p2, -0x1

    mul-int/2addr v0, v2

    new-array v10, v0, [I

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_1

    mul-int v3, v2, p2

    aget v4, p1, v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v2, -0x1

    mul-int/2addr v0, p2

    aget v0, v9, v0

    :goto_1
    add-int/2addr v0, v4

    aput v0, v9, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    if-ge v0, p2, :cond_2

    aget v2, p1, v1

    aput v2, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_7

    move v5, v6

    :goto_4
    if-ge v5, p2, :cond_6

    const v0, 0x7fffffff

    move v3, v1

    move v2, v1

    :goto_5
    if-ge v2, v7, :cond_5

    mul-int v4, v2, p2

    add-int/lit8 v11, v5, -0x1

    add-int/2addr v4, v11

    aget v4, v9, v4

    mul-int v11, v7, p2

    aget v11, v9, v11

    mul-int v12, v2, p2

    aget v12, v9, v12

    sub-int/2addr v11, v12

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v2, :cond_3

    if-ge v4, v3, :cond_4

    :cond_3
    move v0, v2

    move v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    mul-int v2, v7, p2

    add-int/2addr v2, v5

    aput v3, v9, v2

    add-int/lit8 v2, v7, -0x1

    add-int/lit8 v3, p2, -0x1

    mul-int/2addr v2, v3

    add-int/lit8 v3, v5, -0x1

    add-int/2addr v2, v3

    aput v0, v10, v2

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_7
    return-object v10
.end method

.method private prepareLayout(F)V
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemsToRow:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getFlowItemCount()I

    move-result v8

    new-array v3, v8, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->sizeForItem(I)Lorg/telegram/ui/Components/Size;

    move-result-object v4

    iget v5, v4, Lorg/telegram/ui/Components/Size;->width:F

    iget v6, v4, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    iget v5, v4, Lorg/telegram/ui/Components/Size;->width:F

    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    div-float v4, v5, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-float v0, v1, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getLinearPartitionForSequence([II)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v5, v2, v4

    move v7, v3

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_1

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->sizeForItem(I)Lorg/telegram/ui/Components/Size;

    move-result-object v4

    iget v6, v4, Lorg/telegram/ui/Components/Size;->width:F

    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    div-float v4, v6, v4

    add-float/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, p1, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanCount()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v9, v2, v5

    move v6, v2

    :goto_4
    if-ge v6, v9, :cond_5

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->sizeForItem(I)Lorg/telegram/ui/Components/Size;

    move-result-object v5

    div-float v10, v3, v7

    iget v11, v5, Lorg/telegram/ui/Components/Size;->width:F

    iget v5, v5, Lorg/telegram/ui/Components/Size;->height:F

    div-float v5, v11, v5

    mul-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v10, 0x3

    if-lt v8, v10, :cond_2

    add-int/lit8 v10, v9, -0x1

    if-eq v6, v10, :cond_4

    :cond_2
    int-to-float v5, v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanCount()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int/2addr v4, v5

    move v12, v5

    move v5, v4

    move v4, v12

    :goto_5
    iget-object v10, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v5

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p1

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemsToRow:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v5, v4

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_6
    return-void

    :cond_7
    move v3, p1

    goto :goto_3
.end method

.method private sizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 4

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSizeForItem(I)Lorg/telegram/ui/Components/Size;

    move-result-object v0

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iput v3, v0, Lorg/telegram/ui/Components/Size;->width:F

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iput v3, v0, Lorg/telegram/ui/Components/Size;->height:F

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget v2, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_2

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget v2, v0, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    iput v1, v0, Lorg/telegram/ui/Components/Size;->height:F

    :cond_3
    return-object v0
.end method


# virtual methods
.method protected getFlowItemCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getRowsCount(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    int-to-float v0, p1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->prepareLayout(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 2

    const/high16 v1, 0x42c80000    # 100.0f

    new-instance v0, Lorg/telegram/ui/Components/Size;

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Components/Size;-><init>(FF)V

    return-object v0
.end method

.method public getSpanSizeForItem(I)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->checkLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemSpans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFirstRow(I)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->checkLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLastInRow(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->checkLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->itemsToRow:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
