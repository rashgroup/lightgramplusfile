.class public Lorg/telegram/ui/Components/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;,
        Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final STATE_ANGLE:Ljava/lang/String; = "angle"

.field private static final STATE_OLD_COLOR:Ljava/lang/String; = "color"

.field private static final STATE_PARENT:Ljava/lang/String; = "parent"

.field private static final STATE_SHOW_OLD_COLOR:Ljava/lang/String; = "showColor"


# instance fields
.field private mAngle:F

.field private mCenterHaloPaint:Landroid/graphics/Paint;

.field private mCenterNewColor:I

.field private mCenterNewPaint:Landroid/graphics/Paint;

.field private mCenterOldColor:I

.field private mCenterOldPaint:Landroid/graphics/Paint;

.field private mCenterRectangle:Landroid/graphics/RectF;

.field private mColorCenterHaloRadius:I

.field private mColorCenterRadius:I

.field private mColorPointerHaloRadius:I

.field private mColorPointerRadius:I

.field private mColorWheelPaint:Landroid/graphics/Paint;

.field private mColorWheelRadius:I

.field private mColorWheelRectangle:Landroid/graphics/RectF;

.field private mColorWheelThickness:I

.field private mHSV:[F

.field private mPointerColor:Landroid/graphics/Paint;

.field private mPointerHaloPaint:Landroid/graphics/Paint;

.field private mPreferredColorCenterHaloRadius:I

.field private mPreferredColorCenterRadius:I

.field private mPreferredColorWheelRadius:I

.field private mShowCenterOldColor:Z

.field private mSlopX:F

.field private mSlopY:F

.field private mTranslationOffset:F

.field private mUserIsMovingPointer:Z

.field private oldChangedListenerColor:I

.field private oldSelectedListenerColor:I

.field private onColorChangedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;

.field private onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x1
        -0x100
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mHSV:[F

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mHSV:[F

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/Components/ColorPickerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mHSV:[F

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ColorPickerView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private ave(IIF)I
    .locals 1

    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private calculateColor(F)I
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    float-to-double v0, p1

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v2

    double-to-float v0, v0

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    add-float/2addr v0, v5

    :cond_0
    cmpg-float v1, v0, v4

    if-gtz v1, :cond_1

    sget-object v0, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_1
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_2

    sget-object v0, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    sget-object v1, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    sget-object v2, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    aget v2, v2, v1

    sget-object v3, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    add-int/lit8 v1, v1, 0x1

    aget v1, v3, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Lorg/telegram/ui/Components/ColorPickerView;->ave(IIF)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Lorg/telegram/ui/Components/ColorPickerView;->ave(IIF)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lorg/telegram/ui/Components/ColorPickerView;->ave(IIF)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lorg/telegram/ui/Components/ColorPickerView;->ave(IIF)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method

.method private calculatePointerPosition(F)[F
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-double v2, v1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method private colorToAngle(I)F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x0

    aget v0, v0, v1

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 6

    const/high16 v5, -0x1000000

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelThickness:I

    const/high16 v0, 0x42f80000    # 124.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorWheelRadius:I

    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorCenterRadius:I

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterHaloRadius:I

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterHaloRadius:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorCenterHaloRadius:I

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerRadius:I

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    const v0, -0x4036f025

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    new-instance v0, Landroid/graphics/SweepGradient;

    sget-object v1, Lorg/telegram/ui/Components/ColorPickerView;->COLORS:[I

    const/4 v2, 0x0

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerHaloPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerHaloPaint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    return v0
.end method

.method public getOldCenterColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    return v0
.end method

.method public getShowOldCenterColor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->calculatePointerPosition(F)[F

    move-result-object v0

    aget v1, v0, v8

    aget v5, v0, v4

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v1, v0, v8

    aget v0, v0, v4

    iget v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterHaloRadius:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorWheelRadius:I

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v3, v6, :cond_0

    :goto_0
    if-ne v4, v6, :cond_2

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setMeasuredDimension(II)V

    int-to-float v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelThickness:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRectangle:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorCenterRadius:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorWheelRadius:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorCenterHaloRadius:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorWheelRadius:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPreferredColorWheelRadius:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterHaloRadius:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterRectangle:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_0
    if-ne v3, v5, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    if-ne v4, v5, :cond_3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "parent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string/jumbo v0, "angle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    const-string/jumbo v0, "showColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setNewCenterColor(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "parent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "angle"

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v0, "color"

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "showColor"

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ColorPickerView;->mTranslationOffset:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_0
    iget v4, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ColorPickerView;->calculatePointerPosition(F)[F

    move-result-object v4

    aget v5, v4, v0

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_1

    aget v5, v4, v0

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_1

    aget v5, v4, v1

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    aget v5, v4, v1

    iget v6, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorPointerHaloRadius:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_1

    aget v0, v4, v0

    sub-float v0, v2, v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mSlopX:F

    aget v0, v4, v1

    sub-float v0, v3, v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mSlopY:F

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    goto :goto_0

    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    iget v4, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mColorCenterRadius:I

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->getOldCenterColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :pswitch_1
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    if-eqz v4, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mSlopY:F

    sub-float v0, v3, v0

    float-to-double v4, v0

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mSlopX:F

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ColorPickerView;->setNewCenterColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    :pswitch_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mUserIsMovingPointer:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterHaloPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldSelectedListenerColor:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;->onColorSelected(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldSelectedListenerColor:I

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldSelectedListenerColor:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    iget v2, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;->onColorSelected(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldSelectedListenerColor:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPickerView;->colorToAngle(I)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mPointerColor:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mAngle:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPickerView;->calculateColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setNewCenterColor(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewColor:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterNewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    if-nez v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorChangedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldChangedListenerColor:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorChangedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    iput p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->oldChangedListenerColor:I

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOldCenterColor(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldColor:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPickerView;->mCenterOldPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorChangedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public setOnColorSelectedListener(Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->onColorSelectedListener:Lorg/telegram/ui/Components/ColorPickerView$OnColorSelectedListener;

    return-void
.end method

.method public setShowOldCenterColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ColorPickerView;->mShowCenterOldColor:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPickerView;->invalidate()V

    return-void
.end method
