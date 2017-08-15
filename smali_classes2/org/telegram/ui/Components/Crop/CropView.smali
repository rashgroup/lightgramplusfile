.class public Lorg/telegram/ui/Components/Crop/CropView;
.super Landroid/widget/FrameLayout;
.source "CropView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;
.implements Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;,
        Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;,
        Lorg/telegram/ui/Components/Crop/CropView$CropState;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 1.0E-5f

.field private static final MAX_SCALE:F = 30.0f

.field private static final RESULT_SIDE:I = 0x500


# instance fields
.field private animating:Z

.field private areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

.field private backView:Landroid/view/View;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bottomPadding:F

.field private detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

.field private freeform:Z

.field private hasAspectRatioDialog:Z

.field private imageView:Landroid/widget/ImageView;

.field private initialAreaRect:Landroid/graphics/RectF;

.field private listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

.field private presentationMatrix:Landroid/graphics/Matrix;

.field private previousAreaRect:Landroid/graphics/RectF;

.field private rotationStartScale:F

.field private state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

.field private tempMatrix:Landroid/graphics/Matrix;

.field private tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;-><init>(Lorg/telegram/ui/Components/Crop/CropView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropView;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->setOnGestureListener(Lorg/telegram/ui/Components/Crop/CropGestureDetector$CropGestureListener;)V

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setListener(Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Crop/CropView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropView$CropState;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Crop/CropView;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/Crop/CropView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    return p1
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/Crop/CropView;ZZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZZ)V

    return-void
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/Crop/CropView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/Crop/CropView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Crop/CropView;->setLockedAspectRatio(F)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/Crop/CropView;)Lorg/telegram/ui/Components/Crop/CropAreaView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    return-object v0
.end method

.method private fillAreaView(Landroid/graphics/RectF;Z)V
    .locals 9

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v7, 0x1

    const/4 v0, 0x0

    new-array v3, v7, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v4

    div-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getScale()F
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    mul-float/2addr v1, v2

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getScale()F
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    div-float v2, v5, v1

    move v6, v7

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_0
    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientedWidth()F
    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    sub-float/2addr v5, v8

    add-float/2addr v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float v0, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientedHeight()F
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    mul-float v5, v0, v1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Crop/CropView$2;-><init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$3;

    invoke-direct {v0, p0, v6}, Lorg/telegram/ui/Components/Crop/CropView$3;-><init>(Lorg/telegram/ui/Components/Crop/CropView;Z)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1, v8, v7}, Lorg/telegram/ui/Components/Crop/CropAreaView;->fill(Landroid/graphics/RectF;Landroid/animation/Animator;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    :cond_1
    move v6, v0

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fitContentInBounds(ZZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZZ)V

    return-void
.end method

.method private fitContentInBounds(ZZZZ)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientedWidth()F
    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientedHeight()F
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getRotation()F
    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v5, v6

    invoke-virtual {p0, v0, v1, v4}, Lorg/telegram/ui/Components/Crop/CropView;->calculateBoundingBox(FFF)Landroid/graphics/RectF;

    move-result-object v6

    new-instance v7, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    sub-float/2addr v0, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v0, v8

    sub-float/2addr v1, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getScale()F
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    invoke-virtual {v9, v7}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->setRect(Landroid/graphics/RectF;)V

    iget-object v9, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getMatrix()Landroid/graphics/Matrix;
    invoke-static {v9}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)Landroid/graphics/Matrix;

    move-result-object v9

    div-float/2addr v0, v1

    div-float/2addr v8, v1

    invoke-virtual {v9, v0, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->applyMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    neg-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->applyMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->tempRect:Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Crop/CropView$CropRectangle;->getRect(Landroid/graphics/RectF;)V

    new-instance v3, Landroid/graphics/PointF;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getX()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getY()F
    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1700(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    invoke-direct {v3, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v7, v6}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_7

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    :cond_0
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0, v6, v7}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v2

    div-float/2addr v0, v2

    invoke-direct {p0, v7, v1, v0}, Lorg/telegram/ui/Components/Crop/CropView;->fitScale(Landroid/graphics/RectF;FF)F

    move-result v0

    :goto_0
    invoke-direct {p0, v7, v6, v3, v5}, Lorg/telegram/ui/Components/Crop/CropView;->fitTranslation(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    :goto_1
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getX()F
    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    sub-float/2addr v2, v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getY()F
    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1700(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    sub-float v4, v3, v4

    if-eqz p3, :cond_5

    div-float v5, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :goto_2
    return-void

    :cond_1
    if-eqz p2, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0, v6, v7}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getScale()F
    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    mul-float/2addr v2, v0

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    invoke-direct {p0, v7, v1, v0}, Lorg/telegram/ui/Components/Crop/CropView;->fitScale(Landroid/graphics/RectF;FF)F

    move-result v0

    invoke-direct {p0, v7, v6, v3, v5}, Lorg/telegram/ui/Components/Crop/CropView;->fitTranslation(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    const/4 v0, 0x3

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Crop/CropView$4;-><init>(Lorg/telegram/ui/Components/Crop/CropView;F[FFF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$5;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Crop/CropView$5;-><init>(Lorg/telegram/ui/Components/Crop/CropView;ZZZZ)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_4

    const-wide/16 v0, 0x64

    :goto_3
    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0xc8

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->translate(FF)V
    invoke-static {v3, v2, v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale(FFF)V
    invoke-static {v2, v0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fitScale(Landroid/graphics/RectF;FF)F
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v3, v1

    div-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v2

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v3

    iget v6, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v6

    add-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v0, p2, p3

    return v0
.end method

.method private fitTranslation(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;F)V
    .locals 10

    const/high16 v5, 0x40000000    # 2.0f

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_0

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    :cond_0
    iget v4, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float v3, v4, v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    :cond_1
    iget v4, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v4, v0

    add-float/2addr v1, v0

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    add-float/2addr v3, v0

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v5

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v2, p4

    sub-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v4, p4

    sub-double v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-float v0, v4

    float-to-double v4, p4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-float v3, v4

    float-to-double v4, p4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-float v1, v4

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    iget v3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    invoke-virtual {p3, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private resetRotationStartScale()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    return-void
.end method

.method private setLockedAspectRatio(F)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/Crop/CropView;->fillAreaView(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onAspectLock(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateBoundingBox(FFF)Landroid/graphics/RectF;
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    div-float v2, p1, v3

    div-float v3, p2, v3

    invoke-virtual {v1, p3, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getCropHeight()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v0

    return v0
.end method

.method public getCropLeft()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropLeft()F

    move-result v0

    return v0
.end method

.method public getCropTop()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropTop()F

    move-result v0

    return v0
.end method

.method public getCropWidth()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v0

    return v0
.end method

.method public getResult()Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v3, 0x44a00000    # 1280.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->hasChanges()Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getBaseRotation()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    int-to-float v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getWidth()F
    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v6

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getHeight()F
    invoke-static {v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v5

    neg-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientation()F
    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getConcatMatrix(Landroid/graphics/Matrix;)V
    invoke-static {v4, v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;Landroid/graphics/Matrix;)V

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAreaChange()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->translate(FF)V
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3, v3}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method public onAreaChangeBegan()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public onAreaChangeEnded()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getTargetRectToFill()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->fillAreaView(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public onDrag(FF)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->translate(FF)V
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    goto :goto_0
.end method

.method public onFling(FFFF)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRotationBegan()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MINOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getScale()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->rotationStartScale:F

    :cond_0
    return-void
.end method

.method public onRotationEnded()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    return-void
.end method

.method public onScale(FFF)V
    .locals 4

    const/high16 v1, 0x41f00000    # 30.0f

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getScale()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    mul-float/2addr v0, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getScale()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    div-float p1, v1, v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientedWidth()F
    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    sub-float/2addr v2, v3

    sub-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v0, p3, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientedHeight()F
    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    mul-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale(FFF)V
    invoke-static {v2, p1, v1, v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScrollChangeBegan()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    goto :goto_0
.end method

.method public onScrollChangeEnded()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v2}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->animating:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->detector:Lorg/telegram/ui/Components/Crop/CropGestureDetector;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Crop/CropGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->onScrollChangeBegan()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->onScrollChangeEnded()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->resetAnimator()V

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getBaseRotation()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    const/high16 v6, 0x43340000    # 180.0f

    rem-float/2addr v0, v6

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v6, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    invoke-virtual {v4, v5, v0, v6}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setBitmap(Landroid/graphics/Bitmap;ZZ)V

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v0, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->reset(Lorg/telegram/ui/Components/Crop/CropAreaView;FZ)V
    invoke-static {v0, v4, v3, v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;Lorg/telegram/ui/Components/Crop/CropAreaView;FZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onAspectLock(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public rotate90Degrees()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->resetAnimator()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView;->resetRotationStartScale()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientation()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getBaseRotation()F
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    sub-float/2addr v0, v3

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float v4, v0, v3

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v5

    div-float/2addr v3, v5

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->reset(Lorg/telegram/ui/Components/Crop/CropAreaView;FZ)V
    invoke-static {v3, v5, v4, v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;Lorg/telegram/ui/Components/Crop/CropAreaView;FZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    cmpl-float v3, v4, v8

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v3

    cmpl-float v3, v3, v8

    if-nez v3, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onChange(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v6, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getBaseRotation()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    add-float/2addr v0, v4

    const/high16 v7, 0x43340000    # 180.0f

    rem-float/2addr v0, v7

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iget-boolean v7, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    invoke-virtual {v5, v6, v0, v7}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setBitmap(Landroid/graphics/Bitmap;ZZ)V

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public scaleWidthToMaxSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_0
    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IZ)V
    .locals 4

    const/4 v3, 0x4

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Crop/CropView;->freeform:Z

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;-><init>(Lorg/telegram/ui/Components/Crop/CropView;Landroid/graphics/Bitmap;ILorg/telegram/ui/Components/Crop/CropView$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropView$1;-><init>(Lorg/telegram/ui/Components/Crop/CropView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setBottomPadding(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->bottomPadding:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setBottomPadding(F)V

    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    return-void
.end method

.method public setRotation(F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getRotation()F
    invoke-static {v0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotate(FFF)V
    invoke-static {v1, v0, v2, v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$2100(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    const/4 v0, 0x0

    invoke-direct {p0, v3, v3, v0}, Lorg/telegram/ui/Components/Crop/CropView;->fitContentInBounds(ZZZ)V

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->backView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method public showAspectRatioDialog()V
    .locals 12

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getLockAspectRatio()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setLockedAspectRatio(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->listener:Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;->onAspectLock(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    if-nez v0, :cond_0

    iput-boolean v11, p0, Lorg/telegram/ui/Components/Crop/CropView;->hasAspectRatioDialog:Z

    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x6

    new-array v5, v0, [[Ljava/lang/Integer;

    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v11

    aput-object v0, v5, v1

    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v11

    aput-object v0, v5, v11

    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v11

    aput-object v0, v5, v3

    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v11

    aput-object v0, v5, v6

    const/4 v0, 0x4

    new-array v2, v3, [Ljava/lang/Integer;

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v11

    aput-object v2, v5, v0

    new-array v0, v3, [Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v11

    aput-object v0, v5, v7

    const-string/jumbo v0, "CropOriginal"

    const v2, 0x7f08019a

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string/jumbo v0, "CropSquare"

    const v2, 0x7f08019c

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    array-length v6, v5

    move v0, v1

    move v2, v3

    :goto_1
    if-ge v0, v6, :cond_3

    aget-object v7, v5, v0

    iget-object v8, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    const-string/jumbo v8, "%d:%d"

    new-array v9, v3, [Ljava/lang/Object;

    aget-object v10, v7, v1

    aput-object v10, v9, v1

    aget-object v7, v7, v11

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "%d:%d"

    new-array v9, v3, [Ljava/lang/Object;

    aget-object v10, v7, v11

    aput-object v10, v9, v1

    aget-object v7, v7, v1

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropView$6;

    invoke-direct {v1, p0, v5}, Lorg/telegram/ui/Components/Crop/CropView$6;-><init>(Lorg/telegram/ui/Components/Crop/CropView;[[Ljava/lang/Integer;)V

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropView$7;-><init>(Lorg/telegram/ui/Components/Crop/CropView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public updateLayout()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->initialAreaRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getWidth()F
    invoke-static {v3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getHeight()F
    invoke-static {v4}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->previousAreaRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropRect(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v1

    div-float v0, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale(FFF)V
    invoke-static {v1, v0, v5, v5}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropView;->updateMatrix()V

    return-void
.end method

.method public updateMatrix()V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getWidth()F
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getHeight()F
    invoke-static {v2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientation()F
    invoke-static {v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->state:Lorg/telegram/ui/Components/Crop/CropView$CropState;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    # invokes: Lorg/telegram/ui/Components/Crop/CropView$CropState;->getConcatMatrix(Landroid/graphics/Matrix;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView;->presentationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public willShow()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setFrameVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setDimVisibility(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method
