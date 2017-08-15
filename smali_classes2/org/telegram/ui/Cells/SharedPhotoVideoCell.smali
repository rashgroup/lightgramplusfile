.class public Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
.super Landroid/widget/FrameLayout;
.source "SharedPhotoVideoCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;,
        Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;

.field private indeces:[I

.field private isFirst:Z

.field private itemsCount:I

.field private messageObjects:[Lorg/telegram/messenger/MessageObject;

.field private photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-array v0, v3, [Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    new-array v0, v3, [Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    new-array v0, v3, [I

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->indeces:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    new-instance v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;Landroid/content/Context;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$2;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->delegate:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->indeces:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/SharedPhotoVideoCell;)[Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method


# virtual methods
.method public getImageView(I)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v0, v0, p1

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageObject(I)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v3, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43f50000    # 490.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    div-int/2addr v0, v1

    move v1, v0

    :goto_0
    move v2, v3

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->isFirst:Z

    if-eqz v4, :cond_1

    move v4, v3

    :goto_2
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    mul-int/2addr v4, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x33

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    div-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->isFirst:Z

    if-eqz v0, :cond_3

    :goto_3
    add-int v0, v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_3
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_3
.end method

.method public setChecked(IZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setChecked(ZZ)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->delegate:Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;

    return-void
.end method

.method public setIsFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->isFirst:Z

    return-void
.end method

.method public setItem(IILorg/telegram/messenger/MessageObject;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v5, 0x4

    const v8, 0x7f020211

    const/4 v9, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    aput-object p3, v0, p1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->indeces:[I

    aput p2, v0, p1

    if-eqz p3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v4, v0, p1

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {v3, v0, v9}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$600(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v3, v9

    :goto_1
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v5, :cond_1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    :goto_2
    div-int/lit8 v3, v0, 0x3c

    mul-int/lit8 v5, v3, 0x3c

    sub-int/2addr v0, v5

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$700(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "%d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string/jumbo v7, "b"

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v8, v1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_3
    return-void

    :cond_0
    move v0, v9

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_4

    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$600(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p3, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v2, 0x50

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v7, "b"

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v8, v1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->videoInfoContainer:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$600(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->imageView:Lorg/telegram/ui/Components/BackupImageView;
    invoke-static {v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$500(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->clearAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->messageObjects:[Lorg/telegram/messenger/MessageObject;

    aput-object v1, v0, p1

    goto :goto_3

    :cond_6
    move v0, v9

    goto/16 :goto_2
.end method

.method public setItemsCount(I)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->clearAnimation()V

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v3, v2, v0

    if-ge v0, p1, :cond_0

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->itemsCount:I

    return-void
.end method

.method public updateCheckboxColor()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->photoVideoViews:[Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;

    aget-object v1, v1, v0

    # getter for: Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->checkBox:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;->access$400(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$PhotoVideoView;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    const-string/jumbo v2, "checkbox"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "checkboxCheck"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
