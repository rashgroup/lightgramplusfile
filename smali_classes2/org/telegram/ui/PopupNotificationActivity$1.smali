.class Lorg/telegram/ui/PopupNotificationActivity$1;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "PopupNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 11

    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getChildCount()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getKeyboardHeight()I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v0

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_5

    invoke-virtual {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity$1;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x33

    :cond_2
    and-int/lit8 v3, v2, 0x7

    and-int/lit8 v2, v2, 0x70

    and-int/lit8 v3, v3, 0x7

    sparse-switch v3, :sswitch_data_0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_3
    sparse-switch v2, :sswitch_data_1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v9}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_5
    move v2, v3

    :goto_6
    add-int v3, v2, v7

    add-int v7, v0, v8

    invoke-virtual {v6, v2, v0, v3, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :sswitch_0
    sub-int v3, p4, p2

    sub-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v9

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v9

    goto :goto_3

    :sswitch_1
    sub-int v3, p4, v7

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v9

    goto :goto_3

    :sswitch_2
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :sswitch_3
    sub-int v2, p5, v1

    sub-int/2addr v2, p3

    sub-int/2addr v2, v8

    div-int/lit8 v2, v2, 0x2

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v9

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v9

    goto :goto_4

    :sswitch_4
    sub-int v2, p5, v1

    sub-int/2addr v2, p3

    sub-int/2addr v2, v8

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v9

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getMeasuredHeight()I

    move-result v0

    goto :goto_5

    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v9}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordCircle(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lorg/telegram/ui/PopupNotificationActivity;->access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v3, v9

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v0, v3, v0

    move v10, v2

    move v2, v0

    move v0, v10

    goto/16 :goto_6

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->notifyHeightChanged()V

    return-void

    :cond_6
    move v0, v2

    move v2, v3

    goto/16 :goto_6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v3, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/PopupNotificationActivity$1;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getKeyboardHeight()I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v1

    sub-int/2addr v0, v1

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$1;->getChildCount()I

    move-result v9

    move v7, v3

    :goto_1
    if-ge v7, v9, :cond_3

    invoke-virtual {p0, v7}, Lorg/telegram/ui/PopupNotificationActivity$1;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$1;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    # getter for: Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;
    invoke-static {v0}, Lorg/telegram/ui/PopupNotificationActivity;->access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordCircle(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/PopupNotificationActivity$1;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_2

    :cond_2
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move v6, v0

    goto :goto_0
.end method
