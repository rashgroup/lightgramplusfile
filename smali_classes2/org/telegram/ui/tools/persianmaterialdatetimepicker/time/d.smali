.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;
.super Landroid/view/View;
.source "RadialTextsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d$a;
    }
.end annotation


# instance fields
.field private A:[F

.field private B:[F

.field private C:[F

.field private D:F

.field private E:F

.field private F:F

.field private G:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d$a;

.field a:Landroid/animation/ObjectAnimator;

.field b:Landroid/animation/ObjectAnimator;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Landroid/graphics/Typeface;

.field private i:Landroid/graphics/Typeface;

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:F

.field private w:Z

.field private x:F

.field private y:F

.field private z:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->f:Z

    return-void
.end method

.method private a()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v0, 0x3e4ccccd    # 0.2f

    const/16 v1, 0x1f4

    invoke-static {v9, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->E:F

    invoke-static {v0, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->F:F

    invoke-static {v8, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const-string/jumbo v5, "animationRadiusMultiplier"

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v2, v6, v10

    aput-object v3, v6, v11

    aput-object v4, v6, v12

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v9, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    invoke-static {v8, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    new-array v6, v12, [Landroid/animation/Keyframe;

    aput-object v3, v6, v10

    aput-object v4, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v10

    aput-object v3, v4, v11

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->G:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d$a;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/high16 v2, 0x3e800000    # 0.25f

    add-float v3, v8, v2

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    sub-float v2, v8, v1

    mul-float/2addr v0, v2

    sub-float v0, v8, v0

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->F:F

    invoke-static {v9, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->F:F

    invoke-static {v1, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->E:F

    invoke-static {v0, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const-string/jumbo v6, "animationRadiusMultiplier"

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v2, v7, v10

    aput-object v4, v7, v11

    aput-object v0, v7, v12

    const/4 v0, 0x3

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    invoke-static {v1, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v2, v6, v10

    aput-object v1, v6, v11

    aput-object v4, v6, v12

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v10

    aput-object v1, v2, v11

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->b:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->b:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->G:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d$a;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private a(FFFF[F[F)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v4

    div-float v1, p1, v4

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float v2, p3, v2

    sub-float v3, v2, p1

    aput v3, p5, v5

    sub-float v3, p2, p1

    aput v3, p6, v5

    sub-float v3, v2, v0

    aput v3, p5, v6

    sub-float v3, p2, v0

    aput v3, p6, v6

    sub-float v3, v2, v1

    aput v3, p5, v7

    sub-float v3, p2, v1

    aput v3, p6, v7

    aput v2, p5, v8

    aput p2, p6, v8

    const/4 v3, 0x4

    add-float v4, v2, v1

    aput v4, p5, v3

    const/4 v3, 0x4

    add-float/2addr v1, p2

    aput v1, p6, v3

    const/4 v1, 0x5

    add-float v3, v2, v0

    aput v3, p5, v1

    const/4 v1, 0x5

    add-float/2addr v0, p2

    aput v0, p6, v1

    const/4 v0, 0x6

    add-float v1, v2, p1

    aput v1, p5, v0

    const/4 v0, 0x6

    add-float v1, p2, p1

    aput v1, p6, v0

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-static {p4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a([Ljava/lang/String;)[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p4, v0

    const/4 v0, 0x3

    aget v2, p5, v0

    const/4 v0, 0x0

    aget v3, p6, v0

    const/4 v0, 0x0

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    aget-object v1, p4, v0

    const/4 v0, 0x4

    aget v2, p5, v0

    const/4 v0, 0x1

    aget v3, p6, v0

    const/4 v0, 0x1

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    aget-object v1, p4, v0

    const/4 v0, 0x5

    aget v2, p5, v0

    const/4 v0, 0x2

    aget v3, p6, v0

    const/4 v0, 0x2

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x3

    aget-object v1, p4, v0

    const/4 v0, 0x6

    aget v2, p5, v0

    const/4 v0, 0x3

    aget v3, p6, v0

    const/4 v0, 0x3

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x4

    aget-object v1, p4, v0

    const/4 v0, 0x5

    aget v2, p5, v0

    const/4 v0, 0x4

    aget v3, p6, v0

    const/4 v0, 0x4

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x5

    aget-object v1, p4, v0

    const/4 v0, 0x4

    aget v2, p5, v0

    const/4 v0, 0x5

    aget v3, p6, v0

    const/4 v0, 0x5

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_5
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x6

    aget-object v1, p4, v0

    const/4 v0, 0x3

    aget v2, p5, v0

    const/4 v0, 0x6

    aget v3, p6, v0

    const/4 v0, 0x6

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_6
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x7

    aget-object v1, p4, v0

    const/4 v0, 0x2

    aget v2, p5, v0

    const/4 v0, 0x5

    aget v3, p6, v0

    const/4 v0, 0x7

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_7
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0x8

    aget-object v1, p4, v0

    const/4 v0, 0x1

    aget v2, p5, v0

    const/4 v0, 0x4

    aget v3, p6, v0

    const/16 v0, 0x8

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_8
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0x9

    aget-object v1, p4, v0

    const/4 v0, 0x0

    aget v2, p5, v0

    const/4 v0, 0x3

    aget v3, p6, v0

    const/16 v0, 0x9

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_9
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0xa

    aget-object v1, p4, v0

    const/4 v0, 0x1

    aget v2, p5, v0

    const/4 v0, 0x2

    aget v3, p6, v0

    const/16 v0, 0xa

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_a
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v0, 0xb

    aget-object v1, p4, v0

    const/4 v0, 0x2

    aget v2, p5, v0

    const/4 v0, 0x1

    aget v3, p6, v0

    const/16 v0, 0xb

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    :goto_b
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    goto :goto_b
.end method


# virtual methods
.method a(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f0f0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_0
    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x7

    const/4 v1, 0x1

    iget-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->f:Z

    if-eqz v3, :cond_0

    const-string/jumbo v0, "RadialTextsView"

    const-string/jumbo v1, "This RadialTextsView may only be initialized once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const v3, 0x7f0f0071

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x7f08088c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->h:Landroid/graphics/Typeface;

    const v3, 0x7f08088d

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->i:Landroid/graphics/Typeface;

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v3, 0x7f0f0075

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->j:[Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->k:[Ljava/lang/String;

    iput-boolean p4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->l:Z

    if-eqz p3, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->m:Z

    if-eqz p4, :cond_3

    const v0, 0x7f0808db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->n:F

    :goto_1
    new-array v0, v5, [F

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->z:[F

    new-array v0, v5, [F

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->A:[F

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->m:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0808de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->p:F

    const v0, 0x7f0808e2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->r:F

    const v0, 0x7f0808dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->q:F

    const v0, 0x7f0808e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->s:F

    new-array v0, v5, [F

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->B:[F

    new-array v0, v5, [F

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->C:[F

    :goto_2
    iput v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->D:F

    const v3, 0x3d4ccccd    # 0.05f

    if-eqz p5, :cond_5

    move v0, v2

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->E:F

    const v0, 0x3e99999a    # 0.3f

    if-eqz p5, :cond_2

    move v2, v1

    :cond_2
    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->F:F

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d$a;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d$1;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->G:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d$a;

    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->w:Z

    iput-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->f:Z

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f0808da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->n:F

    const v0, 0x7f0808d9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->o:F

    goto/16 :goto_1

    :cond_4
    const v0, 0x7f0808dd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->p:F

    const v0, 0x7f0808e1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->r:F

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "RadialTextsView"

    const-string/jumbo v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->b:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "RadialTextsView"

    const-string/jumbo v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->b:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->f:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->e:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->t:I

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->u:I

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->t:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->u:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->n:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->v:F

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->l:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->v:F

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->o:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->u:I

    int-to-double v2, v1

    float-to-double v0, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->u:I

    :cond_2
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->v:F

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->r:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->x:F

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->m:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->v:F

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->s:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->y:F

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a()V

    iput-boolean v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->w:Z

    iput-boolean v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->e:Z

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->w:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->v:F

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->p:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->D:F

    mul-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->t:I

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->u:I

    int-to-float v3, v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->x:F

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->z:[F

    iget-object v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->A:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a(FFFF[F[F)V

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->m:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->v:F

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->q:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->D:F

    mul-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->t:I

    int-to-float v2, v0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->u:I

    int-to-float v3, v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->y:F

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->B:[F

    iget-object v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->C:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a(FFFF[F[F)V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->w:Z

    :cond_6
    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->x:F

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->h:Landroid/graphics/Typeface;

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->j:[Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->A:[F

    iget-object v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->z:[F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->m:Z

    if-eqz v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->y:F

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->i:Landroid/graphics/Typeface;

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->k:[Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->C:[F

    iget-object v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->B:[F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->a(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    goto/16 :goto_0
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->D:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->w:Z

    return-void
.end method

.method protected setSelection(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/d;->g:I

    return-void
.end method
