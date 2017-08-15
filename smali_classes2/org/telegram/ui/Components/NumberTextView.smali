.class public Lorg/telegram/ui/Components/NumberTextView;
.super Landroid/view/View;
.source "NumberTextView.java"


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private currentNumber:I

.field private letters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private oldLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    iput v1, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/NumberTextView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/NumberTextView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/16 v11, 0xff

    const/4 v3, 0x0

    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;

    :goto_3
    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    if-eqz v1, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    sub-float/2addr v6, v9

    mul-float/2addr v6, v4

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v0, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    sub-float v7, v9, v7

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    mul-float/2addr v6, v4

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    :goto_4
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v0, :cond_b

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    :goto_5
    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_4

    :cond_6
    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_a

    if-eqz v1, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    neg-float v7, v7

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    add-float/2addr v6, v9

    mul-float/2addr v6, v4

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    if-eqz v0, :cond_1

    add-int/lit8 v6, v5, -0x1

    if-eq v2, v6, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget v7, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    add-float/2addr v7, v9

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAlpha(I)V

    iget v6, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    mul-float/2addr v6, v4

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public setNumber(IZ)V
    .locals 12

    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    if-le p1, v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    const/4 v0, 0x0

    move v9, v0

    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_5

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v11, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_3

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v10, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v1, "progress"

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz v8, :cond_7

    const/high16 v0, -0x40800000    # -1.0f

    :goto_5
    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/telegram/ui/Components/NumberTextView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/NumberTextView$1;-><init>(Lorg/telegram/ui/Components/NumberTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->invalidate()V

    goto/16 :goto_0

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_5
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/NumberTextView;->progress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->invalidate()V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberTextView;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->oldLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberTextView;->letters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lorg/telegram/ui/Components/NumberTextView;->currentNumber:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    return-void
.end method
