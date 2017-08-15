.class public Lorg/telegram/ui/Components/Paint/GLMatrix;
.super Ljava/lang/Object;
.source "GLMatrix.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadGraphicsMatrix(Landroid/graphics/Matrix;)[F
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    aget v2, v1, v3

    aput v2, v0, v3

    aget v2, v1, v6

    aput v2, v0, v6

    aput v4, v0, v7

    const/4 v2, 0x3

    aput v4, v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x3

    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x5

    const/4 v3, 0x4

    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x6

    aput v4, v0, v2

    const/4 v2, 0x7

    aput v4, v0, v2

    const/16 v2, 0x8

    aput v4, v0, v2

    const/16 v2, 0x9

    aput v4, v0, v2

    const/16 v2, 0xa

    aput v5, v0, v2

    const/16 v2, 0xb

    aput v4, v0, v2

    const/16 v2, 0xc

    aget v3, v1, v7

    aput v3, v0, v2

    const/16 v2, 0xd

    const/4 v3, 0x5

    aget v1, v1, v3

    aput v1, v0, v2

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v5, v0, v1

    return-object v0
.end method

.method public static LoadOrtho(FFFFFF)[F
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    sub-float v0, p1, p0

    sub-float v1, p3, p2

    sub-float v2, p5, p4

    add-float v3, p1, p0

    neg-float v3, v3

    sub-float v4, p1, p0

    div-float/2addr v3, v4

    add-float v4, p3, p2

    neg-float v4, v4

    sub-float v5, p3, p2

    div-float/2addr v4, v5

    add-float v5, p5, p4

    neg-float v5, v5

    sub-float v6, p5, p4

    div-float/2addr v5, v6

    const/16 v6, 0x10

    new-array v6, v6, [F

    const/4 v7, 0x0

    div-float v0, v9, v0

    aput v0, v6, v7

    const/4 v0, 0x1

    aput v8, v6, v0

    const/4 v0, 0x2

    aput v8, v6, v0

    const/4 v0, 0x3

    aput v8, v6, v0

    const/4 v0, 0x4

    aput v8, v6, v0

    const/4 v0, 0x5

    div-float v1, v9, v1

    aput v1, v6, v0

    const/4 v0, 0x6

    aput v8, v6, v0

    const/4 v0, 0x7

    aput v8, v6, v0

    const/16 v0, 0x8

    aput v8, v6, v0

    const/16 v0, 0x9

    aput v8, v6, v0

    const/16 v0, 0xa

    const/high16 v1, -0x40000000    # -2.0f

    div-float/2addr v1, v2

    aput v1, v6, v0

    const/16 v0, 0xb

    aput v8, v6, v0

    const/16 v0, 0xc

    aput v3, v6, v0

    const/16 v0, 0xd

    aput v4, v6, v0

    const/16 v0, 0xe

    aput v5, v6, v0

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v6, v0

    return-object v6
.end method

.method public static MultiplyMat4f([F[F)[F
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [F

    aget v1, p0, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    aget v1, p0, v6

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    aget v1, p0, v7

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    aget v1, p0, v8

    aget v2, p1, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p0, v2

    aget v3, p1, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    aget v1, p0, v5

    aget v2, p1, v9

    mul-float/2addr v1, v2

    aget v2, p0, v9

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    const/4 v1, 0x5

    aget v2, p0, v6

    aget v3, p1, v9

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    aget v2, p0, v7

    aget v3, p1, v9

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    aget v2, p0, v8

    aget v3, p1, v9

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, p0, v3

    const/4 v4, 0x7

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    aget v2, p0, v5

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    aget v3, p0, v9

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x9

    aget v2, p0, v6

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xa

    aget v2, p0, v7

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xb

    aget v2, p0, v8

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p0, v3

    const/16 v4, 0xa

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, p0, v3

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xc

    aget v2, p0, v5

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    aget v3, p0, v9

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    aget v2, p0, v6

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0x9

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    aget v2, p0, v7

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x6

    aget v3, p0, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xf

    aget v2, p0, v8

    const/16 v3, 0xc

    aget v3, p1, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, p0, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p0, v3

    const/16 v4, 0xe

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xf

    aget v3, p0, v3

    const/16 v4, 0xf

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method
