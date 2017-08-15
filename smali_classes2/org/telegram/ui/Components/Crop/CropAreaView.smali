.class public Lorg/telegram/ui/Components/Crop/CropAreaView;
.super Landroid/view/View;
.source "CropAreaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;,
        Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;,
        Lorg/telegram/ui/Components/Crop/CropAreaView$Control;
    }
.end annotation


# instance fields
.field private activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

.field private actualRect:Landroid/graphics/RectF;

.field private animator:Landroid/animation/Animator;

.field private bottomEdge:Landroid/graphics/RectF;

.field private bottomLeftCorner:Landroid/graphics/RectF;

.field private bottomPadding:F

.field private bottomRightCorner:Landroid/graphics/RectF;

.field dimPaint:Landroid/graphics/Paint;

.field private dimVisibile:Z

.field framePaint:Landroid/graphics/Paint;

.field private frameVisible:Z

.field private gridAnimator:Landroid/animation/Animator;

.field private gridProgress:F

.field private gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

.field handlePaint:Landroid/graphics/Paint;

.field interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private isDragging:Z

.field private leftEdge:Landroid/graphics/RectF;

.field linePaint:Landroid/graphics/Paint;

.field private listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

.field private lockAspectRatio:F

.field private minWidth:F

.field private previousGridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

.field private previousX:I

.field private previousY:I

.field private rightEdge:Landroid/graphics/RectF;

.field shadowPaint:Landroid/graphics/Paint;

.field private sidePadding:F

.field private tempRect:Landroid/graphics/RectF;

.field private topEdge:Landroid/graphics/RectF;

.field private topLeftCorner:Landroid/graphics/RectF;

.field private topRightCorner:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topLeftCorner:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topRightCorner:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomLeftCorner:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomRightCorner:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topEdge:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->leftEdge:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomEdge:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->rightEdge:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->frameVisible:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimVisibile:Z

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x1a000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    const v1, -0x4d000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    return-object p1
.end method

.method private constrainRectByHeight(Landroid/graphics/RectF;F)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v1, v0, p2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private constrainRectByWidth(Landroid/graphics/RectF;F)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v1, v0, p2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private getGridProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    return v0
.end method

.method private setCropBottom(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private setCropLeft(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private setCropRight(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private setCropTop(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private setGridProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method private updateTouchAreas()V
    .locals 7

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topLeftCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topRightCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomLeftCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomRightCorner:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->leftEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->rightEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomEdge:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    add-float/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public calculateRect(Landroid/graphics/RectF;F)V
    .locals 13

    const/high16 v12, 0x40000000    # 2.0f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomPadding:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    mul-float/2addr v4, v12

    sub-float v4, v3, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    mul-float/2addr v5, v12

    sub-float v5, v3, v5

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    mul-float/2addr v3, v12

    sub-float v6, v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v3, v12

    div-float/2addr v1, v12

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v8, v1

    const-wide v10, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v8, v10

    if-gez v1, :cond_1

    div-float v1, v4, v12

    sub-float v3, v7, v1

    div-float v1, v4, v12

    sub-float v2, v0, v1

    div-float v1, v4, v12

    add-float/2addr v1, v7

    div-float/2addr v4, v12

    add-float/2addr v0, v4

    :goto_1
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    cmpl-float v1, p2, v2

    if-lez v1, :cond_2

    div-float v1, v5, v12

    sub-float v3, v7, v1

    div-float v1, v5, p2

    div-float/2addr v1, v12

    sub-float v2, v0, v1

    div-float v1, v5, v12

    add-float/2addr v1, v7

    div-float v4, v5, p2

    div-float/2addr v4, v12

    add-float/2addr v0, v4

    goto :goto_1

    :cond_2
    mul-float v1, v6, p2

    div-float/2addr v1, v12

    sub-float v3, v7, v1

    div-float v1, v6, v12

    sub-float v2, v0, v1

    mul-float v1, v6, p2

    div-float/2addr v1, v12

    add-float/2addr v1, v7

    div-float v4, v6, v12

    add-float/2addr v0, v4

    goto :goto_1
.end method

.method public fill(Landroid/graphics/RectF;Landroid/animation/Animator;Z)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    const-string/jumbo v2, "cropLeft"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    aget-object v2, v1, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v2, "cropTop"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    aget-object v2, v1, v6

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v2, "cropRight"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    aget-object v2, v1, v7

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo v2, "cropBottom"

    new-array v3, v6, [F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    aget-object v2, v1, v8

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object p2, v1, v9

    aget-object v2, v1, v9

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropAreaView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView$2;-><init>(Lorg/telegram/ui/Components/Crop/CropAreaView;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getCropBottom()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public getCropCenterX()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCropCenterY()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCropHeight()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCropLeft()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getCropRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getCropRight()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public getCropTop()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public getCropWidth()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-object v0
.end method

.method public getLockAspectRatio()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    return v0
.end method

.method public getTargetRectToFill()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getAspectRatio()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    sub-int v13, v1, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    sub-int v14, v1, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v2, v10, 0x2

    add-int v15, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v2, v10, 0x2

    add-int v16, v1, v2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimVisibile:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    add-int v1, v14, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    add-int v1, v14, v10

    int-to-float v3, v1

    add-int v1, v13, v10

    int-to-float v4, v1

    add-int v1, v14, v16

    sub-int/2addr v1, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v15

    sub-int/2addr v1, v10

    int-to-float v2, v1

    add-int v1, v14, v10

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    add-int v1, v14, v16

    sub-int/2addr v1, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    add-int v1, v14, v16

    sub-int/2addr v1, v10

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->frameVisible:Z

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    sub-int v17, v12, v10

    mul-int/lit8 v1, v12, 0x2

    sub-int v18, v15, v1

    mul-int/lit8 v1, v12, 0x2

    sub-int v19, v16, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    sget-object v2, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousGridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    move-object v7, v1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    const/high16 v3, 0x41d00000    # 26.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    const/high16 v3, 0x43320000    # 178.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    move v9, v1

    :goto_2
    const/4 v1, 0x3

    if-ge v9, v1, :cond_5

    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MINOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne v7, v1, :cond_3

    const/4 v1, 0x1

    move v8, v1

    :goto_3
    const/4 v1, 0x4

    if-ge v8, v1, :cond_4

    const/4 v1, 0x2

    if-ne v9, v1, :cond_2

    const/4 v1, 0x3

    if-ne v8, v1, :cond_2

    :goto_4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_3

    :cond_2
    add-int v1, v13, v12

    div-int/lit8 v2, v18, 0x3

    div-int/lit8 v2, v2, 0x3

    mul-int/2addr v2, v8

    add-int/2addr v1, v2

    div-int/lit8 v2, v18, 0x3

    mul-int/2addr v2, v9

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v14, v12

    int-to-float v3, v1

    add-int v1, v13, v12

    div-int/lit8 v4, v18, 0x3

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v4, v8

    add-int/2addr v1, v4

    div-int/lit8 v4, v18, 0x3

    mul-int/2addr v4, v9

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v14, v12

    add-int v1, v1, v19

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v12

    div-int/lit8 v2, v18, 0x3

    div-int/lit8 v2, v2, 0x3

    mul-int/2addr v2, v8

    add-int/2addr v1, v2

    div-int/lit8 v2, v18, 0x3

    mul-int/2addr v2, v9

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v14, v12

    int-to-float v3, v1

    add-int v1, v13, v12

    div-int/lit8 v4, v18, 0x3

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v4, v8

    add-int/2addr v1, v4

    div-int/lit8 v4, v18, 0x3

    mul-int/2addr v4, v9

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v14, v12

    add-int v1, v1, v19

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v12

    int-to-float v2, v1

    add-int v1, v14, v12

    div-int/lit8 v3, v19, 0x3

    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v3, v8

    add-int/2addr v1, v3

    div-int/lit8 v3, v19, 0x3

    mul-int/2addr v3, v9

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v13, v12

    add-int v1, v1, v18

    int-to-float v4, v1

    add-int v1, v14, v12

    div-int/lit8 v5, v19, 0x3

    div-int/lit8 v5, v5, 0x3

    mul-int/2addr v5, v8

    add-int/2addr v1, v5

    div-int/lit8 v5, v19, 0x3

    mul-int/2addr v5, v9

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v12

    int-to-float v2, v1

    add-int v1, v14, v12

    div-int/lit8 v3, v19, 0x3

    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v3, v8

    add-int/2addr v1, v3

    div-int/lit8 v3, v19, 0x3

    mul-int/2addr v3, v9

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v13, v12

    add-int v1, v1, v18

    int-to-float v4, v1

    add-int v1, v14, v12

    div-int/lit8 v5, v19, 0x3

    div-int/lit8 v5, v5, 0x3

    mul-int/2addr v5, v8

    add-int/2addr v1, v5

    div-int/lit8 v5, v19, 0x3

    mul-int/2addr v5, v9

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_3
    sget-object v1, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne v7, v1, :cond_4

    if-lez v9, :cond_4

    add-int v1, v13, v12

    div-int/lit8 v2, v18, 0x3

    mul-int/2addr v2, v9

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v14, v12

    int-to-float v3, v1

    add-int v1, v13, v12

    div-int/lit8 v4, v18, 0x3

    mul-int/2addr v4, v9

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v14, v12

    add-int v1, v1, v19

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v12

    div-int/lit8 v2, v18, 0x3

    mul-int/2addr v2, v9

    add-int/2addr v1, v2

    int-to-float v2, v1

    add-int v1, v14, v12

    int-to-float v3, v1

    add-int v1, v13, v12

    div-int/lit8 v4, v18, 0x3

    mul-int/2addr v4, v9

    add-int/2addr v1, v4

    int-to-float v4, v1

    add-int v1, v14, v12

    add-int v1, v1, v19

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v12

    int-to-float v2, v1

    add-int v1, v14, v12

    div-int/lit8 v3, v19, 0x3

    mul-int/2addr v3, v9

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v13, v12

    add-int v1, v1, v18

    int-to-float v4, v1

    add-int v1, v14, v12

    div-int/lit8 v5, v19, 0x3

    mul-int/2addr v5, v9

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->shadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v12

    int-to-float v2, v1

    add-int v1, v14, v12

    div-int/lit8 v3, v19, 0x3

    mul-int/2addr v3, v9

    add-int/2addr v1, v3

    int-to-float v3, v1

    add-int v1, v13, v12

    add-int v1, v1, v18

    int-to-float v4, v1

    add-int v1, v14, v12

    div-int/lit8 v5, v19, 0x3

    mul-int/2addr v5, v9

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_2

    :cond_5
    add-int v1, v13, v17

    int-to-float v2, v1

    add-int v1, v14, v17

    int-to-float v3, v1

    add-int v1, v13, v15

    sub-int v1, v1, v17

    int-to-float v4, v1

    add-int v1, v14, v17

    add-int/2addr v1, v10

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v17

    int-to-float v2, v1

    add-int v1, v14, v17

    int-to-float v3, v1

    add-int v1, v13, v17

    add-int/2addr v1, v10

    int-to-float v4, v1

    add-int v1, v14, v16

    sub-int v1, v1, v17

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v17

    int-to-float v2, v1

    add-int v1, v14, v16

    sub-int v1, v1, v17

    sub-int/2addr v1, v10

    int-to-float v3, v1

    add-int v1, v13, v15

    sub-int v1, v1, v17

    int-to-float v4, v1

    add-int v1, v14, v16

    sub-int v1, v1, v17

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v15

    sub-int v1, v1, v17

    sub-int/2addr v1, v10

    int-to-float v2, v1

    add-int v1, v14, v17

    int-to-float v3, v1

    add-int v1, v13, v15

    sub-int v1, v1, v17

    int-to-float v4, v1

    add-int v1, v14, v16

    sub-int v1, v1, v17

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->framePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v13

    int-to-float v3, v14

    add-int v1, v13, v11

    int-to-float v4, v1

    add-int v1, v14, v12

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v13

    int-to-float v3, v14

    add-int v1, v13, v12

    int-to-float v4, v1

    add-int v1, v14, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v15

    sub-int/2addr v1, v11

    int-to-float v2, v1

    int-to-float v3, v14

    add-int v1, v13, v15

    int-to-float v4, v1

    add-int v1, v14, v12

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v15

    sub-int/2addr v1, v12

    int-to-float v2, v1

    int-to-float v3, v14

    add-int v1, v13, v15

    int-to-float v4, v1

    add-int v1, v14, v11

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v13

    add-int v1, v14, v16

    sub-int/2addr v1, v12

    int-to-float v3, v1

    add-int v1, v13, v11

    int-to-float v4, v1

    add-int v1, v14, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v13

    add-int v1, v14, v16

    sub-int/2addr v1, v11

    int-to-float v3, v1

    add-int v1, v13, v12

    int-to-float v4, v1

    add-int v1, v14, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v15

    sub-int/2addr v1, v11

    int-to-float v2, v1

    add-int v1, v14, v16

    sub-int/2addr v1, v12

    int-to-float v3, v1

    add-int v1, v13, v15

    int-to-float v4, v1

    add-int v1, v14, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v1, v13, v15

    sub-int/2addr v1, v12

    int-to-float v2, v1

    add-int v1, v14, v16

    sub-int/2addr v1, v11

    int-to-float v3, v1

    add-int v1, v13, v15

    int-to-float v4, v1

    add-int v1, v14, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/Crop/CropAreaView;->handlePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    move-object v7, v1

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    sub-float v0, v3, v0

    float-to-int v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    sub-float v0, v4, v0

    float-to-int v4, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topLeftCorner:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    :goto_1
    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousX:I

    iput v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousY:I

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->MAJOR:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;->onAreaChangeBegan()V

    :cond_0
    move v1, v2

    :cond_1
    :goto_2
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topRightCorner:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomLeftCorner:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomRightCorner:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM_RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->leftEdge:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->LEFT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->topEdge:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->TOP:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->rightEdge:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->RIGHT:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomEdge:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->BOTTOM:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_1

    :cond_a
    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    goto :goto_2

    :cond_b
    if-eq v5, v2, :cond_c

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e

    :cond_c
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->isDragging:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    sget-object v3, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    if-eq v0, v3, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;->onAreaChangeEnded()V

    :cond_d
    move v1, v2

    goto/16 :goto_2

    :cond_e
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    sget-object v6, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    if-eq v5, v6, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousX:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousY:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousX:I

    iput v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousY:I

    sget-object v3, Lorg/telegram/ui/Components/Crop/CropAreaView$3;->$SwitchMap$org$telegram$ui$Components$Crop$CropAreaView$Control:[I

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->activeControl:Lorg/telegram/ui/Components/Crop/CropAreaView$Control;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Crop/CropAreaView$Control;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_f
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1c

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    iput v3, v1, Landroid/graphics/RectF;->left:F

    :cond_11
    :goto_4
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomPadding:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_1d

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->right:F

    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->top:F

    :cond_13
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_15
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_16

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_16
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;->onAreaChange()V

    :cond_17
    move v1, v2

    goto/16 :goto_2

    :pswitch_0
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_18

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float v3, v6, v3

    sub-float v3, v5, v3

    iput v3, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v4, v5, v4

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v5}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto :goto_7

    :pswitch_1
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_19

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v3, v5, v3

    sub-float v3, v4, v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :cond_19
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto :goto_8

    :pswitch_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    :goto_9
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v3, v5, v3

    sub-float v3, v4, v3

    iput v3, v1, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto :goto_9

    :pswitch_3
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1b

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v4

    iput v1, v3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :pswitch_6
    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    iput v1, v3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByWidth(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :pswitch_7
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/Crop/CropAreaView;->constrainRectByHeight(Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    sub-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->sidePadding:F

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v3, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->minWidth:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public resetAnimator()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->animator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public setActualRect(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->calculateRect(Landroid/graphics/RectF;F)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->updateTouchAreas()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method public setActualRect(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->actualRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->updateTouchAreas()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;ZZ)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_1
    if-nez p3, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    :goto_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setActualRect(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setBottomPadding(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->bottomPadding:F

    return-void
.end method

.method public setDimVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->dimVisibile:Z

    return-void
.end method

.method public setFrameVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->frameVisible:Z

    return-void
.end method

.method public setGridType(Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;Z)V
    .locals 8

    const-wide/16 v6, 0xc8

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne v0, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->previousGridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridType:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_4

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropAreaView;->invalidate()V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "gridProgress"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridProgress:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropAreaView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropAreaView$1;-><init>(Lorg/telegram/ui/Components/Crop/CropAreaView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v0, Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;->NONE:Lorg/telegram/ui/Components/Crop/CropAreaView$GridType;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->gridAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public setListener(Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->listener:Lorg/telegram/ui/Components/Crop/CropAreaView$AreaViewListener;

    return-void
.end method

.method public setLockedAspectRatio(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropAreaView;->lockAspectRatio:F

    return-void
.end method
