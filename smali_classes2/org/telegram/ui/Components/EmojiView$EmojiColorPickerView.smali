.class Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
.super Landroid/view/View;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiColorPickerView"
.end annotation


# instance fields
.field private arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private arrowX:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private currentEmoji:Ljava/lang/String;

.field private rect:Landroid/graphics/RectF;

.field private rectPaint:Landroid/graphics/Paint;

.field private selection:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getEmoji()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/high16 v1, 0x425e0000    # 55.5f

    const/high16 v2, 0x423e0000    # 47.5f

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v3, 0x0

    const/high16 v9, 0x41100000    # 9.0f

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getMeasuredWidth()I

    move-result v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x42700000    # 60.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v4, v3, v3, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    const/high16 v2, 0x41000000    # 8.0f

    add-float/2addr v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v2, v3

    :goto_3
    const/4 v0, 0x6

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    mul-int/2addr v0, v2

    mul-int/lit8 v1, v2, 0x4

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v3, v0, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    int-to-float v1, v3

    const/high16 v5, 0x40600000    # 3.5f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    float-to-int v5, v5

    sub-int v5, v4, v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v7

    add-int/2addr v7, v4

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    if-eqz v2, :cond_6

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v0, ""

    :goto_4
    # invokes: Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    add-int/2addr v1, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiSize:I
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_2
    const/high16 v0, 0x42500000    # 52.0f

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v1, v2

    goto/16 :goto_2

    :pswitch_0
    const-string/jumbo v0, "\ud83c\udffb"

    goto :goto_4

    :pswitch_1
    const-string/jumbo v0, "\ud83c\udffc"

    goto :goto_4

    :pswitch_2
    const-string/jumbo v0, "\ud83c\udffd"

    goto :goto_4

    :pswitch_3
    const-string/jumbo v0, "\ud83c\udffe"

    goto :goto_4

    :pswitch_4
    const-string/jumbo v0, "\ud83c\udfff"

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setEmoji(Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->currentEmoji:Ljava/lang/String;

    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->arrowX:I

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x2f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->invalidate()V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->selection:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->invalidate()V

    goto :goto_0
.end method
