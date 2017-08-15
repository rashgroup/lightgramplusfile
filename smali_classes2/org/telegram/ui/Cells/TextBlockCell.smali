.class public Lorg/telegram/ui/Cells/TextBlockCell;
.super Landroid/widget/FrameLayout;
.source "TextBlockCell.java"


# instance fields
.field private needDivider:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x5

    const/4 v5, 0x3

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_1

    :goto_1
    or-int/lit8 v2, v2, 0x30

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextBlockCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->needDivider:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextBlockCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/TextBlockCell;->needDivider:Z

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextBlockCell;->setWillNotDraw(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextBlockCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
