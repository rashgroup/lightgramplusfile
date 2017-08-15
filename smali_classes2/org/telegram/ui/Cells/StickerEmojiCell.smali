.class public Lorg/telegram/ui/Cells/StickerEmojiCell;
.super Landroid/widget/FrameLayout;
.source "StickerEmojiCell.java"


# static fields
.field private static interpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private alpha:F

.field private changingAlpha:Z

.field private emojiTextView:Landroid/widget/TextView;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private lastUpdateTime:J

.field private recent:Z

.field private scale:F

.field private scaled:Z

.field private sticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lorg/telegram/ui/Cells/StickerEmojiCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x42

    const/16 v3, 0x1c

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v1, 0x11

    invoke-static {v4, v4, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    const/16 v1, 0x55

    invoke-static {v3, v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->invalidate()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne p2, v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    if-nez v1, :cond_5

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    sub-long v4, v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    if-eqz v1, :cond_6

    iget-wide v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    iget-wide v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    const-wide/16 v4, 0x41a

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const-wide/16 v2, 0x41a

    iput-wide v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    sget-object v2, Lorg/telegram/ui/Cells/StickerEmojiCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    iget-wide v4, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->time:J

    long-to-float v3, v4

    const v4, 0x44834000    # 1050.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->alpha:F

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v2, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->invalidate()V

    :cond_5
    return v0

    :cond_6
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    long-to-float v2, v4

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    goto :goto_0

    :cond_7
    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    long-to-float v2, v4

    const/high16 v3, 0x43c80000    # 400.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    iget v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scale:F

    goto :goto_0
.end method

.method public getSticker()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->changingAlpha:Z

    return v0
.end method

.method public isRecent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->recent:Z

    return v0
.end method

.method public setRecent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->recent:Z

    return-void
.end method

.method public setScaled(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->scaled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->lastUpdateTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->invalidate()V

    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V
    .locals 7

    const/4 v4, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iput-object p1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v3, "webp"

    invoke-virtual {v0, v1, v4, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_4

    move v1, v2

    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v0, v3, v4, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/query/StickersQuery;->getEmojiForSticker(J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1, v3, v4, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->emojiTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public showingBitmap()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerEmojiCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
