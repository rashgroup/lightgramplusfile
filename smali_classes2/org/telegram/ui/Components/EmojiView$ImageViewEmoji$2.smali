.class Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->val$this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    # setter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touched:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$402(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Z)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    # getter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastX:F
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F

    move-result v4

    # setter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedX:F
    invoke-static {v1, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$502(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    # getter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->lastY:F
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$800(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)F

    move-result v4

    # setter for: Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->touchedY:F
    invoke-static {v1, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$702(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;F)F

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$900()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    move v1, v4

    :goto_0
    packed-switch v1, :pswitch_data_1

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v4

    mul-int/2addr v4, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result v1

    mul-int/lit8 v5, v1, 0x4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    :goto_2
    sub-int v1, v5, v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    aget v4, v4, v3

    sub-int/2addr v4, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    aget v4, v4, v3

    sub-int/2addr v4, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    :cond_1
    :goto_3
    neg-int v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x41f00000    # 30.0f

    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v3, v4

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v3, v6

    invoke-virtual {v5, v0, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setEmoji(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->popupHeight:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sub-int v1, v3, v1

    invoke-virtual {v0, p1, v4, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_6
    return v2

    :pswitch_0
    const-string/jumbo v7, "\ud83c\udffb"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v7, "\ud83c\udffc"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v7, "\ud83c\udffd"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v7, "\ud83c\udffe"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v7, "\ud83c\udfff"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_1

    :cond_3
    move v1, v2

    goto/16 :goto_2

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    aget v4, v4, v3

    sub-int/2addr v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->popupWidth:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->location:[I
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    aget v4, v4, v3

    sub-int/2addr v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->popupWidth:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    goto/16 :goto_3

    :cond_5
    move v1, v3

    goto/16 :goto_4

    :cond_6
    const/high16 v3, 0x41b00000    # 22.0f

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji$2;->this$1:Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/EmojiView$Listener;->onClearEmojiRecent()V

    :cond_8
    move v2, v3

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1b0f3f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
