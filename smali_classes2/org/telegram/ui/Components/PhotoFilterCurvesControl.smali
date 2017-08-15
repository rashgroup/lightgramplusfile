.class public Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
.super Landroid/view/View;
.source "PhotoFilterCurvesControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;
    }
.end annotation


# static fields
.field private static final CurvesSegmentBlacks:I = 0x1

.field private static final CurvesSegmentHighlights:I = 0x4

.field private static final CurvesSegmentMidtones:I = 0x3

.field private static final CurvesSegmentNone:I = 0x0

.field private static final CurvesSegmentShadows:I = 0x2

.field private static final CurvesSegmentWhites:I = 0x5

.field private static final GestureStateBegan:I = 0x1

.field private static final GestureStateCancelled:I = 0x4

.field private static final GestureStateChanged:I = 0x2

.field private static final GestureStateEnded:I = 0x3

.field private static final GestureStateFailed:I = 0x5


# instance fields
.field private activeSegment:I

.field private actualArea:Lorg/telegram/ui/Components/Rect;

.field private checkForMoving:Z

.field private curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field private delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

.field private isMoving:Z

.field private lastX:F

.field private lastY:F

.field private paint:Landroid/graphics/Paint;

.field private paintCurve:Landroid/graphics/Paint;

.field private paintDash:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;)V
    .locals 5

    const/4 v4, 0x0

    const v3, -0x66000001

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setWillNotDraw(Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    const v1, -0x404041

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private handlePan(ILandroid/view/MotionEvent;)V
    .locals 7

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->selectSegmentWithPoint(F)V

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x40000000    # 2.0f

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastY:F

    sub-float/2addr v3, v2

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v0, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget v4, v4, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    packed-switch v4, :pswitch_data_1

    :goto_1
    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    packed-switch v4, :pswitch_data_2

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;->valueChanged()V

    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastX:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastY:F

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :pswitch_6
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    add-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    goto :goto_2

    :pswitch_7
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    add-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    goto :goto_2

    :pswitch_8
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    add-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    goto :goto_2

    :pswitch_9
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    add-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    goto :goto_2

    :pswitch_a
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    add-float/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    goto :goto_2

    :pswitch_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->unselectSegments()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private selectSegmentWithPoint(F)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->width:F

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float v1, p1, v1

    div-float v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    goto :goto_0
.end method

.method private unselectSegments()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->activeSegment:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->width:F

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v8, v0, v1

    move v7, v6

    :goto_0
    const/4 v0, 0x4

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    add-float/2addr v0, v8

    int-to-float v1, v7

    mul-float/2addr v1, v8

    add-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    add-float/2addr v0, v8

    int-to-float v3, v7

    mul-float/2addr v3, v8

    add-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v1, v0, Lorg/telegram/ui/Components/Rect;->x:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintDash:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget v1, v1, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v2, v6

    :goto_2
    const/4 v1, 0x5

    if-ge v2, v1, :cond_1

    packed-switch v2, :pswitch_data_1

    const-string/jumbo v1, ""

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float v3, v8, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v5, v5, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->luminanceCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const v1, -0x12c2b4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->redCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const v1, -0xef1163

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->greenCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    const v1, -0xcc8805

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->curveValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->blueCurve:Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;

    goto :goto_1

    :pswitch_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%.2f"

    new-array v4, v10, [Ljava/lang/Object;

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->blacksLevel:F

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%.2f"

    new-array v4, v10, [Ljava/lang/Object;

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->shadowsLevel:F

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%.2f"

    new-array v4, v10, [Ljava/lang/Object;

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->midtonesLevel:F

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%.2f"

    new-array v4, v10, [Ljava/lang/Object;

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->highlightsLevel:F

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%.2f"

    new-array v4, v10, [Ljava/lang/Object;

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->whitesLevel:F

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;->interpolateCurve()[F

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v0, v6

    :goto_4
    array-length v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    if-nez v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->x:F

    mul-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v5, v5, Lorg/telegram/ui/Components/Rect;->width:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->y:F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v1, v5

    sub-float v5, v11, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v6, v6, Lorg/telegram/ui/Components/Rect;->height:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->x:F

    mul-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v5, v5, Lorg/telegram/ui/Components/Rect;->width:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v4, v4, Lorg/telegram/ui/Components/Rect;->y:F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v1, v5

    sub-float v5, v11, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v6, v6, Lorg/telegram/ui/Components/Rect;->height:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->paintCurve:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastX:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->lastY:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->x:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v3, v3, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v0, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iget v2, v2, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    :cond_1
    iput-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v4, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    iput-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    iput-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->checkForMoving:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->isMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto :goto_0

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

.method public setActualArea(FFFF)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iput p1, v0, Lorg/telegram/ui/Components/Rect;->x:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iput p2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iput p3, v0, Lorg/telegram/ui/Components/Rect;->width:F

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->actualArea:Lorg/telegram/ui/Components/Rect;

    iput p4, v0, Lorg/telegram/ui/Components/Rect;->height:F

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;

    return-void
.end method
