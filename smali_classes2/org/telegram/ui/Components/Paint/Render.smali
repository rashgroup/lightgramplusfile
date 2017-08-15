.class public Lorg/telegram/ui/Components/Paint/Render;
.super Ljava/lang/Object;
.source "Render.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Draw(Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;
    .locals 18

    new-instance v9, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v9, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v9

    :goto_0
    return-object v2

    :cond_0
    const/16 v6, 0x14

    mul-int/lit8 v2, v4, 0x4

    add-int/lit8 v3, v4, -0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v2, v6

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/RenderState;->setPosition(I)V

    const/4 v8, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/RenderState;->read()F

    move-result v12

    new-instance v13, Landroid/graphics/RectF;

    sub-float v14, v2, v7

    sub-float v15, v5, v7

    add-float/2addr v2, v7

    add-float/2addr v5, v7

    invoke-direct {v13, v14, v15, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v2, 0x8

    new-array v5, v2, [F

    const/4 v2, 0x0

    iget v7, v13, Landroid/graphics/RectF;->left:F

    aput v7, v5, v2

    const/4 v2, 0x1

    iget v7, v13, Landroid/graphics/RectF;->top:F

    aput v7, v5, v2

    const/4 v2, 0x2

    iget v7, v13, Landroid/graphics/RectF;->right:F

    aput v7, v5, v2

    const/4 v2, 0x3

    iget v7, v13, Landroid/graphics/RectF;->top:F

    aput v7, v5, v2

    const/4 v2, 0x4

    iget v7, v13, Landroid/graphics/RectF;->left:F

    aput v7, v5, v2

    const/4 v2, 0x5

    iget v7, v13, Landroid/graphics/RectF;->bottom:F

    aput v7, v5, v2

    const/4 v2, 0x6

    iget v7, v13, Landroid/graphics/RectF;->right:F

    aput v7, v5, v2

    const/4 v2, 0x7

    iget v7, v13, Landroid/graphics/RectF;->bottom:F

    aput v7, v5, v2

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v11, v0

    invoke-virtual {v14, v11, v2, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v14, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Utils;->RectFIntegral(Landroid/graphics/RectF;)V

    invoke-virtual {v9, v13}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    if-eqz v8, :cond_3

    const/4 v2, 0x0

    aget v2, v5, v2

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    aget v2, v5, v2

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v8, 0x1

    :goto_2
    const/4 v7, 0x0

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x1

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x2

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x3

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x4

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x5

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x6

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x7

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v4, -0x1

    if-eq v3, v7, :cond_1

    const/4 v7, 0x6

    aget v7, v5, v7

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v7, 0x7

    aget v5, v5, v7

    invoke-virtual {v10, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v10, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v10, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v8, v2

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x4

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v7

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x1406

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v2, v3, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object v2, v9

    goto/16 :goto_0

    :cond_3
    move v2, v8

    goto/16 :goto_2
.end method

.method private static PaintSegment(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V
    .locals 20

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Point;->getDistanceTo(Lorg/telegram/ui/Components/Paint/Point;)F

    move-result v2

    float-to-double v14, v2

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Point;->substract(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/Paint/Point;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/Paint/Point;-><init>(DDD)V

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    move-object/from16 v0, p2

    iget v6, v0, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v7, v0, Lorg/telegram/ui/Components/Paint/RenderState;->spacing:F

    mul-float/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v0, v6

    move-wide/from16 v16, v0

    const-wide/16 v6, 0x0

    cmpl-double v6, v14, v6

    if-lez v6, :cond_5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v14

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v3

    move-object v8, v3

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    iget v3, v0, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    const v6, 0x3f933333    # 1.15f

    mul-float/2addr v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/telegram/ui/Components/Paint/Point;->edge:Z

    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    sub-double v2, v14, v2

    div-double v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/Components/Paint/RenderState;->getCount()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/Paint/RenderState;->setPosition(I)V

    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    invoke-virtual {v8, v2, v3}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Point;->add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v7

    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    move-object v12, v7

    move-wide/from16 v18, v2

    move v2, v6

    move v3, v10

    move-wide/from16 v10, v18

    :goto_2
    cmpg-double v6, v10, v14

    if-gtz v6, :cond_0

    if-eqz v3, :cond_3

    move v6, v9

    :goto_3
    invoke-virtual {v12}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v3

    const/4 v7, -0x1

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v13, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v3

    const/4 v7, -0x1

    move-object/from16 v2, p2

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    :cond_1
    sub-double v2, v10, v14

    move-object/from16 v0, p2

    iput-wide v2, v0, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    return-void

    :cond_2
    iget-wide v4, v2, Lorg/telegram/ui/Components/Paint/Point;->y:D

    iget-wide v6, v2, Lorg/telegram/ui/Components/Paint/Point;->x:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v5, v4

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p2

    iget v6, v0, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    goto :goto_3

    :cond_4
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/Components/Paint/Point;->multiplyByScalar(D)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/Paint/Point;->add(Lorg/telegram/ui/Components/Paint/Point;)Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v3

    const/4 v12, 0x0

    add-double v6, v10, v16

    move-wide v10, v6

    move-object/from16 v18, v3

    move v3, v12

    move-object/from16 v12, v18

    goto :goto_2

    :cond_5
    move-object v8, v3

    goto/16 :goto_1
.end method

.method private static PaintStamp(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V
    .locals 6

    const/4 v3, 0x0

    iget v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    iget v1, p1, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    mul-float v2, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Point;->toPointF()Landroid/graphics/PointF;

    move-result-object v1

    iget v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v3, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    :cond_0
    iget v4, p1, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderState;->prepare()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/RenderState;->appendValuesCount(I)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Paint/RenderState;->addPoint(Landroid/graphics/PointF;FFFI)Z

    return-void
.end method

.method public static RenderPath(Lorg/telegram/ui/Components/Paint/Path;Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBaseWeight()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/RenderState;->baseWeight:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Brush;->getSpacing()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/RenderState;->spacing:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Brush;->getAlpha()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/RenderState;->alpha:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Brush;->getAngle()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/RenderState;->angle:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getBrush()Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/Paint/Brush;->getScale()F

    move-result v1

    iput v1, p1, Lorg/telegram/ui/Components/Paint/RenderState;->scale:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getPoints()[Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Paint/Render;->PaintStamp(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V

    :cond_1
    iget-wide v0, p1, Lorg/telegram/ui/Components/Paint/RenderState;->remainder:D

    iput-wide v0, p0, Lorg/telegram/ui/Components/Paint/Path;->remainder:D

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Render;->Draw(Lorg/telegram/ui/Components/Paint/RenderState;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Path;->getPoints()[Lorg/telegram/ui/Components/Paint/Point;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderState;->prepare()V

    :goto_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    invoke-static {v2, v3, p1}, Lorg/telegram/ui/Components/Paint/Render;->PaintSegment(Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/Point;Lorg/telegram/ui/Components/Paint/RenderState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
