.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;
.super Landroid/view/View;
.source "RadialSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;

.field private v:I

.field private w:D

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->b:Z

    return-void
.end method


# virtual methods
.method public a(FFZ[Ljava/lang/Boolean;)I
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->c:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->n:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->n:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->l:Z

    if-eqz v3, :cond_6

    if-eqz p3, :cond_4

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->f:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-double v6, v0

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-int v0, v6

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    int-to-float v3, v3

    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->g:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    int-to-double v6, v3

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-int v3, v6

    if-gt v0, v3, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p4, v2

    :cond_2
    :goto_2
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-int v3, v4

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->n:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_3
    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_8

    :goto_4
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    rsub-int/lit8 v0, v3, 0x5a

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    int-to-float v3, v3

    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->f:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->t:I

    sub-int/2addr v3, v6

    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->g:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->t:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->g:F

    iget v9, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->f:F

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-double v8, v3

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_5

    int-to-double v8, v7

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p4, v2

    goto :goto_2

    :cond_5
    int-to-double v8, v6

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_0

    int-to-double v6, v7

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p4, v2

    goto :goto_2

    :cond_6
    if-nez p3, :cond_2

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->s:I

    int-to-double v6, v3

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-int v3, v6

    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->h:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-le v3, v6, :cond_2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    add-int/lit8 v0, v3, 0x5a

    goto/16 :goto_0

    :cond_a
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    rsub-int v0, v3, 0x10e

    goto/16 :goto_0

    :cond_b
    if-nez v0, :cond_c

    if-eqz v1, :cond_c

    add-int/lit16 v0, v3, 0x10e

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto/16 :goto_0
.end method

.method public a(IZZ)V
    .locals 4

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->v:I

    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->w:D

    iput-boolean p3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->x:Z

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->l:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->f:F

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->h:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->g:F

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->h:F

    goto :goto_0
.end method

.method a(Landroid/content/Context;Z)V
    .locals 3

    const/16 v2, 0xff

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f0f0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->m:I

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_0
    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->m:I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ZZZIZ)V
    .locals 6

    const/4 v1, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RadialSelectorView"

    const-string/jumbo v1, "This RadialSelectorView may only be initialized once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v3, 0xff

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->m:I

    iput-boolean p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->k:Z

    if-eqz p2, :cond_2

    const v3, 0x7f0808db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->d:F

    :goto_1
    iput-boolean p3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->l:Z

    if-eqz p3, :cond_3

    const v3, 0x7f0808dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->f:F

    const v3, 0x7f0808de

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->g:F

    :goto_2
    const v3, 0x7f0808df

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->i:F

    iput v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->j:F

    const v3, 0x3d4ccccd    # 0.05f

    if-eqz p4, :cond_4

    move v0, v1

    :goto_3
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->q:F

    const v0, 0x3e99999a    # 0.3f

    if-eqz p4, :cond_1

    move v1, v2

    :cond_1
    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->r:F

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$1;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->u:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;

    const/4 v0, 0x0

    invoke-virtual {p0, p5, p6, v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a(IZZ)V

    iput-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->b:Z

    goto :goto_0

    :cond_2
    const v3, 0x7f0808da

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->d:F

    const v3, 0x7f0808d9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->e:F

    goto :goto_1

    :cond_3
    const v3, 0x7f0808dd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->h:F

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->c:Z

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "RadialSelectorView"

    const-string/jumbo v1, "RadialSelectorView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    const/16 v1, 0x1f4

    invoke-static {v7, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->q:F

    invoke-static {v0, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->r:F

    invoke-static {v6, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const-string/jumbo v4, "animationRadiusMultiplier"

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Keyframe;

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    aput-object v3, v5, v10

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v7, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    new-array v5, v10, [Landroid/animation/Keyframe;

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v8

    aput-object v2, v3, v9

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->u:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->c:Z

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "RadialSelectorView"

    const-string/jumbo v1, "RadialSelectorView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    const/16 v1, 0x1f4

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

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->r:F

    invoke-static {v9, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->r:F

    invoke-static {v1, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->q:F

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

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->u:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c$a;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/16 v8, 0xff

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->c:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->n:I

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->n:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->k:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    int-to-double v4, v1

    int-to-double v0, v0

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v6

    sub-double v0, v4, v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    :cond_2
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->t:I

    iput-boolean v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->c:Z

    :cond_3
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->p:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->h:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->j:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->s:I

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->n:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->s:I

    int-to-double v4, v1

    iget-wide v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->w:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v1, v4

    add-int/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->s:I

    int-to-double v4, v3

    iget-wide v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->w:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->m:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v3, v1

    int-to-float v4, v0

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->t:I

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->x:Z

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->v:I

    rem-int/lit8 v4, v4, 0x1e

    if-eqz v4, :cond_4

    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->t:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v3, v1

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->n:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->s:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->t:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->n:I

    int-to-double v2, v0

    iget-wide v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->w:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->o:I

    int-to-double v4, v0

    iget-wide v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->w:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    sub-int v0, v2, v0

    move v3, v1

    goto :goto_2
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/c;->j:F

    return-void
.end method
