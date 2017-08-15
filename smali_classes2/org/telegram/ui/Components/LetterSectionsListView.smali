.class public Lorg/telegram/ui/Components/LetterSectionsListView;
.super Landroid/widget/ListView;
.source "LetterSectionsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private currentFirst:I

.field private currentVisible:I

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headersCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private sectionsCount:I

.field private startSection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;Z)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v2, p1, p2, p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    :goto_1
    int-to-float v2, v5

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v11, v11, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    if-gez v5, :cond_2

    int-to-float v2, v5

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    int-to-float v4, v0

    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v5, v10

    add-float/2addr v5, v6

    mul-float/2addr v0, v5

    float-to-int v5, v0

    const/4 v6, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_2
    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    if-eq v0, p3, :cond_4

    :cond_3
    iput p2, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    iput p3, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iget v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    add-int v1, p2, p3

    if-lt v0, v1, :cond_6

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    move v1, v0

    move v2, p2

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    iget v3, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    add-int/2addr v0, v3

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v4

    iget v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v0

    add-int/lit8 v5, v4, -0x1

    if-ne v0, v5, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v0

    sub-int v0, v4, v0

    add-int/2addr v2, v0

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iget v2, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    iget v3, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    goto :goto_0

    :cond_7
    add-int/lit8 v5, v4, -0x2

    if-ne v0, v5, :cond_a

    sub-int v0, v2, p2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_4
    if-gez v0, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    goto :goto_4

    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    sub-int v0, v2, p2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_5
    add-int/2addr v2, v4

    goto :goto_3

    :cond_c
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    instance-of v0, p1, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
