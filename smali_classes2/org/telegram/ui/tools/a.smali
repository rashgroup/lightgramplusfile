.class public Lorg/telegram/ui/tools/a;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "Aed.java"


# instance fields
.field a:I

.field final b:Lorg/telegram/ui/tools/d;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/tools/d;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/tools/a;->a:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/tools/a;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/tools/a;->getKeyboardHeight()I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    iget-object v0, v0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/tools/a;->setBottomClip(I)V

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Lorg/telegram/ui/tools/a;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_0

    const/16 v2, 0x33

    :cond_0
    and-int/lit8 v8, v2, 0x70

    and-int/lit8 v2, v2, 0x7

    and-int/lit8 v2, v2, 0x7

    packed-switch v2, :pswitch_data_0

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_2
    sparse-switch v8, :sswitch_data_0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_3
    iget-object v8, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    iget-object v8, v8, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    iget-object v0, v0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBottom()I

    move-result v0

    :cond_1
    add-int/2addr v6, v2

    add-int/2addr v7, v0

    invoke-virtual {v5, v2, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_0
    sub-int v2, p4, p2

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v9

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v9

    goto :goto_2

    :sswitch_0
    sub-int v8, p5, v1

    sub-int/2addr v8, p3

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v8, v0

    goto :goto_3

    :sswitch_1
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lorg/telegram/ui/tools/a;->getPaddingTop()I

    move-result v8

    add-int/2addr v0, v8

    goto :goto_3

    :sswitch_2
    sub-int v8, p5, v1

    sub-int/2addr v8, p3

    sub-int/2addr v8, v7

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v8, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/tools/a;->notifyHeightChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 10

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/tools/a;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/a;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/a;->getKeyboardHeight()I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    iget-object v1, v1, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v1

    sub-int/2addr v0, v1

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/tools/a;->getChildCount()I

    move-result v9

    iget-object v0, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    iget-object v1, v0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/tools/a;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    iget-object v0, v0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/tools/a;->a:I

    move v7, v3

    :goto_1
    if-ge v7, v9, :cond_4

    invoke-virtual {p0, v7}, Lorg/telegram/ui/tools/a;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    iget-object v0, v0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eq v1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    iget-object v0, v0, Lorg/telegram/ui/tools/d;->b:Landroid/widget/FrameLayout;

    if-ne v1, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    :goto_2
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_1

    :cond_1
    move v6, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/a;->b:Lorg/telegram/ui/tools/d;

    iget-object v0, v0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/tools/a;->measureChildWithMargins(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    return-void
.end method
