.class public Lorg/telegram/ui/Components/Crop/CropRotationWheel;
.super Landroid/widget/FrameLayout;
.source "CropRotationWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;
    }
.end annotation


# static fields
.field private static final DELTA_ANGLE:I = 0x5

.field private static final MAX_ANGLE:I = 0x2d


# instance fields
.field private aspectRatioButton:Landroid/widget/ImageView;

.field private bluePaint:Landroid/graphics/Paint;

.field private degreesLabel:Landroid/widget/TextView;

.field private prevX:F

.field protected rotation:F

.field private rotation90Button:Landroid/widget/ImageView;

.field private rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

.field private tempRect:Landroid/graphics/RectF;

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    const v1, -0xae420d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    const v1, 0x7f02027d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropRotationWheel$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$1;-><init>(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    const/16 v1, 0x46

    const/16 v2, 0x40

    const/16 v3, 0x13

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    const v1, 0x7f020285

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/Crop/CropRotationWheel$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$2;-><init>(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation90Button:Landroid/widget/ImageView;

    const/16 v1, 0x46

    const/16 v2, 0x40

    const/16 v3, 0x15

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesLabel:Landroid/widget/TextView;

    const/16 v1, 0x31

    invoke-static {v5, v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setWillNotDraw(Z)V

    invoke-virtual {p0, v4, v7}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Crop/CropRotationWheel;)Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    return-object v0
.end method


# virtual methods
.method protected drawLine(Landroid/graphics/Canvas;IFIIZLandroid/graphics/Paint;)V
    .locals 6

    int-to-float v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    mul-int/lit8 v2, p2, 0x5

    int-to-float v2, v2

    add-float/2addr v2, p3

    sub-float/2addr v1, v2

    int-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    div-int/lit8 v2, p4, 0x2

    add-int v4, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v0

    sub-float v0, v3, v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p6, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz p6, :cond_0

    const/4 v0, 0x4

    move v3, v0

    :goto_1
    if-eqz p6, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_2
    div-int/lit8 v1, v3, 0x2

    sub-int v1, v4, v1

    int-to-float v1, v1

    sub-int v2, p5, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int/2addr v0, p5

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    move v3, v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_2

    :cond_2
    move-object v5, p7

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    rem-float v5, v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v16, v0

    const/4 v4, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v4, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    if-lt v4, v0, :cond_0

    if-nez v4, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, v5, v2

    if-gez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    :cond_1
    move/from16 v0, v16

    if-eq v4, v0, :cond_2

    if-nez v4, :cond_4

    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    :cond_2
    const/4 v8, 0x1

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->drawLine(Landroid/graphics/Canvas;IFIIZLandroid/graphics/Paint;)V

    if-eqz v4, :cond_3

    neg-int v10, v4

    move/from16 v0, v16

    if-le v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    :goto_2
    add-int/lit8 v2, v16, 0x1

    if-ne v10, v2, :cond_6

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v15}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->drawLine(Landroid/graphics/Canvas;IFIIZLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->whitePaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x40200000    # 2.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v6, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v7, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x40200000    # 2.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->tempRect:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->bluePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    if-nez v0, :cond_1

    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->prevX:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    invoke-interface {v0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->onStart()V

    :cond_0
    :goto_0
    return v8

    :cond_1
    if-eq v0, v8, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    iget v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->onEnd(F)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->prevX:F

    sub-float/2addr v0, v1

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v3

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    const-wide v6, 0x3ffa666660000000L    # 1.649999976158142

    div-double/2addr v4, v6

    double-to-float v0, v4

    add-float/2addr v0, v2

    const/high16 v2, -0x3dcc0000    # -45.0f

    const/high16 v3, 0x42340000    # 45.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    iget v2, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;->onChange(F)V

    :cond_5
    iput v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->prevX:F

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->setRotation(FZ)V

    return-void
.end method

.method public setAspectLock(Z)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f02027e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const v0, 0x7f02027d

    goto :goto_0
.end method

.method public setFreeform(Z)V
    .locals 2

    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->aspectRatioButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setListener(Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotationListener:Lorg/telegram/ui/Components/Crop/CropRotationWheel$RotationWheelListener;

    return-void
.end method

.method public setRotation(FZ)V
    .locals 6

    iput p1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    iget v0, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->rotation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fb95810624dd2f2L    # 0.099

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->degreesLabel:Landroid/widget/TextView;

    const-string/jumbo v2, "%.1f\u00ba"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Crop/CropRotationWheel;->invalidate()V

    return-void
.end method
