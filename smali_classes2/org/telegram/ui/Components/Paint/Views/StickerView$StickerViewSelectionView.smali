.class public Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.source "StickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/StickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickerViewSelectionView"
.end annotation


# instance fields
.field private arcPaint:Landroid/graphics/Paint;

.field private arcRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/StickerView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StickerView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerView;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v4, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v10, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40900000    # 4.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v7, v1

    add-float/2addr v0, v7

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v8, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v9, v0, v8

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    mul-float v1, v9, v10

    add-float/2addr v1, v8

    mul-float v2, v9, v10

    add-float/2addr v2, v8

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    move v6, v4

    :goto_0
    const/16 v0, 0x30

    if-ge v6, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    int-to-float v0, v6

    add-float v2, v3, v3

    mul-float/2addr v2, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    add-float v0, v8, v9

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float v0, v8, v9

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-float v0, v9, v10

    add-float/2addr v0, v8

    add-float v1, v8, v9

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-float v0, v9, v10

    add-float/2addr v0, v8

    add-float v1, v8, v9

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected pointInsideHandle(FF)I
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

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

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v0, v5

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v2, v0

    sub-float v3, v0, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    sub-float v3, v2, v1

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    add-float v3, v0, v1

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    add-float v3, v2, v1

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v0, v5

    sub-float/2addr v3, v4

    add-float/2addr v3, v0

    sub-float/2addr v3, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    sub-float v3, v2, v1

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v0, v5

    sub-float/2addr v3, v4

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float v0, v2, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    sub-float v1, p1, v0

    float-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float v1, p2, v0

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
