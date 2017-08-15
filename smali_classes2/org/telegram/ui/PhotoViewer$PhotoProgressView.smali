.class Lorg/telegram/ui/PhotoViewer$PhotoProgressView;
.super Ljava/lang/Object;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoProgressView"
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

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    iput-wide v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    iput v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    # getter for: Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1300()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    # setter for: Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1302(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    # setter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1402(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    return-void
.end method

.method static synthetic access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    return v0
.end method

.method private updateAnimation()V
    .locals 11

    const/4 v10, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    const-wide/16 v4, 0x168

    mul-long/2addr v4, v2

    long-to-float v1, v4

    const v4, 0x453b8000    # 3000.0f

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    sub-float/2addr v0, v1

    cmpl-float v1, v0, v8

    if-lez v1, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    const-wide/16 v6, 0x12c

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v0, v10, :cond_3

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    long-to-float v1, v2

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_2

    iput v8, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    iput v10, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void

    :cond_4
    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    # getter for: Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1300()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v4

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    long-to-float v5, v6

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

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

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->size:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I
    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->this$0:Lorg/telegram/ui/PhotoViewer;

    # invokes: Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I
    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-ltz v3, :cond_0

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-ge v3, v10, :cond_0

    # getter for: Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1700()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    mul-float/2addr v4, v6

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int v4, v1, v0

    add-int v5, v2, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-ltz v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-ge v3, v10, :cond_1

    # getter for: Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1700()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v4, v8, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    add-int v4, v1, v0

    add-int v5, v2, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-eq v3, v9, :cond_2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-ne v3, v9, :cond_3

    :cond_2
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    if-eq v4, v8, :cond_5

    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    mul-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

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

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->progressRect:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->radOffset:F

    add-float/2addr v2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    mul-float/2addr v0, v3

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->updateAnimation()V

    :cond_3
    return-void

    :cond_4
    iget v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_5
    # getter for: Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->access$1400()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->alpha:F

    return-void
.end method

.method public setBackgroundState(IZ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->lastUpdateTime:J

    if-eqz p2, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedAlphaValue:F

    :goto_0
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->parent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->previousBackgroundState:I

    goto :goto_0
.end method

.method public setProgress(FZ)V
    .locals 2

    if-nez p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    :goto_0
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgress:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->currentProgressTime:J

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->animationProgressStart:F

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->scale:F

    return-void
.end method
