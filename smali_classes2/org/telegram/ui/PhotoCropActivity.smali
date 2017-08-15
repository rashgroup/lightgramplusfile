.class public Lorg/telegram/ui/PhotoCropActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PhotoCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;,
        Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private bitmapKey:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

.field private doneButtonPressed:Z

.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private imageToCrop:Landroid/graphics/Bitmap;

.field private sameBitmap:Z

.field private view:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoCropActivity;->sameBitmap:Z

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoCropActivity;->doneButtonPressed:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoCropActivity;)Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoCropActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoCropActivity;->doneButtonPressed:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PhotoCropActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoCropActivity;->doneButtonPressed:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoCropActivity;)Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->view:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/PhotoCropActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoCropActivity;->sameBitmap:Z

    return p1
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, -0xc2c2c3

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "CropImage"

    const v2, 0x7f080199

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/PhotoCropActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoCropActivity$1;-><init>(Lorg/telegram/ui/PhotoCropActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const v1, 0x7f02011d

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v5, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;-><init>(Lorg/telegram/ui/PhotoCropActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->view:Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoCropActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "freeform"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->fragmentView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onFragmentCreate()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoCropActivity;->swipeBackEnabled:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoCropActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "photoPath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/PhotoCropActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "photoUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-eqz v4, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x44020000    # 520.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_1
    int-to-float v5, v1

    int-to-float v1, v1

    invoke-static {v4, v0, v5, v1, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move v0, v3

    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->isInCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->bitmapKey:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoCropActivity;->sameBitmap:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lorg/telegram/ui/PhotoCropActivity;->imageToCrop:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/PhotoCropActivity;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity;->delegate:Lorg/telegram/ui/PhotoCropActivity$PhotoEditActivityDelegate;

    return-void
.end method
