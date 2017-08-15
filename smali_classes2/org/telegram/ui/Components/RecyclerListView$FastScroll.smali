.class Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
.super Landroid/view/View;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastScroll"
.end annotation


# instance fields
.field private bubbleProgress:F

.field private colors:[I

.field private currentLetter:Ljava/lang/String;

.field private lastUpdateTime:J

.field private lastY:F

.field private letterLayout:Landroid/text/StaticLayout;

.field private letterPaint:Landroid/text/TextPaint;

.field private oldLetterLayout:Landroid/text/StaticLayout;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pressed:Z

.field private progress:F

.field private radii:[F

.field private rect:Landroid/graphics/RectF;

.field private scrollX:I

.field private startDy:F

.field private textX:F

.field private textY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v1, 0x1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    new-array v0, v3, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    return-void

    :cond_1
    const/high16 v0, 0x42ea0000    # 117.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->updateColors()V

    return-void
.end method

.method private getCurrentLetter()V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x42b00000    # 88.0f

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getPositionForScrollProgress(F)I

    move-result v2

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getLetter(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    :cond_0
    iput-object v10, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->currentLetter:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const/16 v3, 0x3e8

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    iput-object v10, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    :goto_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    goto :goto_0

    :cond_3
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    div-float/2addr v0, v9

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    goto :goto_1
.end method

.method private setProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    return-void
.end method

.method private updateColors()V
    .locals 5

    const-string/jumbo v0, "fastScrollInactive"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "fastScrollActive"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterPaint:Landroid/text/TextPaint;

    const-string/jumbo v3, "fastScrollText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v3, 0x4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    aput v0, v2, v3

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v2, 0x5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    # getter for: Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$000(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x41e80000    # 29.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    aget v3, v3, v12

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    aget v5, v5, v12

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->colors:[I

    const/4 v8, 0x4

    aget v7, v7, v8

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x42280000    # 42.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v4, v0, v2

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-gt v0, v2, :cond_11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_0
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_b

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    :goto_1
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    aget v5, v5, v12

    cmpl-float v5, v5, v3

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v6, 0x6

    aget v5, v5, v6

    cmpl-float v5, v5, v0

    if-nez v5, :cond_2

    :cond_1
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    cmpl-float v5, v5, v3

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_3

    :cond_2
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v7, 0x1

    aput v3, v6, v7

    aput v3, v5, v12

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v5, 0x6

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v7, 0x7

    aput v0, v6, v7

    aput v0, v3, v5

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_d

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_3
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_e

    const/high16 v3, 0x42c40000    # 98.0f

    :goto_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x42b00000    # 88.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v0, v1, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    :goto_5
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    iget v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    iget v6, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->scrollX:I

    int-to-float v6, v6

    sub-int v2, v4, v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v5, v6, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textX:F

    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->textY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpg-float v0, v0, v9

    if-ltz v0, :cond_7

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_a

    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    sub-long v2, v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_8

    const-wide/16 v6, 0x11

    cmp-long v0, v2, v6

    if-lez v0, :cond_9

    :cond_8
    const-wide/16 v2, 0x11

    :cond_9
    iput-wide v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->letterLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_a

    iput v9, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    :cond_a
    :goto_6
    return-void

    :cond_b
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v0, v3

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    sub-float v3, v9, v3

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v8, 0x3

    aput v3, v7, v8

    aput v3, v5, v6

    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v5, 0x4

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->radii:[F

    const/4 v7, 0x5

    aput v0, v6, v7

    aput v0, v3, v5

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_3

    :cond_e
    const/high16 v3, 0x42b00000    # 88.0f

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->oldLetterLayout:Landroid/text/StaticLayout;

    goto/16 :goto_5

    :cond_10
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    long-to-float v2, v2

    const/high16 v3, 0x42f00000    # 120.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->bubbleProgress:F

    goto :goto_6

    :cond_11
    move v2, v0

    move v0, v1

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    const/high16 v0, 0x43040000    # 132.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x42580000    # 54.0f

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    mul-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_2

    :cond_0
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_1

    const/high16 v2, 0x42d60000    # 107.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    iput-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    move v0, v3

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v1

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->startDy:F

    add-float/2addr v1, v4

    cmpg-float v4, v2, v0

    if-gez v4, :cond_6

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    sub-float v1, v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastY:F

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getMeasuredHeight()I

    move-result v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_7

    iput v5, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    :cond_5
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->getCurrentLetter()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    move v0, v3

    goto/16 :goto_0

    :cond_6
    cmpl-float v0, v2, v1

    if-lez v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5

    iput v6, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->progress:F

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->pressed:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->lastUpdateTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->invalidate()V

    move v0, v3

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
