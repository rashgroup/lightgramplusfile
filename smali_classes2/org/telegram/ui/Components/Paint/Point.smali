.class public Lorg/telegram/ui/Components/Paint/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public edge:Z

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iput-wide p3, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iput-wide p5, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Point;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v0, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v0, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    return-void
.end method

.method private getMagnitude()D
    .locals 6

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v4, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v4, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;
    .locals 10

    new-instance v1, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v6, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v8, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    add-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v1
.end method

.method alteringAddMultiplication(Lorg/telegram/ui/Components/Paint/Point;D)V
    .locals 4

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v2, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v2, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v2, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lorg/telegram/ui/Components/Paint/Point;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v0, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v2, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method getNormalized()Lorg/telegram/ui/Components/Paint/Point;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Point;->getMagnitude()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v0

    return-object v0
.end method

.method multiplyAndAdd(DLorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;
    .locals 11

    new-instance v1, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v2, p1

    iget-wide v4, p3, Lorg/telegram/ui/Components/Paint/Point;->x:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v4, p1

    iget-wide v6, p3, Lorg/telegram/ui/Components/Paint/Point;->y:D

    add-double/2addr v4, v6

    iget-wide v6, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    mul-double/2addr v6, p1

    iget-wide v8, p3, Lorg/telegram/ui/Components/Paint/Point;->z:D

    add-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v1
.end method

.method multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;
    .locals 9

    new-instance v1, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    mul-double/2addr v2, p1

    iget-wide v4, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    mul-double/2addr v4, p1

    iget-wide v6, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    mul-double/2addr v6, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v1
.end method

.method multiplySum(Lorg/telegram/ui/Components/Paint/Point;D)Lorg/telegram/ui/Components/Paint/Point;
    .locals 10

    new-instance v1, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    add-double/2addr v2, v4

    mul-double/2addr v2, p2

    iget-wide v4, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v6, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    add-double/2addr v4, v6

    mul-double/2addr v4, p2

    iget-wide v6, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v8, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    add-double/2addr v6, v8

    mul-double/2addr v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v1
.end method

.method substract(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;
    .locals 10

    new-instance v1, Lorg/telegram/ui/Components/Paint/Point;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    iget-wide v4, p1, Lorg/telegram/ui/Components/Paint/Point;->x:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v6, p1, Lorg/telegram/ui/Components/Paint/Point;->y:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/telegram/ui/Components/Paint/Point;->z:D

    iget-wide v8, p1, Lorg/telegram/ui/Components/Paint/Point;->z:D

    sub-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    return-object v1
.end method

.method toPointF()Landroid/graphics/PointF;
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->x:D

    double-to-float v1, v2

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Point;->y:D

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
