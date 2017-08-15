.class public Lorg/telegram/messenger/ImageReceiver;
.super Ljava/lang/Object;
.source "ImageReceiver.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ImageReceiver$SetImageBackup;,
        Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    }
.end annotation


# static fields
.field private static roundPaint:Landroid/graphics/Paint;

.field private static selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;


# instance fields
.field private allowStartAnimation:Z

.field private bitmapRect:Landroid/graphics/RectF;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private bitmapShaderThumb:Landroid/graphics/BitmapShader;

.field private canceledLoading:Z

.field private centerRotation:Z

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private crossfadeAlpha:B

.field private crossfadeWithThumb:Z

.field private currentAlpha:F

.field private currentCacheOnly:Z

.field private currentExt:Ljava/lang/String;

.field private currentFilter:Ljava/lang/String;

.field private currentHttpUrl:Ljava/lang/String;

.field private currentImage:Landroid/graphics/drawable/Drawable;

.field private currentImageLocation:Lorg/telegram/tgnet/TLObject;

.field private currentKey:Ljava/lang/String;

.field private currentSize:I

.field private currentThumb:Landroid/graphics/drawable/Drawable;

.field private currentThumbFilter:Ljava/lang/String;

.field private currentThumbKey:Ljava/lang/String;

.field private currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

.field private drawRegion:Landroid/graphics/Rect;

.field private forcePreview:Z

.field private imageH:I

.field private imageW:I

.field private imageX:I

.field private imageY:I

.field private invalidateAll:Z

.field private isAspectFit:Z

.field private isPressed:Z

.field private isVisible:Z

.field private lastUpdateAlphaTime:J

.field private needsQualityThumb:Z

.field private orientation:I

.field private overrideAlpha:F

.field private parentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private parentView:Landroid/view/View;

.field private roundRadius:I

.field private roundRect:Landroid/graphics/RectF;

.field private setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

.field private shaderMatrix:Landroid/graphics/Matrix;

.field private shouldGenerateQualityThumb:Z

.field private staticThumb:Landroid/graphics/drawable/Drawable;

.field private tag:Ljava/lang/Integer;

.field private thumbTag:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, -0x222223

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    iput-byte v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    sget-object v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    :cond_0
    return-void
.end method

.method private checkAlphaAnimation(Z)V
    .locals 7

    const-wide/16 v0, 0x12

    const/high16 v6, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    long-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    iput v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method private drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V
    .locals 14

    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_27

    move-object/from16 v2, p2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p4, :cond_4

    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    iget-boolean v4, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    if-nez v4, :cond_7

    if-eqz p4, :cond_6

    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_1

    if-eqz p4, :cond_9

    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    :goto_3
    instance-of v3, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_b

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_a

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    :goto_4
    int-to-float v5, v4

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v3

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    if-eqz p4, :cond_11

    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v11, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v12, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    sub-float v7, v5, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3727c5ac    # 1.0E-5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_f

    int-to-float v7, v4

    div-float/2addr v7, v6

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v9, v4

    div-float/2addr v9, v6

    float-to-int v9, v9

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v11, v4

    div-float/2addr v11, v6

    float-to-int v11, v11

    iget v12, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v12, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    iget-boolean v7, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v7, :cond_3

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3727c5ac    # 1.0E-5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_10

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    int-to-float v6, v6

    mul-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    sub-int v7, v4, v5

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-int v8, v3, v2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v6, v7, v8, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    :goto_6
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_7
    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    :cond_7
    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    if-eqz v3, :cond_0

    if-eqz p4, :cond_8

    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    sget-object v4, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_2

    :cond_8
    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    :cond_9
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    goto/16 :goto_4

    :cond_b
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_c

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_d

    :cond_c
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto/16 :goto_4

    :cond_e
    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v10, v3

    div-float/2addr v10, v5

    float-to-int v10, v10

    iget v11, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v11, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v10, v11

    iget v11, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v12, v3

    div-float/2addr v12, v5

    float-to-int v12, v12

    iget v13, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    :cond_f
    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v11, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v10, v11

    iget v11, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v12, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    :cond_10
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_6

    :cond_11
    iget-boolean v7, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v7, :cond_14

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    sub-int/2addr v8, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v4, v9

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :try_start_0
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    :catch_0
    move-exception v3

    move-object v12, v3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_13

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v3, :cond_13

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    :cond_12
    :goto_9
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    iget-object v10, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iget-boolean v11, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_13
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_9

    :cond_14
    sub-float v7, v5, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3727c5ac    # 1.0E-5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v9, v10

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v11, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v10, v11

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v7, v7, 0x168

    if-eqz v7, :cond_15

    iget-boolean v7, p0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v7, :cond_19

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_15
    :goto_a
    int-to-float v7, v4

    div-float/2addr v7, v6

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1a

    int-to-float v3, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    sub-int v6, v3, v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v7

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    :goto_b
    instance-of v3, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_16

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(IIII)V

    :cond_16
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_17

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1b

    :cond_17
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v4

    sub-int v8, v6, v3

    add-int/2addr v4, v5

    add-int/2addr v3, v6

    invoke-virtual {v2, v7, v8, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    :goto_c
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v3, :cond_18

    :try_start_1
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_18
    :goto_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    :cond_19
    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_a

    :cond_1a
    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    sub-int v7, v3, v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_b

    :cond_1b
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_c

    :catch_1
    move-exception v3

    move-object v12, v3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1d

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v3, :cond_1d

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    :cond_1c
    :goto_e
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    iget-object v10, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iget-boolean v11, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_1d
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_1c

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_e

    :cond_1e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v3, v3, 0x168

    if-eqz v3, :cond_1f

    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v3, :cond_23

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1f
    :goto_f
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    instance-of v3, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v3, :cond_20

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setActualDrawRect(IIII)V

    :cond_20
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_21

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_24

    :cond_21
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v4

    sub-int v8, v6, v3

    add-int/2addr v4, v5

    add-int/2addr v3, v6

    invoke-virtual {v2, v7, v8, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    :goto_10
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v3, :cond_22

    :try_start_2
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_22
    :goto_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    :cond_23
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_f

    :cond_24
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_10

    :catch_2
    move-exception v3

    move-object v12, v3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_26

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v3, :cond_26

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    :cond_25
    :goto_12
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    iget-object v10, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iget-boolean v11, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_26
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_25

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_12

    :cond_27
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_7

    :catch_3
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7
.end method

.method private recycleBitmap(Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageLoader;->isInCache(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_4
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public cancelLoadImage()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    return-void
.end method

.method public clearImage()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    if-ne p1, v0, :cond_5

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    :cond_0
    aget-object v0, p2, v4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    :cond_5
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    if-ne p1, v0, :cond_2

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    aget-object v1, p2, v3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    aget-object v1, p2, v3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    aget-object v1, p2, v3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    :cond_8
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    aget-object v0, p2, v3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v1

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-nez v6, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    move v4, v2

    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_b

    iget-byte v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v0, :cond_3

    if-eqz v6, :cond_3

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    invoke-direct {p0, p1, v5, v0, v3}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    :goto_2
    if-eqz v6, :cond_a

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(Z)V

    move v0, v1

    :goto_4
    return v0

    :cond_0
    move v6, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move-object v5, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move-object v5, v0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v5, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    :goto_5
    if-eqz v0, :cond_4

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    invoke-direct {p0, p1, v0, v3, v7}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    mul-float/2addr v0, v3

    mul-float/2addr v0, v8

    float-to-int v3, v0

    if-eqz v4, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    :goto_6
    invoke-direct {p0, p1, v5, v3, v0}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    move v0, v2

    goto :goto_4

    :cond_5
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v5, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_6

    :cond_8
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    mul-float/2addr v0, v8

    float-to-int v3, v0

    if-eqz v4, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    :goto_8
    invoke-direct {p0, p1, v5, v3, v0}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_8

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    invoke-direct {p0, v6}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(Z)V

    move v0, v1

    goto/16 :goto_4

    :cond_c
    invoke-direct {p0, v6}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_d
    move-object v0, v3

    goto :goto_5

    :cond_e
    move v4, v2

    move-object v5, v3

    goto/16 :goto_1
.end method

.method public getAnimatedOrientation()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getOrientation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapHeight()I
    .locals 3

    const/16 v2, 0xb4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getBitmapWidth()I
    .locals 3

    const/16 v2, 0xb4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getCacheOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    return v0
.end method

.method public getDrawRegion()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpImageLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    return v0
.end method

.method public getImageLocation()Lorg/telegram/tgnet/TLObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    return v0
.end method

.method public getImageX()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    return v0
.end method

.method public getImageX2()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageY()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    return v0
.end method

.method public getImageY2()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    return v0
.end method

.method public getParentMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    return v0
.end method

.method public getRoundRadius()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    return v0
.end method

.method public getStaticThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getTag(Z)Ljava/lang/Integer;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:Ljava/lang/Integer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->tag:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getThumbFilter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbLocation()Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    return v0
.end method

.method public hasBitmapImage()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowStartAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForcePreview()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return v0
.end method

.method public isInsideImage(FF)Z
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedsQualityThumb()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    return v0
.end method

.method public isShouldGenerateQualityThumb()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return v0
.end method

.method public onAttachedToWindow()Z
    .locals 10

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->filter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:I

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-boolean v9, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheOnly:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageReceiver$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->filter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    iput v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:I

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheOnly:Z

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    return-void
.end method

.method public setAllowStartAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    return-void
.end method

.method public setAspectFit(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCrossfadeAlpha(B)V
    .locals 0

    iput-byte p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    return-void
.end method

.method public setForcePreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, v1

    move v7, p5

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p5, :cond_2

    :cond_1
    if-eqz p1, :cond_9

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-nez v0, :cond_9

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    if-nez v0, :cond_9

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v0, :cond_9

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-nez v0, :cond_9

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-nez v0, :cond_9

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    iput-object p4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    :cond_4
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_2
    invoke-interface {v2, p0, v0, v1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    instance-of v0, p5, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-nez v0, :cond_a

    const/4 p5, 0x0

    :cond_a
    const/4 v1, 0x0

    if-eqz p1, :cond_16

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_b

    if-eqz p3, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v1, :cond_d

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_17

    :cond_c
    const/4 v1, 0x1

    :goto_5
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_18

    const/4 v2, 0x1

    :goto_6
    invoke-interface {v3, p0, v1, v2}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    :cond_d
    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz v1, :cond_5

    :cond_e
    const/4 v1, 0x0

    if-eqz p5, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p6, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_f
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    iput-object p6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iput p7, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    iput-boolean p9, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    iput-object p5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v0, :cond_11

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    :cond_10
    const/4 v0, 0x1

    :goto_7
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    :goto_8
    invoke-interface {v2, p0, v0, v1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    :cond_11
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    :cond_12
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_13
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-eqz v2, :cond_15

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->version:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_15
    const/4 p1, 0x0

    move-object v0, v1

    goto/16 :goto_4

    :cond_16
    if-eqz p2, :cond_1c

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_1a
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_1b
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3

    :cond_1c
    move-object v0, v1

    goto/16 :goto_4
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    invoke-direct {p0, v3, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-interface {v2, p0, v0, v1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method protected setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p3, :cond_11

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    if-eqz v0, :cond_d

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_d

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius(I)V

    :goto_1
    if-nez p4, :cond_f

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_6

    :cond_4
    iput v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    :cond_5
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    :cond_6
    :goto_3
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    :cond_9
    move v0, v2

    :goto_5
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_a

    move v1, v2

    :cond_a
    invoke-interface {v3, p0, v0, v1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    :cond_b
    move v1, v2

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_1

    :cond_d
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_1

    :cond_e
    move v0, v1

    goto :goto_2

    :cond_f
    iput v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz v0, :cond_8

    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_15

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_15

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_14

    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius(I)V

    :goto_6
    if-nez p4, :cond_17

    iget-byte v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    const/4 v3, 0x2

    if-eq v0, v3, :cond_17

    iput v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-nez v0, :cond_16

    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    :goto_8
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    :cond_14
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    goto :goto_6

    :cond_15
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    goto :goto_6

    :cond_16
    move v0, v1

    goto :goto_7

    :cond_17
    iput v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_4

    :cond_19
    move v0, v1

    goto/16 :goto_5
.end method

.method public setImageCoords(IIII)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    iput p4, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    return-void
.end method

.method public setImageY(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    return-void
.end method

.method public setInvalidateAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    return-void
.end method

.method public setNeedsQualityThumb(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 2

    move v0, p1

    :goto_0
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v1, 0x168

    if-le v0, v1, :cond_1

    add-int/lit16 v0, v0, -0x168

    goto :goto_1

    :cond_1
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    return-void
.end method

.method public setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    return-void
.end method

.method public setShouldGenerateQualityThumb(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return-void
.end method

.method protected setTag(Ljava/lang/Integer;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:Ljava/lang/Integer;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->tag:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setVisible(ZZ)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    :cond_0
    return-void
.end method
