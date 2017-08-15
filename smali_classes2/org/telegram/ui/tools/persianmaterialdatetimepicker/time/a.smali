.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;
.super Landroid/view/View;
.source "AmPmCirclesView.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:F

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->l:Z

    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 4

    const/4 v0, -0x1

    iget-boolean v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->m:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->q:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->q:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->o:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->o:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    int-to-float v3, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    if-gt v2, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->p:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->p:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 4

    const v2, 0x7f0f0075

    const/4 v3, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->l:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AmPmCirclesView"

    const-string/jumbo v1, "AmPmCirclesView may only be initialized once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->d:I

    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->g:I

    const v1, 0x7f0f0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->c:I

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->e:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->f:I

    const/16 v1, 0xff

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->b:I

    const v1, 0x7f08088d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v1, 0x7f0808da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->h:F

    const v1, 0x7f0808d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->i:F

    const-string/jumbo v0, "\u0642\u0628\u0644\u200c\u0627\u0632\u0638\u0647\u0631"

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->j:Ljava/lang/String;

    const-string/jumbo v0, "\u0628\u0639\u062f\u0627\u0632\u0638\u0647\u0631"

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->k:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->setAmOrPm(I)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->s:I

    iput-boolean v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->l:Z

    goto :goto_0
.end method

.method a(Landroid/content/Context;Z)V
    .locals 4

    const v3, 0x7f0f0075

    const/16 v2, 0xff

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->d:I

    const v1, 0x7f0f0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->g:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->e:I

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->b:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->d:I

    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->g:I

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->e:I

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->b:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/16 v1, 0xff

    const/4 v10, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->l:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->m:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->h:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v3

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->i:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    int-to-double v4, v2

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    int-to-double v6, v2

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->q:I

    sub-int v2, v0, v3

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->o:I

    add-int/2addr v0, v3

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->p:I

    iput-boolean v10, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->m:Z

    :cond_2
    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->d:I

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->e:I

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->d:I

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->e:I

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->r:I

    if-nez v3, :cond_4

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->g:I

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->b:I

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->f:I

    :goto_1
    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->s:I

    if-nez v6, :cond_5

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->c:I

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->b:I

    :cond_3
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->o:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->q:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->p:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->q:I

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->n:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->q:I

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->j:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->o:I

    int-to-float v3, v3

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->k:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->p:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->r:I

    if-ne v3, v10, :cond_6

    iget v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->g:I

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->b:I

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->f:I

    move v11, v2

    move v2, v3

    move v3, v4

    move v4, v1

    move v1, v11

    goto :goto_1

    :cond_5
    iget v6, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->s:I

    if-ne v6, v10, :cond_3

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->c:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->b:I

    goto :goto_2

    :cond_6
    move v3, v4

    move v4, v1

    goto/16 :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->r:I

    return-void
.end method

.method public setAmOrPmPressed(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/a;->s:I

    return-void
.end method
