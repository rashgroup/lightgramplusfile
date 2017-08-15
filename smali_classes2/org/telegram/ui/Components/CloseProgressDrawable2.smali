.class public Lorg/telegram/ui/Components/CloseProgressDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "CloseProgressDrawable2.java"


# instance fields
.field private angle:F

.field private animating:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    sub-long v0, v10, v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const-wide/16 v4, 0x168

    mul-long/2addr v0, v4

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v1, 0x44340000    # 720.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->invalidateSelf()V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x3dcc0000    # -45.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x42b40000    # 90.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x42b40000    # 90.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move v6, v0

    move v7, v1

    move v8, v2

    move v0, v3

    :goto_1
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float v1, v0, v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float v2, v0, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v0, v6

    const/4 v2, 0x0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->rect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v2, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x0

    :goto_2
    const/high16 v2, 0x42340000    # 45.0f

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_f

    iget v3, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    :goto_3
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iput-wide v10, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    return-void

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    iget v1, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v2, 0x44340000    # 720.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit16 v1, v1, 0x2d0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    goto/16 :goto_0

    :cond_7
    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x42b40000    # 90.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_8

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43340000    # 180.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v4, v5

    const/high16 v5, 0x42b40000    # 90.0f

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    move v6, v0

    move v7, v1

    move v8, v2

    move v0, v3

    goto/16 :goto_1

    :cond_8
    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_9

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43870000    # 270.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    move v6, v0

    move v7, v1

    move v8, v2

    move v0, v2

    goto/16 :goto_1

    :cond_9
    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43870000    # 270.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_a

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43b40000    # 360.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v2, 0x43870000    # 270.0f

    sub-float/2addr v0, v2

    const/high16 v2, 0x42b40000    # 90.0f

    div-float/2addr v0, v2

    move v6, v0

    move v7, v1

    move v8, v1

    move v0, v1

    goto/16 :goto_1

    :cond_a
    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43b40000    # 360.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_b

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43e10000    # 450.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    move v6, v0

    move v7, v1

    move v8, v1

    move v0, v1

    goto/16 :goto_1

    :cond_b
    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x43e10000    # 450.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_c

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x44070000    # 540.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_c

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v3, 0x43e10000    # 450.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x42b40000    # 90.0f

    div-float/2addr v2, v3

    move v6, v0

    move v7, v1

    move v8, v1

    move v0, v2

    goto/16 :goto_1

    :cond_c
    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x44070000    # 540.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_d

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const v5, 0x441d8000    # 630.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v4, 0x44070000    # 540.0f

    sub-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v2, v4

    move v6, v0

    move v7, v1

    move v8, v2

    move v0, v3

    goto/16 :goto_1

    :cond_d
    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const v5, 0x441d8000    # 630.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_10

    iget v4, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v5, 0x44340000    # 720.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_10

    iget v1, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const v4, 0x441d8000    # 630.0f

    sub-float/2addr v1, v4

    const/high16 v4, 0x42b40000    # 90.0f

    div-float/2addr v1, v4

    move v6, v0

    move v7, v1

    move v8, v2

    move v0, v3

    goto/16 :goto_1

    :cond_e
    iget v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v0, v2

    goto/16 :goto_2

    :cond_f
    const/high16 v0, 0x44340000    # 720.0f

    iget v3, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->angle:F

    sub-float v3, v0, v3

    goto/16 :goto_3

    :cond_10
    move v6, v0

    move v7, v1

    move v8, v2

    move v0, v3

    goto/16 :goto_1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->lastFrameTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->invalidateSelf()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CloseProgressDrawable2;->animating:Z

    return-void
.end method
