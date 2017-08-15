.class public Lorg/telegram/ui/Cells/PhotoPickerSearchCell;
.super Landroid/widget/LinearLayout;
.source "PhotoPickerSearchCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;,
        Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    const/high16 v7, 0x42400000    # 48.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->setOrientation(I)V

    new-instance v1, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;Landroid/content/Context;)V

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$000(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v2, "SearchImages"

    const v3, 0x7f0804af

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$100(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v2, "SearchImagesInfo"

    const v3, 0x7f0804b0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$200(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f020243

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;Landroid/content/Context;)V

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView1:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$000(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v2, "SearchGifs"

    const v3, 0x7f0804ad

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->textView2:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$100(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v2, "GIPHY"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->access$200(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f02023f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    new-instance v0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$2;-><init>(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/PhotoPickerSearchCell$SearchButton;->setAlpha(F)V

    goto :goto_0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/PhotoPickerSearchCell;)Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerSearchCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerSearchCell$PhotoPickerSearchCellDelegate;

    return-void
.end method
