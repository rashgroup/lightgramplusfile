.class public Lorg/telegram/ui/Components/ShutterButton;
.super Landroid/view/View;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;,
        Lorg/telegram/ui/Components/ShutterButton$State;
    }
.end annotation


# static fields
.field private static final LONG_PRESS_TIME:I = 0x320


# instance fields
.field private delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastUpdateTime:J

.field private longPressed:Ljava/lang/Runnable;

.field private pressed:Z

.field private processRelease:Z

.field private redPaint:Landroid/graphics/Paint;

.field private redProgress:F

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private state:Lorg/telegram/ui/Components/ShutterButton$State;

.field private totalTime:J

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Lorg/telegram/ui/Components/ShutterButton$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ShutterButton$1;-><init>(Lorg/telegram/ui/Components/ShutterButton;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    const v1, -0x32b8b9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    iput-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ShutterButton;)Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ShutterButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    return p1
.end method

.method private setHighlighted(Z)V
    .locals 8

    const/4 v1, 0x2

    const v7, 0x3f87ae14    # 1.06f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_0

    new-array v1, v1, [Landroid/animation/Animator;

    const-string/jumbo v2, "scaleX"

    new-array v3, v5, [F

    aput v7, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "scaleY"

    new-array v3, v5, [F

    aput v7, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShutterButton;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    new-array v1, v1, [Landroid/animation/Animator;

    const-string/jumbo v2, "scaleX"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "scaleY"

    new-array v3, v5, [F

    aput v6, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_0
.end method


# virtual methods
.method public getDelegate()Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    return-object v0
.end method

.method public getState()Lorg/telegram/ui/Components/ShutterButton$State;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-wide/16 v0, 0x11

    const/high16 v11, 0x41d00000    # 26.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v8, 0x42100000    # 36.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v4, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v5, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ShutterButton;->pressed:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_5

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getScaleX()F

    move-result v2

    sub-float/2addr v2, v10

    const v3, 0x3d75c28f    # 0.06f

    div-float v6, v2, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v4

    int-to-float v3, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ShutterButton;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v3, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, p0, Lorg/telegram/ui/Components/ShutterButton;->lastUpdateTime:J

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v7, v2, v0

    if-lez v7, :cond_6

    :goto_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    iget-wide v0, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v2, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    long-to-float v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->invalidate()V

    :cond_2
    int-to-float v0, v4

    int-to-float v1, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v3, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_3

    int-to-float v0, v4

    int-to-float v1, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget-object v3, p0, Lorg/telegram/ui/Components/ShutterButton;->redPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_3

    iput v9, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    goto :goto_1

    :cond_6
    move-wide v0, v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    const/high16 v1, 0x42a80000    # 84.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ShutterButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShutterButton;->pressed:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ShutterButton;->processRelease:Z

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v3

    if-ltz v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterReleased()V

    goto :goto_0

    :pswitch_2
    cmpg-float v2, v0, v3

    if-ltz v2, :cond_1

    cmpg-float v2, v1, v3

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->longPressed:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterCancel()V

    sget-object v0, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {p0, v0, v4}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ShutterButton;->setHighlighted(Z)V

    iput-boolean v5, p0, Lorg/telegram/ui/Components/ShutterButton;->pressed:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->delegate:Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->invalidate()V

    return-void
.end method

.method public setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShutterButton;->lastUpdateTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ShutterButton;->totalTime:J

    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-eq v0, v1, :cond_0

    iput v2, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShutterButton;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShutterButton;->state:Lorg/telegram/ui/Components/ShutterButton$State;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    goto :goto_0

    :cond_3
    iput v2, p0, Lorg/telegram/ui/Components/ShutterButton;->redProgress:F

    goto :goto_0
.end method
