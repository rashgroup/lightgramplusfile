.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;
.super Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;
.source "SimpleMonthView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IIIIIIIII)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->x:I

    if-ne v0, p4, :cond_0

    int-to-float v0, p5

    sget v1, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->d:I

    div-int/lit8 v1, v1, 0x3

    sub-int v1, p6, v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->b(III)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->a(III)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->l:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->M:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    const-string/jumbo v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, p5

    int-to-float v2, p6

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->x:I

    if-ne v0, p4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->l:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->I:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->w:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->y:I

    if-ne v0, p4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->l:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->K:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->b(III)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->L:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/date/h;->H:I

    goto :goto_2
.end method
