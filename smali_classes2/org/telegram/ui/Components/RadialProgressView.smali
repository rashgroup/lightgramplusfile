.class public Lorg/telegram/ui/Components/RadialProgressView;
.super Landroid/view/View;
.source "RadialProgressView.java"


# instance fields
.field private accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private cicleRect:Landroid/graphics/RectF;

.field private currentCircleLength:F

.field private currentProgressTime:F

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastUpdateTime:J

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private radOffset:F

.field private risingCircleLength:Z

.field private final risingTime:F

.field private final rotationTime:F

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->rotationTime:F

    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingTime:F

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    const-string/jumbo v0, "progressCircle"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateAnimation()V
    .locals 10

    const-wide/16 v0, 0x11

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->lastUpdateTime:J

    sub-long v2, v4, v2

    cmp-long v6, v2, v0

    if-lez v6, :cond_5

    :goto_0
    iput-wide v4, p0, Lorg/telegram/ui/Components/RadialProgressView;->lastUpdateTime:J

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    const-wide/16 v4, 0x168

    mul-long/2addr v4, v0

    long-to-float v3, v4

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    mul-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    sub-float v2, v3, v2

    iput v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    long-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_0

    iput v7, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x43850000    # 266.0f

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    div-float/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    add-float/2addr v0, v9

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    const/high16 v0, -0x3c7b0000    # -266.0f

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->risingCircleLength:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgressView;->invalidate()V

    return-void

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentProgressTime:F

    div-float/2addr v2, v7

    invoke-virtual {v1, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v9

    sub-float v0, v8, v0

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgressView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    iget v5, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->cicleRect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Components/RadialProgressView;->radOffset:F

    iget v3, p0, Lorg/telegram/ui/Components/RadialProgressView;->currentCircleLength:F

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgressView;->updateAnimation()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RadialProgressView;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgressView;->size:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RadialProgressView;->invalidate()V

    return-void
.end method
