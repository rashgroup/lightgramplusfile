.class public Lorg/telegram/ui/Components/Paint/Views/ColorPicker;
.super Landroid/widget/FrameLayout;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final LOCATIONS:[F


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private changingWeight:Z

.field private delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

.field private dragging:Z

.field private draggingFactor:F

.field private gradientPaint:Landroid/graphics/Paint;

.field private interacting:Z

.field private interpolator:Landroid/view/animation/OvershootInterpolator;

.field private location:F

.field private rectF:Landroid/graphics/RectF;

.field private settingsButton:Landroid/widget/ImageView;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private swatchPaint:Landroid/graphics/Paint;

.field private swatchStrokePaint:Landroid/graphics/Paint;

.field private wasChangingWeight:Z

.field private weight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x9

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x15d8c7
        -0x24c52e
        -0xcfae1d
        -0xb63a13
        -0x7f379c
        -0x3219b
        -0x369b3
        -0x1000000
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e0f5c29    # 0.14f
        0x3e75c28f    # 0.24f
        0x3ec7ae14    # 0.39f
        0x3efae148    # 0.49f
        0x3f1eb852    # 0.62f
        0x3f3ae148    # 0.73f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f828f5c    # 1.02f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interpolator:Landroid/view/animation/OvershootInterpolator;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->gradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    const v0, 0x3e8a3d71    # 0.27f

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    const/16 v1, 0x3c

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "paint"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_color_location"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setLocation(F)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/ColorPicker;)Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    return-object v0
.end method

.method private interpolateColors(IIF)I
    .locals 9

    const/16 v8, 0xff

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v7, v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v2, v3

    sub-int v3, v4, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v5

    sub-int v4, v6, v5

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v8, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private setDragging(ZZ)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->dragging:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->dragging:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->dragging:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    if-eqz p2, :cond_3

    const-string/jumbo v1, "draggingFactor"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v0, 0x12c

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->wasChangingWeight:Z

    if-eqz v2, :cond_1

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    const/high16 v3, 0x42960000    # 75.0f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    :cond_1
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDraggingFactor(F)V

    goto :goto_0
.end method

.method private setDraggingFactor(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->invalidate()V

    return-void
.end method


# virtual methods
.method public colorForLocation(F)I
    .locals 5

    const/4 v1, -0x1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    sget-object v1, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    sget-object v2, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    array-length v2, v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    aget v2, v2, v0

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    :goto_2
    sget-object v2, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    aget v2, v2, v1

    sget-object v3, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    aget v1, v3, v1

    sget-object v3, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    aget v3, v3, v0

    sget-object v4, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    aget v0, v4, v0

    sub-float v4, p1, v2

    sub-float v2, v3, v2

    div-float v2, v4, v2

    invoke-direct {p0, v1, v0, v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interpolateColors(IIF)I

    move-result v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public getDraggingFactor()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    return v0
.end method

.method public getSettingsButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 4

    new-instance v0, Lorg/telegram/ui/Components/Paint/Swatch;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->colorForLocation(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Paint/Swatch;-><init>(IFF)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    const/high16 v2, 0x433e0000    # 190.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    :goto_0
    sub-float v0, v1, v0

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    add-float/2addr v3, v7

    mul-float/2addr v3, v9

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int/2addr v2, v1

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    add-float/2addr v3, v7

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->draggingFactor:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    sub-int v8, p4, p2

    sub-int v9, p5, p3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v10, v0, v1

    iget-object v11, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->gradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v10

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->COLORS:[I

    sget-object v6, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->LOCATIONS:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v8, v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    add-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v8, v1

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    if-nez v4, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    if-eq v4, v1, :cond_3

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onFinishedColorPicking()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "paint"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "last_color_location"

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->wasChangingWeight:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDragging(ZZ)V

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    if-nez v0, :cond_7

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->interacting:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onBeganColorPicking()V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v0, v3, v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setLocation(F)V

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setDragging(ZZ)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_8

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->changingWeight:Z

    neg-float v0, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x433e0000    # 190.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setWeight(F)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;->onColorValueChanged()V

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->delegate:Lorg/telegram/ui/Components/Paint/Views/ColorPicker$ColorPickerDelegate;

    return-void
.end method

.method public setLocation(F)V
    .locals 8

    const/4 v7, 0x2

    const v6, 0x3f6b851f    # 0.92f

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->location:F

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->colorForLocation(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    aget v2, v1, v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    aget v2, v1, v7

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    aget v1, v1, v7

    sub-float/2addr v1, v6

    const v2, 0x3da3d70a    # 0.08f

    div-float/2addr v1, v2

    const v2, 0x3e6147ae    # 0.22f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->invalidate()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->swatchStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setSettingsButtonImage(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V
    .locals 1

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->colorLocation:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setLocation(F)V

    iget v0, p1, Lorg/telegram/ui/Components/Paint/Swatch;->brushWeight:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setWeight(F)V

    return-void
.end method

.method public setWeight(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->weight:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->invalidate()V

    return-void
.end method
