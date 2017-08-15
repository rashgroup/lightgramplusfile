.class public abstract Lorg/telegram/messenger/support/widget/SnapHelper;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;
.source "SnapHelper.java"


# static fields
.field static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

.field private final mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;-><init>()V

    new-instance v0, Lorg/telegram/messenger/support/widget/SnapHelper$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/widget/SnapHelper$1;-><init>(Lorg/telegram/messenger/support/widget/SnapHelper;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private destroyCallbacks()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setOnFlingListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;)V

    return-void
.end method

.method private setupCallbacks()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getOnFlingListener()Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setOnFlingListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnFlingListener;)V

    return-void
.end method

.method private snapFromFling(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;II)Z
    .locals 4
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/SnapHelper;->createSnapScroller(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/LinearSmoothScroller;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/SnapHelper;->findTargetSnapPosition(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->startSmoothScroll(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 3
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/SnapHelper;->destroyCallbacks()V

    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/SnapHelper;->setupCallbacks()V

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/SnapHelper;->snapToTargetExistingView()V

    goto :goto_0
.end method

.method public abstract calculateDistanceToFinalSnap(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public calculateScrollDistance(II)[I
    .locals 10

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v9, v0, [I

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    aput v0, v9, v1

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    aput v1, v9, v0

    return-object v9
.end method

.method protected createSnapScroller(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/widget/SnapHelper$2;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/support/widget/SnapHelper$2;-><init>(Lorg/telegram/messenger/support/widget/SnapHelper;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public abstract findSnapView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract findTargetSnapPosition(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;II)I
.end method

.method public onFling(II)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_0

    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lorg/telegram/messenger/support/widget/SnapHelper;->snapFromFling(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method snapToTargetExistingView()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/SnapHelper;->findSnapView(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/widget/SnapHelper;->calculateDistanceToFinalSnap(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    aget v1, v0, v2

    if-nez v1, :cond_2

    aget v1, v0, v3

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/SnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    aget v2, v0, v2

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0
.end method
