.class public Lorg/telegram/ui/Components/PhotoCropView;
.super Landroid/widget/FrameLayout;
.source "PhotoCropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;
    }
.end annotation


# instance fields
.field private animationEndValues:Landroid/graphics/RectF;

.field private animationRunnable:Ljava/lang/Runnable;

.field private animationStartValues:Landroid/graphics/RectF;

.field private bitmapGlobalScale:F

.field private bitmapGlobalX:F

.field private bitmapGlobalY:F

.field private bitmapHeight:I

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private bitmapWidth:I

.field private bitmapX:I

.field private bitmapY:I

.field private cropView:Lorg/telegram/ui/Components/Crop/CropView;

.field private delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

.field private draggingState:I

.field private freeformCrop:Z

.field private oldX:F

.field private oldY:F

.field private orientation:I

.field private rectSizeX:F

.field private rectSizeY:F

.field private rectX:F

.field private rectY:F

.field private showOnSetBitmap:Z

.field private wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/high16 v0, 0x44160000    # 600.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldX:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldY:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropRotationWheel;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoCropView;)Lorg/telegram/ui/Components/Crop/CropView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoCropView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/PhotoCropView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public cancelAnimationRunnable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getResult()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapX()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getBitmapY()F
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLimitHeight()F
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v1, v2

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v4

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-float v0, v4, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-float v0, v0

    sub-float v0, v1, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLimitWidth()F
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float/2addr v0, v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v1

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitX()F
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitY()F
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRectSizeX()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropWidth()F

    move-result v0

    return v0
.end method

.method public getRectSizeY()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropHeight()F

    move-result v0

    return v0
.end method

.method public getRectX()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropLeft()F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRectY()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->getCropTop()F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v0

    sub-float v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->isReady()Z

    move-result v0

    return v0
.end method

.method public moveToFill(Z)V
    .locals 13

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    div-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    div-float/2addr v0, v2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    :goto_0
    cmpl-float v1, v0, v11

    if-lez v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v1, v0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    div-float v0, v3, v0

    :cond_0
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    mul-float v2, v1, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    mul-float v3, v1, v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_3

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2
    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    div-float/2addr v4, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v3

    add-float/2addr v5, v1

    div-float/2addr v5, v12

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v8, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    iget v10, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v3, v0, v11

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    div-float/2addr v1, v12

    sub-float v3, v0, v11

    mul-float/2addr v1, v3

    add-float/2addr v1, v5

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v0, v4

    invoke-interface {v3, v2, v1, v0, p1}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    cmpg-float v1, v0, v11

    if-gez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v1, v0

    cmpg-float v1, v1, v11

    if-gez v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    div-float v0, v11, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onAppear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->willShow()V

    :cond_0
    return-void
.end method

.method public onAppeared()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->show()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->showOnSetBitmap:Z

    goto :goto_0
.end method

.method public onDisappear()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->hide()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->updateLayout()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->reset()V

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IZ)V
    .locals 9

    const/4 v2, 0x1

    const/high16 v1, 0x44160000    # 600.0f

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    iput v8, p0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldX:F

    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldY:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iput-boolean p3, p0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    iput p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->requestLayout()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    new-instance v1, Lorg/telegram/ui/Components/PhotoCropView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoCropView$1;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->setListener(Lorg/telegram/ui/Components/Crop/CropView$CropViewListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropView;->setBottomPadding(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoCropView;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    new-instance v1, Lorg/telegram/ui/Components/PhotoCropView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PhotoCropView$2;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setListener(Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x51

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Components/PhotoCropView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/Crop/CropView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView;->setBitmap(Landroid/graphics/Bitmap;IZ)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->showOnSetBitmap:Z

    if-eqz v0, :cond_1

    iput-boolean v8, p0, Lorg/telegram/ui/Components/PhotoCropView;->showOnSetBitmap:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropView;->show()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setFreeform(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->wheelView:Lorg/telegram/ui/Components/Crop/CropRotationWheel;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->reset()V

    return-void
.end method

.method public setBitmapParams(FFF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    iput p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    iput p3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    const/high16 v1, 0x44160000    # 600.0f

    const/4 v3, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->requestLayout()V

    return-void
.end method

.method public startAnimationRunnable()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PhotoCropView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoCropView$3;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
