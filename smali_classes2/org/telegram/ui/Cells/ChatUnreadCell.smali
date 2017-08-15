.class public Lorg/telegram/ui/Cells/ChatUnreadCell;
.super Landroid/widget/FrameLayout;
.source "ChatUnreadCell.java"


# instance fields
.field private backgroundLayout:Landroid/widget/FrameLayout;

.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0201f0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "chat_unreadMessagesStartBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    const/4 v0, -0x1

    const/high16 v1, 0x41d80000    # 27.0f

    const/16 v2, 0x33

    const/high16 v4, 0x40e00000    # 7.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/ChatUnreadCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "chat_unreadMessagesStartArrowIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v9, v1, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v7, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x15

    const/high16 v5, 0x41200000    # 10.0f

    move v0, v10

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v9, v9, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "chat_unreadMessagesStartText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-static {v10, v10, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ChatUnreadCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->backgroundLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatUnreadCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
