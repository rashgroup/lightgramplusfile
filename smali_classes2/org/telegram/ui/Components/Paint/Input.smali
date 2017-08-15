.class public Lorg/telegram/ui/Components/Paint/Input;
.super Ljava/lang/Object;
.source "Input.java"


# instance fields
.field private beganDrawing:Z

.field private clearBuffer:Z

.field private hasMoved:Z

.field private invertMatrix:Landroid/graphics/Matrix;

.field private isFirst:Z

.field private lastLocation:Lorg/telegram/ui/Components/Paint/Point;

.field private lastRemainder:D

.field private points:[Lorg/telegram/ui/Components/Paint/Point;

.field private pointsCount:I

.field private renderView:Lorg/telegram/ui/Components/Paint/RenderView;

.field private tempPoint:[F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Point;

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Paint/Input;D)D
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastRemainder:D

    return-wide p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/Paint/Input;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    return p1
.end method

.method private paintPath(Lorg/telegram/ui/Components/Paint/Path;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentWeight()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Path;->setup(IFLorg/telegram/ui/Components/Paint/Brush;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastRemainder:D

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastRemainder:D

    iput-wide v0, p1, Lorg/telegram/ui/Components/Paint/Path;->remainder:D

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    new-instance v2, Lorg/telegram/ui/Components/Paint/Input$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/Paint/Input$1;-><init>(Lorg/telegram/ui/Components/Paint/Input;Lorg/telegram/ui/Components/Paint/Path;)V

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->paintStroke(Lorg/telegram/ui/Components/Paint/Path;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    return-void
.end method

.method private smoothPoint(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;F)Lorg/telegram/ui/Components/Paint/Point;
    .locals 12

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, v0, p4

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, p4

    mul-float/2addr v0, v1

    mul-float v0, v0, p4

    float-to-double v6, v0

    mul-float v0, p4, p4

    float-to-double v8, v0

    new-instance v1, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v2, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v2, v4

    iget-wide v10, p3, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v10, v6

    add-double/2addr v2, v10

    iget-wide v10, p2, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v10, v8

    add-double/2addr v2, v10

    iget-wide v10, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v4, v10

    iget-wide v10, p3, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    iget-wide v6, p2, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v1
.end method

.method private smoothenAndPaintPoints(Z)V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/ui/Components/Paint/Point;->multiplySum(Lorg/telegram/ui/Components/Paint/Point;D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v3, v6, v7}, Lorg/telegram/ui/Components/Paint/Point;->multiplySum(Lorg/telegram/ui/Components/Paint/Point;D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v5

    const/4 v0, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v1

    const-wide/high16 v6, 0x4048000000000000L    # 48.0

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v6, v0

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v7, v6

    div-float v7, v0, v7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_3

    invoke-direct {p0, v4, v5, v3, v1}, Lorg/telegram/ui/Components/Paint/Input;->smoothPoint(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;F)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v8

    iget-boolean v9, p0, Lorg/telegram/ui/Components/Paint/Input;->isFirst:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    iput-boolean v9, v8, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Paint/Input;->isFirst:Z

    :cond_2
    invoke-virtual {v2, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-float/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v5, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Point;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Paint/Path;-><init>([Lorg/telegram/ui/Components/Paint/Point;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    new-array v0, v0, [Lorg/telegram/ui/Components/Paint/Point;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Paint/Path;-><init>([Lorg/telegram/ui/Components/Paint/Point;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    aput v1, v3, v9

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    aput v2, v1, v8

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->invertMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v1, Lorg/telegram/ui/Components/Paint/Point;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    aget v2, v2, v9

    float-to-double v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Input;->tempPoint:[F

    aget v4, v4, v8

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    if-nez v0, :cond_1

    iput-boolean v8, p0, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    iput-boolean v8, p0, Lorg/telegram/ui/Components/Paint/Input;->isFirst:Z

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    aput-object v1, v0, v9

    iput v8, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    iput-boolean v8, p0, Lorg/telegram/ui/Components/Paint/Input;->clearBuffer:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->onBeganDrawing()V

    iput-boolean v8, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->points:[Lorg/telegram/ui/Components/Paint/Point;

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    aput-object v1, v0, v2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/Paint/Input;->smoothenAndPaintPoints(Z)V

    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->lastLocation:Lorg/telegram/ui/Components/Paint/Point;

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->shouldDraw()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v8, v1, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    new-instance v0, Lorg/telegram/ui/Components/Paint/Path;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/Paint/Path;-><init>(Lorg/telegram/ui/Components/Paint/Point;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Input;->paintPath(Lorg/telegram/ui/Components/Paint/Path;)V

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Input;->reset()V

    :cond_5
    :goto_1
    iput v9, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->getPainting()Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->getCurrentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Painting;->commitStroke(I)V

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Paint/Input;->beganDrawing:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->renderView:Lorg/telegram/ui/Components/Paint/RenderView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Input;->hasMoved:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->onFinishedDrawing(Z)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Input;->pointsCount:I

    if-lez v0, :cond_5

    invoke-direct {p0, v8}, Lorg/telegram/ui/Components/Paint/Input;->smoothenAndPaintPoints(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->invertMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Input;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method
