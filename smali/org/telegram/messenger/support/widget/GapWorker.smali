.class final Lorg/telegram/messenger/support/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Lorg/telegram/messenger/support/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/telegram/messenger/support/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/messenger/support/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    new-instance v0, Lorg/telegram/messenger/support/widget/GapWorker$1;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/GapWorker$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v3

    move v2, v3

    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v4, v0, v3}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lorg/telegram/messenger/support/widget/RecyclerView;Z)V

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v0, v0, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v6, v3

    move v1, v3

    :goto_1
    if-ge v6, v7, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v8, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v2, v8, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v8, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v9, v2, v4

    move v2, v3

    move v4, v1

    :goto_2
    iget v1, v8, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_1

    new-instance v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;

    invoke-direct {v1}, Lorg/telegram/messenger/support/widget/GapWorker$Task;-><init>()V

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v5, v8, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v10, v2, 0x1

    aget v10, v5, v10

    if-gt v10, v9, :cond_2

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->immediate:Z

    iput v9, v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->viewVelocity:I

    iput v10, v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->distanceToItem:I

    iput-object v0, v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v8, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v5, v5, v2

    iput v5, v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->position:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/GapWorker$Task;

    goto :goto_3

    :cond_2
    move v5, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/support/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private flushTaskWithDeadline(Lorg/telegram/messenger/support/widget/GapWorker$Task;J)V
    .locals 4

    iget-boolean v0, p1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget v3, p1, Lorg/telegram/messenger/support/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/telegram/messenger/support/widget/GapWorker;->prefetchPositionWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;IJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0, v0, p2, p3}, Lorg/telegram/messenger/support/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;J)V

    :cond_0
    return-void

    :cond_1
    move-wide v0, p2

    goto :goto_0
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/GapWorker$Task;

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/GapWorker$Task;->view:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lorg/telegram/messenger/support/widget/GapWorker;->flushTaskWithDeadline(Lorg/telegram/messenger/support/widget/GapWorker$Task;J)V

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GapWorker$Task;->clear()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static isPrefetchPositionAttached(Lorg/telegram/messenger/support/widget/RecyclerView;I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;J)V
    .locals 4
    .param p1    # Lorg/telegram/messenger/support/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lorg/telegram/messenger/support/widget/RecyclerView;Z)V

    iget v0, v1, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "RV Nested Prefetch"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->prepareForNestedPrefetch(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    :goto_1
    iget v2, v1, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    iget-object v2, v1, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v0

    invoke-direct {p0, p1, v2, p2, p3}, Lorg/telegram/messenger/support/widget/GapWorker;->prefetchPositionWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;IJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private prefetchPositionWithDeadline(Lorg/telegram/messenger/support/widget/RecyclerView;IJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lorg/telegram/messenger/support/widget/GapWorker;->isPrefetchPositionAttached(Lorg/telegram/messenger/support/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p2, v3, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method postFromTraversal(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView;->mPrefetchRegistry:Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/support/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    return-void
.end method

.method prefetch(J)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GapWorker;->buildTaskList()V

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/GapWorker;->flushTasksWithDeadline(J)V

    return-void
.end method

.method public remove(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 6

    const-wide/16 v4, 0x0

    :try_start_0
    const-string/jumbo v0, "RV Prefetch"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    iput-wide v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    iput-wide v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-wide v2, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/support/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-wide v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-wide v4, p0, Lorg/telegram/messenger/support/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0
.end method
