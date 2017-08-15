.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;
.super Landroid/view/View;
.source "CircleView.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:Z

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->c:I

    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->d:I

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->g:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CircleView"

    const-string/jumbo v1, "CircleView may only be initialized once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-boolean p2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->b:Z

    if-eqz p2, :cond_1

    const v1, 0x7f0808db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->e:F

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->g:Z

    goto :goto_0

    :cond_1
    const v1, 0x7f0808da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->e:F

    const v1, 0x7f0808d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->f:F

    goto :goto_1
.end method

.method b(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->c:I

    const v1, 0x7f0f0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->d:I

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0f005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->c:I

    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->d:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->h:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->i:I

    invoke-virtual {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->j:I

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->i:I

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->k:I

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->b:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->k:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->j:I

    int-to-double v2, v1

    int-to-double v0, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->j:I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->h:Z

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->a:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->i:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->j:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->k:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->a:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->i:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->j:I

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/time/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
