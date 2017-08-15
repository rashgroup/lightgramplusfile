.class public Lorg/telegram/ui/Cells/StickerCell;
.super Landroid/widget/FrameLayout;
.source "StickerCell.java"


# static fields
.field private static interpolator:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private lastUpdateTime:J

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

    sput-object v0, Lorg/telegram/ui/Cells/StickerCell;->interpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerCell;->time:J

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    iget-object v7, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x42

    const/high16 v1, 0x42840000    # 66.0f

    const/high16 v4, 0x40a00000    # 5.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/StickerCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    const/high16 v8, 0x43c80000    # 400.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne p2, v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scaled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scaled:Z

    if-nez v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Cells/StickerCell;->lastUpdateTime:J

    sub-long v4, v2, v4

    iput-wide v2, p0, Lorg/telegram/ui/Cells/StickerCell;->lastUpdateTime:J

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scaled:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    long-to-float v2, v4

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    iget v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_2

    iput v6, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v2, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v2, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->invalidate()V

    :cond_3
    return v0

    :cond_4
    iget v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    long-to-float v2, v4

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    iget v1, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_2

    iput v7, p0, Lorg/telegram/ui/Cells/StickerCell;->scale:F

    goto :goto_0
.end method

.method public getSticker()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v0, 0x42980000    # 76.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x429c0000    # 78.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getPressed()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setPressed(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    return-void
.end method

.method public setScaled(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/StickerCell;->scaled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/StickerCell;->lastUpdateTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->invalidate()V

    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;I)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v2, "webp"

    invoke-virtual {v0, v1, v6, v2, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/StickerCell;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const v0, 0x7f020259

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerCell;->setBackgroundResource(I)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, v0, v3, v3, v3}, Lorg/telegram/ui/Cells/StickerCell;->setPadding(IIII)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/StickerCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "chat_stickersHintPanel"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void

    :cond_3
    if-nez p2, :cond_4

    const v0, 0x7f020258

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerCell;->setBackgroundResource(I)V

    invoke-virtual {p0, v3, v3, v3, v3}, Lorg/telegram/ui/Cells/StickerCell;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    const v0, 0x7f02025a

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerCell;->setBackgroundResource(I)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, v3, v3, v0, v3}, Lorg/telegram/ui/Cells/StickerCell;->setPadding(IIII)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const v0, 0x7f020256

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/StickerCell;->setBackgroundResource(I)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v3, v1, v3}, Lorg/telegram/ui/Cells/StickerCell;->setPadding(IIII)V

    goto :goto_0
.end method

.method public showingBitmap()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/StickerCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

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
