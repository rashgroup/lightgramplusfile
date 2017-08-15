.class public Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerAlbumsCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;,
        Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;
    }
.end annotation


# instance fields
.field private albumEntries:[Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

.field private albumsCount:I

.field private delegate:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-array v0, v3, [Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumEntries:[Lorg/telegram/messenger/MediaController$AlbumEntry;

    new-array v0, v3, [Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    new-instance v2, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;-><init>(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;Landroid/content/Context;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$1;-><init>(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)[Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumEntries:[Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43f50000    # 490.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    div-int/2addr v0, v1

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x33

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    div-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const v5, 0x7f0201f4

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumEntries:[Lorg/telegram/messenger/MediaController$AlbumEntry;

    aput-object p2, v0, p1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v0, v0, p1

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$200(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    iget-object v1, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$200(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    iget-object v1, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_0

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$200(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vthumb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v7, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    # getter for: Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$300(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$400(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "%d"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    # getter for: Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$200(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thumb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v7, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    # getter for: Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$200(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setAlbumsCount(I)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v3, v2, v0

    if-ge v0, p1, :cond_0

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;

    return-void
.end method
