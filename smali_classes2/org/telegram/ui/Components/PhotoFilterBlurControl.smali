.class public Lorg/telegram/ui/Components/PhotoFilterBlurControl;
.super Landroid/widget/FrameLayout;
.source "PhotoFilterBlurControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;,
        Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;
    }
.end annotation


# static fields
.field private static final BlurInsetProximity:F

.field private static final BlurMinimumDifference:F = 0.02f

.field private static final BlurMinimumFalloff:F = 0.1f

.field private static final BlurViewCenterInset:F

.field private static final BlurViewRadiusInset:F


# instance fields
.field private final GestureStateBegan:I

.field private final GestureStateCancelled:I

.field private final GestureStateChanged:I

.field private final GestureStateEnded:I

.field private final GestureStateFailed:I

.field private activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field private actualAreaSize:Lorg/telegram/ui/Components/Size;

.field private angle:F

.field private arcPaint:Landroid/graphics/Paint;

.field private arcRect:Landroid/graphics/RectF;

.field private centerPoint:Lorg/telegram/ui/Components/Point;

.field private checkForMoving:Z

.field private checkForZooming:Z

.field private delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

.field private falloff:F

.field private isMoving:Z

.field private isZooming:Z

.field private paint:Landroid/graphics/Paint;

.field private pointerScale:F

.field private pointerStartX:F

.field private pointerStartY:F

.field private size:F

.field private startCenterPoint:Lorg/telegram/ui/Components/Point;

.field private startDistance:F

.field private startPointerDistance:F

.field private startRadius:F

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateBegan:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateChanged:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateEnded:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateCancelled:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateFailed:I

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    new-instance v0, Lorg/telegram/ui/Components/Size;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0, v2, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private degreesToRadians(F)F
    .locals 2

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p1

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getActualCenterPoint()Lorg/telegram/ui/Components/Point;
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    new-instance v1, Lorg/telegram/ui/Components/Point;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v2, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActualInnerRadius()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    goto :goto_0
.end method

.method private getActualOuterRadius()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    goto :goto_0
.end method

.method private getDistance(Landroid/view/MotionEvent;)F
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v4, v0, v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    sub-float v2, v1, v3

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private handlePan(ILandroid/view/MotionEvent;)V
    .locals 20

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v7

    new-instance v3, Lorg/telegram/ui/Components/Point;

    iget v2, v7, Lorg/telegram/ui/Components/Point;->x:F

    sub-float v2, v5, v2

    iget v4, v7, Lorg/telegram/ui/Components/Point;->y:F

    sub-float v4, v6, v4

    invoke-direct {v3, v2, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iget v2, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget v4, v3, Lorg/telegram/ui/Components/Point;->x:F

    mul-float/2addr v2, v4

    iget v4, v3, Lorg/telegram/ui/Components/Point;->y:F

    iget v8, v3, Lorg/telegram/ui/Components/Point;->y:F

    mul-float/2addr v4, v8

    add-float/2addr v2, v4

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    mul-float v9, v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    mul-float v10, v2, v4

    iget v4, v3, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double v12, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v4

    float-to-double v14, v4

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    float-to-double v14, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    double-to-float v11, v12

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float v2, v10, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    const/4 v2, 0x1

    move v4, v2

    :goto_2
    if-eqz v4, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-eqz v4, :cond_5

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v4, :cond_a

    sget v4, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v4, v8, v4

    if-gez v4, :cond_6

    sget-object v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    :cond_2
    :goto_5
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v4, v2

    goto :goto_2

    :cond_4
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    move v3, v2

    goto :goto_3

    :cond_5
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    goto :goto_4

    :cond_6
    sget v4, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v4, v9, v4

    cmpl-float v4, v11, v4

    if-lez v4, :cond_7

    add-float/2addr v3, v9

    cmpg-float v3, v11, v3

    if-gez v3, :cond_7

    sget-object v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto :goto_5

    :cond_7
    sub-float v2, v10, v2

    cmpl-float v2, v11, v2

    if-lez v2, :cond_8

    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float/2addr v2, v10

    cmpg-float v2, v11, v2

    if-gez v2, :cond_8

    sget-object v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto :goto_5

    :cond_8
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v2, v9, v2

    cmpg-float v2, v11, v2

    if-lez v2, :cond_9

    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float/2addr v2, v10

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_2

    :cond_9
    sget-object v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlRotation:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    sget v4, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v4, v8, v4

    if-gez v4, :cond_b

    sget-object v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_5

    :cond_b
    sget v4, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v4, v9, v4

    cmpl-float v4, v8, v4

    if-lez v4, :cond_c

    add-float/2addr v3, v9

    cmpg-float v3, v8, v3

    if-gez v3, :cond_c

    sget-object v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto/16 :goto_5

    :cond_c
    sub-float v2, v10, v2

    cmpl-float v2, v8, v2

    if-lez v2, :cond_2

    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float/2addr v2, v10

    cmpg-float v2, v8, v2

    if-gez v2, :cond_2

    sget-object v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v3, :cond_18

    sget-object v3, Lorg/telegram/ui/Components/PhotoFilterBlurControl$1;->$SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :cond_d
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v6

    const v7, 0x3fc90fdb

    add-float/2addr v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;->valueChanged(Lorg/telegram/ui/Components/Point;FFF)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    sub-float v2, v5, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float v3, v6, v3

    new-instance v4, Lorg/telegram/ui/Components/Rect;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v6, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v7, v7, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v7, v7, Lorg/telegram/ui/Components/Size;->width:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v8, v8, Lorg/telegram/ui/Components/Size;->height:F

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    new-instance v5, Lorg/telegram/ui/Components/Point;

    iget v6, v4, Lorg/telegram/ui/Components/Rect;->x:F

    iget v7, v4, Lorg/telegram/ui/Components/Rect;->x:F

    iget v8, v4, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v8, v8, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v2, v8

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v6, v4, Lorg/telegram/ui/Components/Rect;->y:F

    iget v7, v4, Lorg/telegram/ui/Components/Rect;->y:F

    iget v8, v4, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v8, v8, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v3, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v5, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, v5, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v4, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v6, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v3, v6

    iget v5, v5, Lorg/telegram/ui/Components/Point;->y:F

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float v4, v5, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v6, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float v3, v11, v3

    const v4, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v3, v5

    div-float v2, v3, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    const v4, 0x3ca3d70a    # 0.02f

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float v3, v11, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    const v5, 0x3ca3d70a    # 0.02f

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v3, v5

    div-float v2, v3, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    goto/16 :goto_6

    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    sub-float v8, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float v9, v6, v2

    const/4 v3, 0x0

    iget v2, v7, Lorg/telegram/ui/Components/Point;->x:F

    cmpl-float v2, v5, v2

    if-lez v2, :cond_e

    const/4 v2, 0x1

    :goto_7
    iget v4, v7, Lorg/telegram/ui/Components/Point;->y:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_f

    const/4 v4, 0x1

    :goto_8
    if-nez v2, :cond_11

    if-nez v4, :cond_11

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_10

    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gez v2, :cond_19

    const/4 v2, 0x1

    :goto_9
    mul-float v3, v8, v8

    mul-float v4, v9, v9

    add-float/2addr v3, v4

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_a
    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const v3, 0x40490fdb    # (float)Math.PI

    div-float/2addr v2, v3

    const v3, 0x3f933333    # 1.15f

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    move-object/from16 v0, p0

    iput v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    goto/16 :goto_6

    :cond_e
    const/4 v2, 0x0

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_9

    :cond_11
    if-eqz v2, :cond_13

    if-nez v4, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_12

    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_9

    :cond_13
    if-eqz v2, :cond_15

    if-eqz v4, :cond_15

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_14

    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    cmpg-float v2, v8, v2

    if-gez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_9

    :cond_15
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_16

    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gez v2, :cond_19

    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_16
    const/4 v2, 0x0

    cmpg-float v2, v8, v2

    if-gez v2, :cond_19

    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    sget-object v3, Lorg/telegram/ui/Components/PhotoFilterBlurControl$1;->$SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_6

    :pswitch_6
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    sub-float v2, v5, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float v3, v6, v3

    new-instance v4, Lorg/telegram/ui/Components/Rect;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v6, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v7, v7, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v7, v7, Lorg/telegram/ui/Components/Size;->width:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v8, v8, Lorg/telegram/ui/Components/Size;->height:F

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    new-instance v5, Lorg/telegram/ui/Components/Point;

    iget v6, v4, Lorg/telegram/ui/Components/Rect;->x:F

    iget v7, v4, Lorg/telegram/ui/Components/Rect;->x:F

    iget v8, v4, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v8, v8, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v2, v8

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v6, v4, Lorg/telegram/ui/Components/Rect;->y:F

    iget v7, v4, Lorg/telegram/ui/Components/Rect;->y:F

    iget v8, v4, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v8, v8, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v3, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v5, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, v5, Lorg/telegram/ui/Components/Point;->x:F

    iget v6, v4, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v6, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v3, v6

    iget v5, v5, Lorg/telegram/ui/Components/Point;->y:F

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float v4, v5, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v6, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    goto/16 :goto_6

    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float v3, v8, v3

    const v4, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v3, v5

    div-float v2, v3, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    const v4, 0x3ca3d70a    # 0.02f

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    goto/16 :goto_6

    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    const v5, 0x3ca3d70a    # 0.02f

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v3, v5

    div-float v2, v3, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    goto/16 :goto_6

    :pswitch_9
    sget-object v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    goto/16 :goto_1

    :cond_19
    move v2, v3

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handlePinch(ILandroid/view/MotionEvent;)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getDistance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    sget-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlWholeArea:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    :pswitch_1
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getDistance(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    sub-float v2, v0, v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v3

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    const v1, 0x3dcccccd    # 0.1f

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    const v2, 0x3ca3d70a    # 0.02f

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v4

    const v5, 0x3fc90fdb

    add-float/2addr v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;->valueChanged(Lorg/telegram/ui/Components/Point;FFF)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setSelected(ZZ)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualInnerRadius()F

    move-result v7

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualOuterRadius()F

    move-result v8

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v9, v0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v10, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v11, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/16 v0, 0x1e

    if-ge v6, v0, :cond_0

    int-to-float v0, v6

    add-float v1, v10, v9

    mul-float/2addr v1, v0

    neg-float v2, v7

    int-to-float v0, v6

    add-float v3, v10, v9

    mul-float/2addr v0, v3

    add-float v3, v0, v10

    sub-float v4, v11, v7

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    neg-int v0, v6

    int-to-float v0, v0

    add-float v1, v10, v9

    mul-float/2addr v0, v1

    sub-float/2addr v0, v9

    sub-float v1, v0, v10

    neg-float v2, v7

    neg-int v0, v6

    int-to-float v0, v0

    add-float v3, v10, v9

    mul-float/2addr v0, v3

    sub-float v3, v0, v9

    sub-float v4, v11, v7

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v0, v6

    add-float v1, v10, v9

    mul-float/2addr v1, v0

    int-to-float v0, v6

    add-float v2, v10, v9

    mul-float/2addr v0, v2

    add-float v3, v10, v0

    add-float v4, v11, v7

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    neg-int v0, v6

    int-to-float v0, v0

    add-float v1, v10, v9

    mul-float/2addr v0, v1

    sub-float/2addr v0, v9

    sub-float v1, v0, v10

    neg-int v0, v6

    int-to-float v0, v0

    add-float v2, v10, v9

    mul-float/2addr v0, v2

    sub-float v3, v0, v9

    add-float v4, v11, v7

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v7, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    const/16 v0, 0x40

    if-ge v6, v0, :cond_3

    int-to-float v0, v6

    add-float v1, v7, v9

    mul-float/2addr v1, v0

    neg-float v2, v8

    int-to-float v0, v6

    add-float v3, v7, v9

    mul-float/2addr v0, v3

    add-float v3, v7, v0

    sub-float v4, v11, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    neg-int v0, v6

    int-to-float v0, v0

    add-float v1, v7, v9

    mul-float/2addr v0, v1

    sub-float/2addr v0, v9

    sub-float v1, v0, v7

    neg-float v2, v8

    neg-int v0, v6

    int-to-float v0, v0

    add-float v3, v7, v9

    mul-float/2addr v0, v3

    sub-float v3, v0, v9

    sub-float v4, v11, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v0, v6

    add-float v1, v7, v9

    mul-float/2addr v1, v0

    int-to-float v0, v6

    add-float v2, v7, v9

    mul-float/2addr v0, v2

    add-float v3, v7, v0

    add-float v4, v11, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    neg-int v0, v6

    int-to-float v0, v0

    add-float v1, v7, v9

    mul-float/2addr v0, v1

    sub-float/2addr v0, v9

    sub-float v1, v0, v7

    neg-int v0, v6

    int-to-float v0, v0

    add-float v2, v7, v9

    mul-float/2addr v0, v2

    sub-float v3, v0, v9

    add-float v4, v11, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const v9, 0x40c4cccd    # 6.15f

    const v3, 0x41233333    # 10.2f

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    neg-float v1, v7

    neg-float v2, v7

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    const/16 v0, 0x16

    if-ge v6, v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    int-to-float v0, v6

    add-float v2, v9, v3

    mul-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_2
    const v7, 0x400147ae    # 2.02f

    const v3, 0x40666666    # 3.6f

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    neg-float v1, v8

    neg-float v2, v8

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    move v6, v0

    :goto_3
    const/16 v0, 0x40

    if-ge v6, v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    int-to-float v0, v6

    add-float v2, v7, v3

    mul-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/Point;

    iget v4, v2, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v0, v4

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v1, v2

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iget v0, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v3, Lorg/telegram/ui/Components/Point;->x:F

    mul-float/2addr v0, v1

    iget v1, v3, Lorg/telegram/ui/Components/Point;->y:F

    iget v2, v3, Lorg/telegram/ui/Components/Point;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v4, v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualInnerRadius()F

    move-result v5

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualOuterRadius()F

    move-result v6

    sub-float v0, v6, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v2, :cond_9

    iget v2, v3, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double v8, v2

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v2

    float-to-double v10, v2

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget v2, v3, Lorg/telegram/ui/Components/Point;->y:F

    float-to-double v2, v2

    iget v7, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v7

    float-to-double v10, v7

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-float v2, v2

    sget v3, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v3, v4, v3

    if-gez v3, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    :cond_1
    :goto_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    :cond_3
    sget v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    move v1, v0

    goto :goto_2

    :cond_4
    sget v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    goto :goto_3

    :cond_5
    sget v3, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v3, v5, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    add-float/2addr v1, v5

    cmpg-float v1, v2, v1

    if-gez v1, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_6
    sub-float v0, v6, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_7

    sget v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float/2addr v0, v6

    cmpg-float v0, v2, v0

    if-gez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_7
    sget v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v0, v5, v0

    cmpg-float v0, v2, v0

    if-lez v0, :cond_8

    sget v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float/2addr v0, v6

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_9
    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v2, v4, v2

    if-gez v2, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_a
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v2, v5, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_b

    add-float/2addr v1, v5

    cmpg-float v1, v4, v1

    if-gez v1, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_b
    sub-float v0, v6, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_1

    sget v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float/2addr v0, v6

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    :cond_f
    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    goto/16 :goto_0

    :cond_10
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    goto :goto_5

    :pswitch_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_11
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setActualAreaSize(FF)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iput p1, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iput p2, v0, Lorg/telegram/ui/Components/Size;->height:F

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->invalidate()V

    return-void
.end method
