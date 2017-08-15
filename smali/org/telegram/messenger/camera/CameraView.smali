.class public Lorg/telegram/messenger/camera/CameraView;
.super Landroid/widget/FrameLayout;
.source "CameraView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;
    }
.end annotation


# instance fields
.field private cameraSession:Lorg/telegram/messenger/camera/CameraSession;

.field private circleShape:Z

.field private clipLeft:I

.field private clipTop:I

.field private cx:I

.field private cy:I

.field private delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

.field private focusAreaSize:I

.field private focusProgress:F

.field private initied:Z

.field private innerAlpha:F

.field private innerPaint:Landroid/graphics/Paint;

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isFrontface:Z

.field private lastDrawTime:J

.field private matrix:Landroid/graphics/Matrix;

.field private mirror:Z

.field private outerAlpha:F

.field private outerPaint:Landroid/graphics/Paint;

.field private previewSize:Lorg/telegram/messenger/camera/Size;

.field private textureView:Landroid/view/TextureView;

.field private txform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->circleShape:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iput-boolean p2, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->addView(Landroid/view/View;)V

    const/high16 v0, 0x42c00000    # 96.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraSession;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraView;)Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    return-object v0
.end method

.method private adjustAspectRatio(III)V
    .locals 10

    const/4 v9, 0x2

    const/high16 v8, 0x44fa0000    # 2000.0f

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v1, 0x2

    int-to-float v3, v0

    div-int/lit8 v0, v2, 0x2

    int-to-float v4, v0

    if-eqz p3, :cond_0

    if-ne p3, v9, :cond_6

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v5, p1

    div-float/2addr v0, v5

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    int-to-float v5, p1

    mul-float/2addr v5, v0

    int-to-float v6, p2

    mul-float/2addr v0, v6

    int-to-float v6, v1

    div-float/2addr v0, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0, v5, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v0, 0x1

    if-eq v0, p3, :cond_1

    const/4 v0, 0x3

    if-ne v0, p3, :cond_7

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    add-int/lit8 v5, p3, -0x2

    mul-int/lit8 v5, v5, 0x5a

    int-to-float v5, v5

    invoke-virtual {v0, v5, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->mirror:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v3, v1

    div-float/2addr v3, v8

    int-to-float v4, v2

    div-float/2addr v4, v8

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v1

    div-float/2addr v1, v7

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v5, p2

    div-float/2addr v0, v5

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_7
    if-ne v9, p3, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->txform:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v0, v5, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1
.end method

.method private calculateTapArea(FFF)Landroid/graphics/Rect;
    .locals 6

    const/4 v4, 0x0

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusAreaSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    float-to-int v1, p1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v4, v2}, Lorg/telegram/messenger/camera/CameraView;->clamp(III)I

    move-result v1

    float-to-int v2, p2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {p0, v2, v4, v3}, Lorg/telegram/messenger/camera/CameraView;->clamp(III)I

    move-result v2

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v2

    add-int/2addr v1, v0

    int-to-float v1, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v3, v4, v5, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v0, Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private checkPreviewMatrix()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/messenger/camera/CameraView;->adjustAspectRatio(III)V

    goto :goto_0
.end method

.method private clamp(III)I
    .locals 0

    if-le p1, p3, :cond_0

    :goto_0
    return p3

    :cond_0
    if-ge p1, p2, :cond_1

    move p3, p2

    goto :goto_0

    :cond_1
    move p3, p1

    goto :goto_0
.end method

.method private initCamera(Z)V
    .locals 13

    const/16 v12, 0x9

    const/4 v11, 0x4

    const/4 v10, 0x3

    const v9, 0x3dcccccd    # 0.1f

    const/16 v8, 0x500

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/camera/CameraInfo;

    iget-boolean v4, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-eqz v4, :cond_2

    iget v4, v0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-nez v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-nez v4, :cond_6

    iget v4, v0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-nez v4, :cond_6

    :cond_3
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_0

    const v4, 0x3faaaaab

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v5, v0, v1

    sub-float v0, v5, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_7

    new-instance v1, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v1, v11, v10}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    const/16 v0, 0x3c0

    :goto_3
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    if-lez v2, :cond_4

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v6

    mul-int/2addr v6, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getPreviewSizes()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7, v2, v6, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    :cond_4
    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v8, v0, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    if-lt v1, v8, :cond_9

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    if-lt v1, v8, :cond_9

    sub-float v1, v5, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_8

    new-instance v1, Lorg/telegram/messenger/camera/Size;

    invoke-direct {v1, v10, v11}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    :goto_4
    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4, v0, v8, v1}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v1

    if-lt v1, v8, :cond_5

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    if-ge v1, v8, :cond_9

    :cond_5
    :goto_5
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v2, Lorg/telegram/messenger/camera/CameraSession;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    const/16 v5, 0x100

    invoke-direct {v2, v3, v4, v0, v5}, Lorg/telegram/messenger/camera/CameraSession;-><init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;I)V

    iput-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    new-instance v3, Lorg/telegram/messenger/camera/CameraView$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/camera/CameraView$1;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    new-instance v4, Lorg/telegram/messenger/camera/CameraView$2;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/camera/CameraView$2;-><init>(Lorg/telegram/messenger/camera/CameraView;)V

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/telegram/messenger/camera/CameraController;->open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_7
    new-instance v1, Lorg/telegram/messenger/camera/Size;

    const/16 v0, 0x10

    invoke-direct {v1, v0, v12}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    const/16 v0, 0x2d0

    goto/16 :goto_3

    :cond_8
    new-instance v1, Lorg/telegram/messenger/camera/Size;

    const/16 v4, 0x10

    invoke-direct {v1, v12, v4}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    goto :goto_4

    :cond_9
    move-object v0, v2

    goto :goto_5

    :cond_a
    move-object v3, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public destroy(ZLjava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-nez p1, :cond_1

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    :goto_0
    invoke-virtual {v1, v2, v0, p2}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_1

    const-wide/16 v6, 0x11

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    :cond_1
    const-wide/16 v0, 0x11

    :cond_2
    iput-wide v4, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v6, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    invoke-virtual {v5, v6}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v6, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    invoke-virtual {v5, v6}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v5

    const/high16 v6, 0x42fe0000    # 127.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/messenger/camera/CameraView;->outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v5, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    int-to-float v6, v6

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_4
    :goto_0
    return v2

    :cond_5
    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    long-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    goto :goto_0

    :cond_7
    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    iget v3, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    long-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    iget v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    goto :goto_0
.end method

.method public focusToPoint(II)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1, v4}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {p0, v1, v2, v3}, Lorg/telegram/messenger/camera/CameraView;->calculateTapArea(FFF)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/camera/CameraSession;->focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/camera/CameraView;->focusProgress:F

    iput v4, p0, Lorg/telegram/messenger/camera/CameraView;->innerAlpha:F

    iput v4, p0, Lorg/telegram/messenger/camera/CameraView;->outerAlpha:F

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->cx:I

    iput p2, p0, Lorg/telegram/messenger/camera/CameraView;->cy:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/camera/CameraView;->lastDrawTime:J

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    return-void
.end method

.method public getCameraSession()Lorg/telegram/messenger/camera/CameraSession;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    return-object v0
.end method

.method public getPreviewSize()Lorg/telegram/messenger/camera/Size;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->previewSize:Lorg/telegram/messenger/camera/Size;

    return-object v0
.end method

.method public hasFrontFaceCamera()Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->getCameras()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/camera/CameraInfo;

    iget v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isFrontface()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    return v0
.end method

.method public isInitied()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->initCamera(Z)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraView;->checkPreviewMatrix()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->isInitied()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    invoke-interface {v0}, Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;->onCameraInit()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    :cond_1
    return-void
.end method

.method public setClipLeft(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipLeft:I

    return-void
.end method

.method public setClipTop(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraView;->clipTop:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView;->delegate:Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraView;->mirror:Z

    return-void
.end method

.method public switchCamera()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v1, v2, v3, v3}, Lorg/telegram/messenger/camera/CameraController;->close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V

    iput-object v3, p0, Lorg/telegram/messenger/camera/CameraView;->cameraSession:Lorg/telegram/messenger/camera/CameraSession;

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->initied:Z

    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraView;->isFrontface:Z

    invoke-direct {p0, v0}, Lorg/telegram/messenger/camera/CameraView;->initCamera(Z)V

    return-void
.end method
