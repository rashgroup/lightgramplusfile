.class Lorg/telegram/ui/Components/Crop/CropView$CropState;
.super Ljava/lang/Object;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Crop/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CropState"
.end annotation


# instance fields
.field private baseRotation:F

.field private height:F

.field private matrix:Landroid/graphics/Matrix;

.field private minimumScale:F

.field private orientation:F

.field private rotation:F

.field private scale:F

.field final synthetic this$0:Lorg/telegram/ui/Components/Crop/CropView;

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;Landroid/graphics/Bitmap;I)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->this$0:Lorg/telegram/ui/Components/Crop/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->x:F

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->y:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    int-to-float v0, p3

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->baseRotation:F

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Crop/CropView;Landroid/graphics/Bitmap;ILorg/telegram/ui/Components/Crop/CropView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;-><init>(Lorg/telegram/ui/Components/Crop/CropView;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientedHeight()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale(FFF)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getRotation()F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)Landroid/graphics/Matrix;
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getX()F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getY()F

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/Crop/CropView$CropState;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->translate(FF)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getBaseRotation()F

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/Crop/CropView$CropState;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotate(FFF)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/Crop/CropView$CropState;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->hasChanges()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Crop/CropView$CropState;Lorg/telegram/ui/Components/Crop/CropAreaView;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->reset(Lorg/telegram/ui/Components/Crop/CropAreaView;FZ)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getWidth()F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getHeight()F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientation()F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Crop/CropView$CropState;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getConcatMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Crop/CropView$CropState;)F
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Crop/CropView$CropState;->getOrientedWidth()F

    move-result v0

    return v0
.end method

.method private getBaseRotation()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->baseRotation:F

    return v0
.end method

.method private getConcatMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method private getHeight()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    return v0
.end method

.method private getMatrix()Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method private getMinimumScale()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    return v0
.end method

.method private getOrientation()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->orientation:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->baseRotation:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getOrientedHeight()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->orientation:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->baseRotation:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    goto :goto_0
.end method

.method private getOrientedWidth()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->orientation:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->baseRotation:F

    add-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    goto :goto_0
.end method

.method private getRotation()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    return v0
.end method

.method private getScale()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    return v0
.end method

.method private getWidth()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    return v0
.end method

.method private getX()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->x:F

    return v0
.end method

.method private getY()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->y:F

    return v0
.end method

.method private hasChanges()Z
    .locals 3

    const v2, 0x3727c5ac    # 1.0E-5f

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->orientation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset(Lorg/telegram/ui/Components/Crop/CropAreaView;FZ)V
    .locals 5

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->x:F

    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->y:F

    iput v3, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    iput p2, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->orientation:F

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->orientation:F

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->baseRotation:F

    add-float/2addr v0, v1

    rem-float/2addr v0, v4

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->orientation:F

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->baseRotation:F

    add-float/2addr v1, v2

    rem-float/2addr v1, v4

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v1

    div-float v0, v1, v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->width:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->height:F

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropWidth()F

    move-result v2

    div-float v0, v2, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Crop/CropAreaView;->getCropHeight()F

    move-result v2

    div-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->minimumScale:F

    goto :goto_2
.end method

.method private rotate(FFF)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->rotation:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method

.method private scale(FFF)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->scale:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-void
.end method

.method private translate(FF)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->x:F

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->y:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropView$CropState;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method
