.class public Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.source "TextPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewSelectionView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/TextPaintView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v9, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v10, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v11, v2

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v12, v2

    add-float v2, v12, v11

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float v13, v2, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v13

    sub-float v14, v2, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v13

    sub-float v15, v2, v3

    add-float v2, v9, v10

    div-float v2, v14, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v2, v0

    add-float v3, v9, v10

    mul-float/2addr v2, v3

    sub-float v2, v14, v2

    add-float/2addr v2, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    move/from16 v0, v16

    if-ge v8, v0, :cond_0

    add-float v2, v17, v13

    int-to-float v3, v8

    add-float v4, v10, v9

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    sub-float v4, v13, v2

    add-float v5, v3, v10

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    add-float v6, v13, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float v2, v13, v15

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v11, v4

    sub-float v4, v2, v4

    add-float v5, v3, v10

    add-float v2, v13, v15

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v11, v6

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    :cond_0
    add-float v2, v9, v10

    div-float v2, v15, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v2, v0

    add-float v3, v9, v10

    mul-float/2addr v2, v3

    sub-float v2, v15, v2

    add-float/2addr v2, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    const/4 v2, 0x0

    move v8, v2

    :goto_1
    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    add-float v2, v17, v13

    int-to-float v3, v8

    add-float v4, v10, v9

    mul-float/2addr v3, v4

    add-float v4, v2, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    sub-float v3, v13, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    add-float v5, v13, v2

    add-float v6, v4, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float v2, v13, v14

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v11, v3

    sub-float v3, v2, v3

    add-float v2, v13, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    add-float/2addr v5, v2

    add-float v6, v4, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->dotPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float v2, v13, v14

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v15, v3

    add-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->dotPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v12, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float v2, v13, v14

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v15, v3

    add-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v12, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected pointInsideHandle(FF)I
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x419c0000    # 19.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v0, v5

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v0, v5

    sub-float/2addr v3, v4

    div-float v4, v3, v5

    add-float/2addr v4, v0

    sub-float v5, v0, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    sub-float v5, v4, v1

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    add-float v5, v4, v1

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    add-float v5, v0, v2

    sub-float/2addr v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    sub-float v5, v4, v1

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    add-float v5, v0, v2

    add-float/2addr v5, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    add-float/2addr v1, v4

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    cmpg-float v1, p1, v2

    if-gez v1, :cond_2

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v3

    if-gez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
