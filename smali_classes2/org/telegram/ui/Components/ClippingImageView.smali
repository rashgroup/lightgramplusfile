.class public Lorg/telegram/ui/Components/ClippingImageView;
.super Landroid/view/View;
.source "ClippingImageView.java"


# instance fields
.field private animationProgress:F

.field private animationValues:[[F

.field private bitmapRect:Landroid/graphics/RectF;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private bmp:Landroid/graphics/Bitmap;

.field private clipBottom:I

.field private clipLeft:I

.field private clipRight:I

.field private clipTop:I

.field private drawRect:Landroid/graphics/RectF;

.field private matrix:Landroid/graphics/Matrix;

.field private needRadius:Z

.field private orientation:I

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field private roundPaint:Landroid/graphics/Paint;

.field private roundRect:Landroid/graphics/RectF;

.field private shaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public getAnimationProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    return v0
.end method

.method public getClipBottom()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    return v0
.end method

.method public getClipHorizontal()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    return v0
.end method

.method public getClipLeft()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    return v0
.end method

.method public getClipTop()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/16 v7, 0x10e

    const/16 v5, 0x5a

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->needRadius:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-eq v0, v5, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v7, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_5

    int-to-float v2, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v5

    if-eqz v5, :cond_3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    iget-object v5, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v5, v1, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-static {v0, v1, v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Matrix$ScaleToFit;)V

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    int-to-float v5, v5

    div-float v4, v5, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto/16 :goto_1

    :cond_5
    move v2, v3

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-static {v0, v1, v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->setRectToRect(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Matrix$ScaleToFit;)V

    goto :goto_3

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    if-eq v0, v5, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    if-ne v0, v7, :cond_9

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v6, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_5
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    int-to-float v5, v5

    div-float v4, v5, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_9
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v6, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_5
.end method

.method public setAnimationProgress(F)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v5

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v6

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v7

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setClipHorizontal(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    const/4 v1, 0x5

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    const/4 v2, 0x5

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x5

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setClipTop(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    const/4 v1, 0x6

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x6

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setClipBottom(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    const/4 v1, 0x7

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    const/4 v2, 0x7

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x7

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    return-void
.end method

.method public setAnimationValues([[F)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    return-void
.end method

.method public setClipBottom(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    return-void
.end method

.method public setClipHorizontal(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    return-void
.end method

.method public setClipLeft(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    return-void
.end method

.method public setClipRight(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    return-void
.end method

.method public setClipTop(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    return-void
.end method

.method public setClipVertical(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->needRadius:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    return-void
.end method

.method public setNeedRadius(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->needRadius:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    return-void
.end method
