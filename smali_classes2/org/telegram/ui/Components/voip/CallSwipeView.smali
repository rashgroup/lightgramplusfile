.class public Lorg/telegram/ui/Components/voip/CallSwipeView;
.super Landroid/view/View;
.source "CallSwipeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/CallSwipeView$ArrowAnimWrapper;,
        Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;
    }
.end annotation


# instance fields
.field private animatingArrows:Z

.field private arrow:Landroid/graphics/Path;

.field private arrowAlphas:[I

.field private arrowAnim:Landroid/animation/AnimatorSet;

.field private arrowsPaint:Landroid/graphics/Paint;

.field private dragFromRight:Z

.field private dragStartX:F

.field private dragging:Z

.field private listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

.field private pullBgPaint:Landroid/graphics/Paint;

.field private tmpRect:Landroid/graphics/RectF;

.field private viewToDrag:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->init()V

    return-void

    :array_0
    .array-data 4
        0x40
        0x40
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->init()V

    return-void

    :array_0
    .array-data 4
        0x40
        0x40
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->init()V

    return-void

    :array_0
    .array-data 4
        0x40
        0x40
        0x40
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/CallSwipeView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/CallSwipeView;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/CallSwipeView;)[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    return-object v0
.end method

.method private getDraggedViewWidth()I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 6

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->pullBgPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lorg/telegram/ui/Components/voip/CallSwipeView$ArrowAnimWrapper;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/voip/CallSwipeView$ArrowAnimWrapper;-><init>(Lorg/telegram/ui/Components/voip/CallSwipeView;I)V

    const-string/jumbo v3, "arrowAlpha"

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit16 v3, v0, 0xc8

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/voip/CallSwipeView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/CallSwipeView$1;-><init>(Lorg/telegram/ui/Components/voip/CallSwipeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x40
        0xff
        0x40
    .end array-data
.end method

.method private updateArrowPath()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    int-to-float v2, v0

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    int-to-float v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->pullBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    const/4 v0, 0x3

    if-ge v3, v0, :cond_4

    mul-int/lit8 v0, v3, 0x10

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/2addr v0, v3

    int-to-float v0, v0

    sub-float v0, v4, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAlphas:[I

    aget v6, v6, v3

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrow:Landroid/graphics/Path;

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v0, :cond_3

    const/high16 v0, -0x3e800000    # -16.0f

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->tmpRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v7, v7, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->invalidate()V

    return-void

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    :cond_2
    iput-boolean v5, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragStartX:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;->onDragStart()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->stopAnimatingArrows()V

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragStartX:F

    sub-float/2addr v3, v4

    iget-boolean v4, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    if-eqz v4, :cond_6

    :goto_3
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->invalidate()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->getDraggedViewWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;->onDragComplete()V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    invoke-interface {v2}, Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;->onDragCancel()V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->startAnimatingArrows()V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;->onDragCancel()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->startAnimatingArrows()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragging:Z

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->pullBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->pullBgPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->listener:Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;

    return-void
.end method

.method public setViewToDrag(Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->viewToDrag:Landroid/view/View;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->dragFromRight:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->updateArrowPath()V

    return-void
.end method

.method public startAnimatingArrows()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->arrowAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public stopAnimatingArrows()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/CallSwipeView;->animatingArrows:Z

    return-void
.end method
