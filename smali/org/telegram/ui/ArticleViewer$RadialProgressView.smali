.class Lorg/telegram/ui/ArticleViewer$RadialProgressView;
.super Ljava/lang/Object;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialProgressView"
.end annotation


# instance fields
.field private alpha:F

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private backgroundState:I

.field private currentProgress:F

.field private currentProgressTime:J

.field private lastUpdateTime:J

.field private parent:Landroid/view/View;

.field private previousBackgroundState:I

.field private progressRect:Landroid/graphics/RectF;

.field private radOffset:F

.field private scale:F

.field private size:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    iput-wide v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->progressRect:Landroid/graphics/RectF;

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->size:I

    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->scale:F

    # getter for: Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9700()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    # setter for: Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$9702(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    # setter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$9802(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    return-void
.end method

.method static synthetic access$10600(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    return v0
.end method

.method private updateAnimation()V
    .locals 11

    const/4 v10, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    const-wide/16 v4, 0x168

    mul-long/2addr v4, v2

    long-to-float v1, v4

    const v4, 0x453b8000    # 3000.0f

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v8

    if-lez v1, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    iget-wide v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    const-wide/16 v6, 0x12c

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eq v0, v10, :cond_3

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    long-to-float v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_2

    iput v8, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void

    :cond_4
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    # getter for: Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9700()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v4

    iget-wide v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    long-to-float v5, v6

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v6, 0x437f0000    # 255.0f

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$9900(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$10000(Lorg/telegram/ui/ArticleViewer;)I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-ltz v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-ge v3, v10, :cond_0

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$10100()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    mul-float/2addr v4, v6

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int v4, v1, v0

    add-int v5, v2, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-ltz v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-ge v3, v10, :cond_1

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$10100()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eq v4, v8, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    add-int v4, v1, v0

    add-int v5, v2, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-eq v3, v9, :cond_2

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-ne v3, v9, :cond_3

    :cond_2
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    if-eq v4, v8, :cond_5

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9800()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    mul-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->progressRect:Landroid/graphics/RectF;

    add-int v5, v1, v3

    int-to-float v5, v5

    add-int v6, v2, v3

    int-to-float v6, v6

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->progressRect:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->radOffset:F

    add-float/2addr v2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    mul-float/2addr v0, v3

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9800()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->updateAnimation()V

    :cond_3
    return-void

    :cond_4
    iget v4, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_5
    # getter for: Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9800()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->alpha:F

    return-void
.end method

.method public setBackgroundState(IZ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->lastUpdateTime:J

    if-eqz p2, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedAlphaValue:F

    :goto_0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->previousBackgroundState:I

    goto :goto_0
.end method

.method public setProgress(FZ)V
    .locals 2

    if-nez p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    :goto_0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgress:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->currentProgressTime:J

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->animationProgressStart:F

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->scale:F

    return-void
.end method
