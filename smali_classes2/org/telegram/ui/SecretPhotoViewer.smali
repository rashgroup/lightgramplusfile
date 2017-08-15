.class public Lorg/telegram/ui/SecretPhotoViewer;
.super Ljava/lang/Object;
.source "SecretPhotoViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;,
        Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/SecretPhotoViewer;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private isVisible:Z

.field private parentActivity:Landroid/app/Activity;

.field private secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SecretPhotoViewer;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SecretPhotoViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SecretPhotoViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/SecretPhotoViewer;
    .locals 2

    sget-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/SecretPhotoViewer;

    invoke-direct {v0}, Lorg/telegram/ui/SecretPhotoViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v2

    div-float v1, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v3

    div-float/2addr v0, v4

    cmpl-float v4, v1, v0

    if-lez v4, :cond_1

    :goto_0
    int-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    neg-int v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public closePhoto()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    new-instance v0, Lorg/telegram/ui/SecretPhotoViewer$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SecretPhotoViewer$2;-><init>(Lorg/telegram/ui/SecretPhotoViewer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public destroyPhotoViewer()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    iput-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v2, Lorg/telegram/ui/SecretPhotoViewer;->Instance:Lorg/telegram/ui/SecretPhotoViewer;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p2, v1

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/SecretPhotoViewer;->closePhoto()V

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    check-cast v0, Landroid/util/SparseArray;

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v5, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v5, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->invalidate()V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didCreatedNewDeleteTask:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    if-nez v4, :cond_2

    const/4 v4, -0x1

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v0, v6, :cond_6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_5

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/ImageLoader;->putImageToCache(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    :goto_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->invalidate()V

    iput-boolean v8, p0, Lorg/telegram/ui/SecretPhotoViewer;->isVisible:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v6, 0x0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Z)V

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 5

    const/high16 v4, 0x41980000    # 19.0f

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/SecretPhotoViewer;->parentActivity:Landroid/app/Activity;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    :cond_1
    new-instance v0, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/SecretPhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    new-instance v1, Lorg/telegram/ui/SecretPhotoViewer$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SecretPhotoViewer$1;-><init>(Lorg/telegram/ui/SecretPhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;-><init>(Lorg/telegram/ui/SecretPhotoViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->secretDeleteTimer:Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SecretPhotoViewer$SecretDeleteTimer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lorg/telegram/ui/SecretPhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/SecretPhotoViewer;->containerView:Lorg/telegram/ui/SecretPhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    goto/16 :goto_0
.end method
