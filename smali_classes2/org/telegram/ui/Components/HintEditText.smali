.class public Lorg/telegram/ui/Components/HintEditText;
.super Landroid/widget/EditText;
.source "HintEditText.java"


# instance fields
.field private hintText:Ljava/lang/String;

.field private numberSize:F

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field private spaceSize:F

.field private textOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/HintEditText;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/HintEditText;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/telegram/ui/Components/HintEditText;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getHintText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget v1, p0, Lorg/telegram/ui/Components/HintEditText;->textOffset:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/HintEditText;->spaceSize:F

    add-float/2addr v1, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/HintEditText;->rect:Landroid/graphics/Rect;

    float-to-int v4, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Components/HintEditText;->numberSize:F

    add-float/2addr v5, v1

    float-to-int v5, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lorg/telegram/ui/Components/HintEditText;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/Components/HintEditText;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v3, p0, Lorg/telegram/ui/Components/HintEditText;->numberSize:F

    add-float/2addr v1, v3

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    return-void
.end method

.method public onTextChange()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/HintEditText;->textOffset:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/HintEditText;->spaceSize:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/HintEditText;->numberSize:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
