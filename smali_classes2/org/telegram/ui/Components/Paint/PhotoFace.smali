.class public Lorg/telegram/ui/Components/Paint/PhotoFace;
.super Ljava/lang/Object;
.source "PhotoFace.java"


# instance fields
.field private angle:F

.field private chinPoint:Lorg/telegram/ui/Components/Point;

.field private eyesCenterPoint:Lorg/telegram/ui/Components/Point;

.field private eyesDistance:F

.field private foreheadPoint:Lorg/telegram/ui/Components/Point;

.field private mouthPoint:Lorg/telegram/ui/Components/Point;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/face/Face;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getLandmarks()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/face/Landmark;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/Landmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/vision/face/Landmark;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    :goto_1
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v6, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    move-object v10, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v6, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    move-object v3, v4

    move-object v10, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v6, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    move-object v2, v3

    move-object v3, v4

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v6, p2, p3, p4}, Lorg/telegram/ui/Components/Paint/PhotoFace;->transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    new-instance v0, Lorg/telegram/ui/Components/Point;

    const/high16 v5, 0x3f000000    # 0.5f

    iget v6, v4, Lorg/telegram/ui/Components/Point;->x:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    iget v7, v3, Lorg/telegram/ui/Components/Point;->x:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    iget v7, v4, Lorg/telegram/ui/Components/Point;->y:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    iget v8, v3, Lorg/telegram/ui/Components/Point;->y:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-direct {v0, v5, v6}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v0, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v0, v5

    float-to-double v6, v0

    iget v0, v3, Lorg/telegram/ui/Components/Point;->y:F

    iget v5, v4, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v0, v5

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    iget v0, v3, Lorg/telegram/ui/Components/Point;->y:F

    iget v5, v4, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v0, v5

    float-to-double v8, v0

    iget v0, v3, Lorg/telegram/ui/Components/Point;->x:F

    iget v3, v4, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->angle:F

    iget v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    const v3, 0x40166666    # 2.35f

    mul-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->width:F

    const v0, 0x3f4ccccd    # 0.8f

    iget v3, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    mul-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->angle:F

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v3, v4

    new-instance v4, Lorg/telegram/ui/Components/Point;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v5, v5, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v6, v6, Lorg/telegram/ui/Components/Point;->y:F

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    invoke-direct {v4, v5, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v4, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->foreheadPoint:Lorg/telegram/ui/Components/Point;

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Lorg/telegram/ui/Components/Point;

    const/high16 v3, 0x3f000000    # 0.5f

    iget v4, v2, Lorg/telegram/ui/Components/Point;->x:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    iget v5, v1, Lorg/telegram/ui/Components/Point;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    iget v2, v2, Lorg/telegram/ui/Components/Point;->y:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->mouthPoint:Lorg/telegram/ui/Components/Point;

    const v0, 0x3f333333    # 0.7f

    iget v1, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->angle:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->mouthPoint:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->mouthPoint:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    invoke-direct {v2, v3, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->chinPoint:Lorg/telegram/ui/Components/Point;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private transposePoint(Landroid/graphics/PointF;Landroid/graphics/Bitmap;Lorg/telegram/ui/Components/Size;Z)Lorg/telegram/ui/Components/Point;
    .locals 5

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    move v1, v0

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, p3, Lorg/telegram/ui/Components/Size;->width:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    div-float v1, v3, v1

    iget v3, p3, Lorg/telegram/ui/Components/Size;->height:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    div-float v0, v3, v0

    invoke-direct {v2, v1, v0}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v2

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->angle:F

    return v0
.end method

.method public getPointForAnchor(I)Lorg/telegram/ui/Components/Point;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->foreheadPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->mouthPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->chinPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getWidthForAnchor(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesDistance:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->width:F

    goto :goto_0
.end method

.method public isSufficient()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/PhotoFace;->eyesCenterPoint:Lorg/telegram/ui/Components/Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
