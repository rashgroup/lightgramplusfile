.class public Lorg/telegram/ui/Cells/WallpaperCell;
.super Landroid/widget/FrameLayout;
.source "WallpaperCell.java"


# instance fields
.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private imageView2:Landroid/widget/ImageView;

.field private selectionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x53

    const/16 v2, 0x64

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/WallpaperCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/WallpaperCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    const/high16 v1, 0x42cc0000    # 102.0f

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/WallpaperCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42cc0000    # 102.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setWallpaper(Lorg/telegram/tgnet/TLRPC$WallPaper;ILandroid/graphics/drawable/Drawable;Z)V
    .locals 9

    const v3, 0x5a475866

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v0, 0x0

    if-nez p1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p4, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    if-ne p2, v4, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    if-eq p2, v4, :cond_2

    const v0, 0xf4241

    if-ne p2, v0, :cond_4

    :cond_2
    move v0, v3

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    const/high16 v0, 0x5a000000

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/Cells/WallpaperCell;->selectionView:Landroid/view/View;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    if-ne p2, v5, :cond_6

    move v2, v0

    :cond_6
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSolid;

    if-eqz v2, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, -0x1000000

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->bg_color:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setBackgroundColor(I)V

    goto :goto_1

    :cond_7
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move v4, v0

    move-object v2, v1

    :goto_4
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_c

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v0, :cond_9

    move-object v0, v2

    :cond_8
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v0

    goto :goto_4

    :cond_9
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-lt v5, v7, :cond_b

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    :goto_6
    if-eqz v2, :cond_8

    const/16 v7, 0x64

    if-le v6, v7, :cond_a

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v7, :cond_a

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_8

    :cond_a
    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    if-nez v7, :cond_8

    if-le v5, v6, :cond_8

    move-object v0, v2

    goto :goto_5

    :cond_b
    iget v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    goto :goto_6

    :cond_c
    if-eqz v2, :cond_d

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v5, "100_100"

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v5, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Cells/WallpaperCell;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setBackgroundColor(I)V

    goto/16 :goto_1
.end method
