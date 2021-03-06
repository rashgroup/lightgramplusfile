.class final Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "SubtitlePainter"


# instance fields
.field private applyEmbeddedStyles:Z

.field private backgroundColor:I

.field private bottomPaddingFraction:F

.field private final cornerRadius:F

.field private cueLine:F

.field private cueLineAnchor:I

.field private cueLineType:I

.field private cuePosition:F

.field private cuePositionAnchor:I

.field private cueSize:F

.field private cueText:Ljava/lang/CharSequence;

.field private cueTextAlignment:Landroid/text/Layout$Alignment;

.field private edgeColor:I

.field private edgeType:I

.field private foregroundColor:I

.field private final lineBounds:Landroid/graphics/RectF;

.field private final outlineWidth:F

.field private final paint:Landroid/graphics/Paint;

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizePx:F

.field private textTop:I

.field private windowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    int-to-float v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    int-to-float v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawLayout(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLeft:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    neg-int v0, v0

    int-to-float v1, v0

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9, v8}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    move v1, v0

    move v0, v8

    :goto_1
    if-ge v0, v3, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v5

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    int-to-float v11, v11

    sub-float/2addr v5, v11

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v5

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    int-to-float v11, v11

    add-float/2addr v5, v11

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    iput v1, v4, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->lineBounds:Landroid/graphics/RectF;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    iget v11, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cornerRadius:F

    iget-object v12, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2, v2, v2, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_5
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    if-eq v0, v13, :cond_6

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    if-ne v0, v13, :cond_7

    move v3, v7

    :goto_3
    if-eqz v3, :cond_8

    move v1, v6

    :goto_4
    if-eqz v3, :cond_9

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    :goto_5
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    neg-float v6, v3

    neg-float v7, v3

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {v9, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    invoke-virtual {v1, v4, v3, v3, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_7
    move v3, v8

    goto :goto_3

    :cond_8
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    move v1, v0

    goto :goto_4

    :cond_9
    move v0, v6

    goto :goto_5
.end method


# virtual methods
.method public draw(Lorg/telegram/messenger/exoplayer2/text/Cue;ZLorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;FFLandroid/graphics/Canvas;IIII)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->line:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineType:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->position:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->size:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    move/from16 v0, p2

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    move-object/from16 v0, p3

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    cmpl-float v2, v2, p4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v2, v2, p5

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    move/from16 v0, p7

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v0, p8

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    move/from16 v0, p9

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    move/from16 v0, p10

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->line:F

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineType:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->lineAnchor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->position:F

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->positionAnchor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/Cue;->size:F

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->applyEmbeddedStyles:Z

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->foregroundColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->backgroundColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->windowColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->windowColor:I

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeType:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeType:I

    move-object/from16 v0, p3

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->edgeColor:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textSizePx:F

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int v10, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int v11, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float v2, v2, p4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v12, v2

    mul-int/lit8 v2, v12, 0x2

    sub-int v5, v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    int-to-float v2, v5

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v2, v4

    float-to-int v5, v2

    :cond_3
    if-gtz v5, :cond_4

    const-string/jumbo v2, "SubtitlePainter"

    const-string/jumbo v3, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_1
    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v4

    move/from16 v4, v16

    :goto_2
    if-ge v4, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v7

    float-to-double v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v7, v14

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v7

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const/4 v7, 0x1

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_11

    if-ge v2, v5, :cond_11

    :goto_3
    mul-int/lit8 v2, v12, 0x2

    add-int/2addr v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_b

    int-to-float v2, v10

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_a

    sub-int/2addr v2, v5

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v2, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentRight:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v10, v4

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    if-nez v4, :cond_c

    int-to-float v4, v11

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v4, v5

    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_e

    sub-int/2addr v4, v8

    :cond_8
    :goto_7
    add-int v5, v4, v8

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-le v5, v7, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int/2addr v4, v8

    :cond_9
    :goto_8
    move v11, v4

    :goto_9
    sub-int v5, v2, v10

    new-instance v2, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLeft:I

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textTop:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_7

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_b
    sub-int v2, v10, v5

    div-int/lit8 v4, v2, 0x2

    add-int v2, v4, v5

    move v10, v4

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v4, v5

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLine:F

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    add-int/2addr v4, v5

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_8

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x2

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    if-ge v4, v5, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentTop:I

    goto/16 :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int/2addr v4, v8

    int-to-float v5, v11

    mul-float v5, v5, p5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    move v11, v4

    goto/16 :goto_9

    :cond_11
    move v5, v2

    goto/16 :goto_3
.end method
