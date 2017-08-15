.class public Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;
    }
.end annotation


# instance fields
.field private angle:F

.field private fX:F

.field private fY:F

.field private mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

.field private sX:F

.field private sY:F

.field private startAngle:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    return-void
.end method

.method private angleBetweenLines(FFFFFFFF)F
    .locals 7

    const/high16 v6, 0x43b40000    # 360.0f

    sub-float v0, p2, p4

    float-to-double v0, v0

    sub-float v2, p1, p3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p6, p8

    float-to-double v2, v1

    sub-float v1, p5, p7

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    rem-float/2addr v0, v6

    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    add-float/2addr v0, v6

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sub-float/2addr v0, v6

    :cond_1
    return v0
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->angle:F

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/high16 v3, 0x7fc00000    # NaNf

    const/4 v9, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v9

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->sX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->sY:F

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->fX:F

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->fY:F

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->fX:F

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->fY:F

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->sX:F

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->sY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->angleBetweenLines(FFFFFFFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->angle:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->angle:F

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;->onRotationBegin(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;->onRotation(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V

    goto :goto_1

    :pswitch_3
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    goto :goto_1

    :pswitch_4
    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->startAngle:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;->mListener:Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector$OnRotationGestureListener;->onRotationEnd(Lorg/telegram/ui/Components/Paint/Views/RotationGestureDetector;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
