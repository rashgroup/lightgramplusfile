.class public abstract Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "BaseSectionsAdapter.java"


# instance fields
.field private count:I

.field private sectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionCount:I

.field private sectionCountCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionPositionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->cleanupCache()V

    return-void
.end method

.method private cleanupCache()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionPositionCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCountCache:Landroid/util/SparseArray;

    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    return-void
.end method

.method private internalGetCountForSection(I)I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCountCache:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private internalGetSectionCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    if-ltz v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetSectionCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetCountForSection(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    goto :goto_0
.end method

.method public abstract getCountForSection(I)I
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItem(II)Ljava/lang/Object;
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getItemViewType(II)I

    move-result v0

    return v0
.end method

.method public abstract getItemViewType(II)I
.end method

.method public getPositionInSectionForPosition(I)I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetSectionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetCountForSection(I)I

    move-result v2

    add-int/2addr v2, v1

    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    sub-int v0, p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionPositionCache:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract getSectionCount()I
.end method

.method public final getSectionForPosition(I)I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetSectionCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetCountForSection(I)I

    move-result v2

    add-int/2addr v2, v1

    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCache:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->isRowEnabled(II)Z

    move-result v0

    return v0
.end method

.method public abstract isRowEnabled(II)Z
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->cleanupCache()V

    invoke-super {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->cleanupCache()V

    invoke-super {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
