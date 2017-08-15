.class public Lorg/telegram/ui/Components/HsvColorValueView;
.super Landroid/widget/FrameLayout;
.source "HsvColorValueView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/HsvColorValueView$OnSaturationOrValueChanged;
    }
.end annotation


# instance fields
.field private colorSelector:Landroid/graphics/drawable/Drawable;

.field private down:Z

.field private drawCache:Landroid/graphics/Bitmap;

.field private hue:F

.field private innerShader:Landroid/graphics/Shader;

.field private lastMeasuredSize:I

.field private listener:Lorg/telegram/ui/Components/HsvColorValueView$OnSaturationOrValueChanged;

.field private outerShader:Landroid/graphics/Shader;

.field private paint:Landroid/graphics/Paint;

.field private saturation:F

.field private selectorView:Landroid/widget/ImageView;

.field private value:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->hue:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->lastMeasuredSize:I

    iput v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->saturation:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->value:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->down:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->hue:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->lastMeasuredSize:I

    iput v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->saturation:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->value:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->down:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->hue:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->lastMeasuredSize:I

    iput v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->saturation:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->value:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->down:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->init()V

    return-void
.end method

.method private ensureCache()V
    .locals 9

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->paint:Landroid/graphics/Paint;

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getMeasuredHeight()I

    move-result v0

    :cond_1
    if-gtz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->lastMeasuredSize:I

    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundSize(I)I

    move-result v8

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    if-lez v8, :cond_3

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, v8

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->outerShader:Landroid/graphics/Shader;

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v0, v3

    aput v4, v0, v2

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Components/HsvColorValueView;->hue:F

    aput v3, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, v8

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->innerShader:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvColorValueView;->outerShader:Landroid/graphics/Shader;

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvColorValueView;->innerShader:Landroid/graphics/Shader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvColorValueView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v3, v8

    int-to-float v4, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/HsvColorValueView;->paint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private getBackgroundSize(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    return v0
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->colorSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->selectorView:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->selectorView:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->colorSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->selectorView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/HsvColorValueView;->colorSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvColorValueView;->colorSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/HsvColorValueView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HsvColorValueView;->setWillNotDraw(Z)V

    return-void
.end method

.method private onSaturationOrValueChanged(Z)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->listener:Lorg/telegram/ui/Components/HsvColorValueView$OnSaturationOrValueChanged;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->listener:Lorg/telegram/ui/Components/HsvColorValueView$OnSaturationOrValueChanged;

    iget v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->saturation:F

    iget v2, p0, Lorg/telegram/ui/Components/HsvColorValueView;->value:F

    invoke-interface {v0, p0, v1, v2, p1}, Lorg/telegram/ui/Components/HsvColorValueView$OnSaturationOrValueChanged;->saturationOrValueChanged(Lorg/telegram/ui/Components/HsvColorValueView;FFZ)V

    :cond_0
    return-void
.end method

.method private placeSelector()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->selectorView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundSize()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/HsvColorValueView;->saturation:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundSize()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/telegram/ui/Components/HsvColorValueView;->value:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundSize()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundSize()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->selectorView:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvColorValueView;->selectorView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/HsvColorValueView;->selectorView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method private setPosFromSatAndValue()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->placeSelector()V

    :cond_0
    return-void
.end method

.method private setSatAndValueFromPos(IIZ)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v0

    sub-int v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->saturation:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->value:F

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/HsvColorValueView;->onSaturationOrValueChanged(Z)V

    return-void
.end method

.method private setSelectorPosition(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/HsvColorValueView;->setSatAndValueFromPos(IIZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->placeSelector()V

    return-void
.end method


# virtual methods
.method public getBackgroundOffset()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->colorSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getBackgroundSize()I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->ensureCache()V

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSaturation()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->saturation:F

    return v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->value:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->ensureCache()V

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/HsvColorValueView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->placeSelector()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->lastMeasuredSize:I

    iget v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->lastMeasuredSize:I

    iget v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->lastMeasuredSize:I

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/HsvColorValueView;->setMeasuredDimension(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->lastMeasuredSize:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundSize(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->down:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    iput-boolean v4, p0, Lorg/telegram/ui/Components/HsvColorValueView;->down:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2, v0}, Lorg/telegram/ui/Components/HsvColorValueView;->setSelectorPosition(IIZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->down:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->getBackgroundOffset()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2, v4}, Lorg/telegram/ui/Components/HsvColorValueView;->setSelectorPosition(IIZ)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setHue(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->hue:F

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/HsvColorValueView;->drawCache:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->invalidate()V

    return-void
.end method

.method public setOnSaturationOrValueChanged(Lorg/telegram/ui/Components/HsvColorValueView$OnSaturationOrValueChanged;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->listener:Lorg/telegram/ui/Components/HsvColorValueView$OnSaturationOrValueChanged;

    return-void
.end method

.method public setSaturation(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->saturation:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->setPosFromSatAndValue()V

    return-void
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/HsvColorValueView;->value:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/HsvColorValueView;->setPosFromSatAndValue()V

    return-void
.end method
