.class Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;
.super Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
.source "PagerSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/PagerSnapHelper;->createSnapScroller(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/PagerSnapHelper;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/PagerSnapHelper;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->this$0:Lorg/telegram/messenger/support/widget/PagerSnapHelper;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2

    const/16 v0, 0x64

    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->this$0:Lorg/telegram/messenger/support/widget/PagerSnapHelper;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->this$0:Lorg/telegram/messenger/support/widget/PagerSnapHelper;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/support/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->calculateTimeForDeceleration(I)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/PagerSnapHelper$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v0, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method
