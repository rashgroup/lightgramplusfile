.class public Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
.super Landroid/widget/EditText;
.source "EditTextOutline.java"


# instance fields
.field private mCache:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/text/TextPaint;

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mUpdateCachedBitmap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeWidth:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeWidth:F

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getPaddingTop()I

    move-result v1

    sub-int v1, v8, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iput-boolean v9, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->getTextSize()F

    move-result v0

    const/high16 v2, 0x41380000    # 11.5f

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v0, v4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeWidth:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->invalidate()V

    return-void
.end method
