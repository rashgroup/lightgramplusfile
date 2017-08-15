.class public Lorg/telegram/ui/Cells/ArchivedStickerSetCell;
.super Landroid/widget/FrameLayout;
.source "ArchivedStickerSetCell.java"


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private needDivider:Z

.field private onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private rect:Landroid/graphics/Rect;

.field private stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 12

    const/high16 v9, 0x42200000    # 40.0f

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->rect:Landroid/graphics/Rect;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    move v0, v7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    move v2, v7

    :goto_1
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    move v3, v9

    :goto_2
    const/high16 v4, 0x41200000    # 10.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_4

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_3
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    move v0, v7

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    move v2, v7

    :goto_5
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_7

    move v3, v9

    :goto_6
    const/high16 v4, 0x420c0000    # 35.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_8

    const/high16 v5, 0x428e0000    # 71.0f

    :goto_7
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    iget-object v9, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    move v2, v7

    :goto_8
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_a

    move v3, v6

    :goto_9
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_b

    const/high16 v5, 0x41400000    # 12.0f

    :goto_a
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_c

    :goto_b
    or-int/lit8 v4, v8, 0x10

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v7, 0x41600000    # 14.0f

    move v8, v6

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    move v0, v8

    goto/16 :goto_0

    :cond_2
    move v2, v8

    goto/16 :goto_1

    :cond_3
    const/high16 v3, 0x428e0000    # 71.0f

    goto/16 :goto_2

    :cond_4
    move v5, v9

    goto/16 :goto_3

    :cond_5
    move v0, v8

    goto/16 :goto_4

    :cond_6
    move v2, v8

    goto/16 :goto_5

    :cond_7
    const/high16 v3, 0x428e0000    # 71.0f

    goto/16 :goto_6

    :cond_8
    move v5, v9

    goto :goto_7

    :cond_9
    move v2, v8

    goto :goto_8

    :cond_a
    const/high16 v3, 0x41400000    # 12.0f

    goto :goto_9

    :cond_b
    move v5, v6

    goto :goto_a

    :cond_c
    move v8, v7

    goto :goto_b
.end method


# virtual methods
.method public getCheckBox()Lorg/telegram/ui/Components/Switch;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method public getStickersSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValueTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->getX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Switch;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setOnCheckClick(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    iput-object p1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    new-instance v1, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell$1;-><init>(Lorg/telegram/ui/Cells/ArchivedStickerSetCell;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->needDivider:Z

    iput-object p1, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->needDivider:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->stickersSet:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->valueTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "Stickers"

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->count:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->cover:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "webp"

    invoke-virtual {v0, v1, v4, v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/ArchivedStickerSetCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->covers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v1, "webp"

    invoke-virtual {v2, v0, v4, v1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
