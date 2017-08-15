.class public Lorg/telegram/ui/Components/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static END_TENSION:F = 0.0f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    sput v0, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    sget v0, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    sub-float v0, v1, v0

    sput v0, Lorg/telegram/ui/Components/Scroller;->END_TENSION:F

    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-gt v4, v12, :cond_2

    int-to-float v0, v4

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v5, v0, v3

    move v0, v1

    move v3, v2

    :goto_1
    sub-float v2, v0, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v2, v3

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v2

    sub-float v7, v1, v2

    mul-float/2addr v6, v7

    sub-float v7, v1, v2

    sget v8, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    mul-float/2addr v7, v8

    sget v8, Lorg/telegram/ui/Components/Scroller;->END_TENSION:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v6

    mul-float v8, v2, v2

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    sub-float v8, v7, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    mul-float v0, v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    sget-object v2, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    aput v0, v2, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v2, v3

    goto :goto_0

    :cond_0
    cmpl-float v6, v7, v5

    if-lez v6, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    aput v1, v0, v12

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lorg/telegram/ui/Components/Scroller;->sViscousFluidScale:F

    sput v1, Lorg/telegram/ui/Components/Scroller;->sViscousFluidNormalize:F

    invoke-static {v1}, Lorg/telegram/ui/Components/Scroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lorg/telegram/ui/Components/Scroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mPpi:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeceleration:F

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Scroller;->mFlywheel:Z

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    const v0, 0x43c10b3d

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    sget v0, Lorg/telegram/ui/Components/Scroller;->sViscousFluidScale:F

    mul-float/2addr v0, p0

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    :goto_0
    sget v1, Lorg/telegram/ui/Components/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    const v1, 0x3ebc5ab2

    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 7

    const/4 v1, 0x1

    const/high16 v6, 0x42c80000    # 100.0f

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mMode:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mDurationReciprocal:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Components/Scroller;->viscousFluid(F)F

    move-result v0

    :goto_2
    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaX:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaY:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    :pswitch_1
    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v2, v6, v0

    float-to-int v2, v2

    int-to-float v3, v2

    div-float/2addr v3, v6

    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    div-float/2addr v4, v6

    sget-object v5, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    aget v5, v5, v2

    sget-object v6, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v6, v2

    sub-float/2addr v0, v3

    sub-float v3, v4, v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v5

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v4, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v4, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mMaxY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mMinY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    if-ne v0, v2, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Scroller;->timePassed()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDurationReciprocal:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 14

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Scroller;->mFlywheel:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Scroller;->getCurrVelocity()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v4, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v5, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v3, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v2

    mul-float/2addr v2, v4

    move/from16 v0, p3

    int-to-float v4, v0

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move/from16 v0, p4

    int-to-float v4, v0

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move/from16 v0, p3

    int-to-float v4, v0

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p3, v0

    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 p4, v0

    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/Scroller;->mMode:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    mul-int v2, p3, p3

    mul-int v3, p4, p4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v4, v2

    iput v4, p0, Lorg/telegram/ui/Components/Scroller;->mVelocity:F

    const/high16 v5, 0x44480000    # 800.0f

    sget v2, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide v2, 0x408f400000000000L    # 1000.0

    sget v8, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    div-double v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    move/from16 v0, p2

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v2

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    float-to-double v4, v5

    sget v8, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    float-to-double v8, v8

    sget v10, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move/from16 v0, p5

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mMinX:I

    move/from16 v0, p6

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mMaxX:I

    move/from16 v0, p7

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mMinY:I

    move/from16 v0, p8

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mMaxY:I

    int-to-float v5, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, p1

    iput v3, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v5, p0, Lorg/telegram/ui/Components/Scroller;->mMaxX:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v5, p0, Lorg/telegram/ui/Components/Scroller;->mMinX:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    int-to-float v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v2, v2, p2

    iput v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    return-void

    :cond_1
    move/from16 v0, p3

    int-to-float v2, v0

    div-float/2addr v2, v4

    move v3, v2

    goto :goto_0

    :cond_2
    move/from16 v0, p4

    int-to-float v2, v0

    div-float/2addr v2, v4

    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mVelocity:F

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 2

    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeceleration:F

    return-void
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mMode:I

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    iput p5, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    iput p2, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    add-int v0, p1, p3

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    add-int v0, p2, p4

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    int-to-float v0, p3

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaX:F

    int-to-float v0, p4

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
