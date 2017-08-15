.class public Lorg/telegram/ui/ActionBar/BackDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackDrawable.java"


# instance fields
.field private alwaysClose:Z

.field private animationInProgress:Z

.field private animationTime:F

.field private color:I

.field private currentAnimationTime:I

.field private currentRotation:F

.field private finalRotation:F

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;

.field private reverseAngle:Z

.field private rotated:Z

.field private rotatedColor:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    const v0, -0x8a8a8b

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v10, 0x40e00000    # 7.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    sub-long/2addr v4, v8

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-long v8, v0

    add-long/2addr v4, v8

    long-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_2
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    if-eqz v4, :cond_2

    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    :cond_2
    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v1, v4

    invoke-static {v0, v3, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    if-nez v0, :cond_8

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v0, :cond_7

    const/16 v0, -0xe1

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    move v6, v1

    :goto_4
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    sub-float v1, v0, v1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v8, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float v7, v0, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    sub-float v3, v0, v2

    neg-float v2, v8

    neg-float v4, v7

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v8

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    mul-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v7, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v3, v1

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x87

    goto/16 :goto_3

    :cond_8
    const/high16 v1, 0x43070000    # 135.0f

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v0, :cond_9

    const/16 v0, -0xb4

    :goto_5
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    move v6, v7

    goto/16 :goto_4

    :cond_9
    const/16 v0, 0xb4

    goto :goto_5
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

.method public setAnimationTime(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setRotated(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    return-void
.end method

.method public setRotatedColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    return-void
.end method

.method public setRotation(FZ)V
    .locals 6

    const-wide/16 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    :cond_0
    :goto_0
    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    if-eqz p2, :cond_3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    sub-float v0, v2, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    goto :goto_1

    :cond_3
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    goto :goto_2
.end method
