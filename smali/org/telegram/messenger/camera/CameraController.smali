.class public Lorg/telegram/messenger/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;,
        Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static volatile Instance:Lorg/telegram/messenger/camera/CameraController; = null

.field private static final KEEP_ALIVE_SECONDS:I = 0x3c

.field private static final MAX_POOL_SIZE:I = 0x1


# instance fields
.field protected availableFlashModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected cameraInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cameraInitied:Z

.field private onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

.field private recordedFile:Ljava/lang/String;

.field private recorder:Landroid/media/MediaRecorder;

.field private recordingSmallVideo:Z

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/messenger/camera/CameraController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    return p1
.end method

.method static synthetic access$100([B)I
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/camera/CameraController;->getOrientation([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->recordingSmallVideo:Z

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/camera/CameraController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/camera/CameraController;->recordingSmallVideo:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/camera/CameraController;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/camera/CameraController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/camera/CameraController;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/camera/Size;",
            ">;II",
            "Lorg/telegram/messenger/camera/Size;",
            ")",
            "Lorg/telegram/messenger/camera/Size;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v6

    mul-int/2addr v6, v4

    div-int/2addr v6, v3

    if-ne v5, v6, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v5

    if-lt v5, p1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v5

    if-lt v5, p2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {v0}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/camera/Size;

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;

    invoke-direct {v0}, Lorg/telegram/messenger/camera/CameraController$CompareSizesByArea;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/camera/Size;

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/messenger/camera/CameraController;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/camera/CameraController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {v0}, Lorg/telegram/messenger/camera/CameraController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/camera/CameraController;->Instance:Lorg/telegram/messenger/camera/CameraController;

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

.method private static getOrientation([B)I
    .locals 10

    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v0, 0x3

    array-length v4, p0

    if-ge v2, v4, :cond_9

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xff

    if-ne v0, v4, :cond_a

    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    const/16 v0, 0xff

    if-ne v4, v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    const/16 v2, 0xd8

    if-eq v4, v2, :cond_2

    if-eq v4, v3, :cond_2

    const/16 v2, 0xd9

    if-eq v4, v2, :cond_9

    const/16 v2, 0xda

    if-ne v4, v2, :cond_5

    move v2, v1

    move v4, v0

    :goto_2
    if-le v2, v9, :cond_0

    invoke-static {p0, v4, v8, v1}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v0

    const v5, 0x49492a00    # 823968.0f

    if-eq v0, v5, :cond_4

    const v5, 0x4d4d002a    # 2.14958752E8f

    if-ne v0, v5, :cond_0

    :cond_4
    const v5, 0x49492a00    # 823968.0f

    if-ne v0, v5, :cond_7

    move v0, v3

    :goto_3
    add-int/lit8 v3, v4, 0x4

    invoke-static {p0, v3, v8, v0}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    const/16 v5, 0xa

    if-lt v3, v5, :cond_0

    if-gt v3, v2, :cond_0

    add-int/2addr v4, v3

    sub-int v3, v2, v3

    add-int/lit8 v2, v4, -0x2

    invoke-static {p0, v2, v7, v0}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    move v5, v4

    move v4, v3

    :goto_4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    const/16 v2, 0xc

    if-lt v4, v2, :cond_0

    invoke-static {p0, v5, v7, v0}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    const/16 v6, 0x112

    if-ne v2, v6, :cond_8

    add-int/lit8 v2, v5, 0x8

    invoke-static {p0, v2, v7, v0}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    :cond_5
    invoke-static {p0, v0, v7, v1}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v5

    if-lt v5, v7, :cond_0

    add-int v2, v0, v5

    array-length v6, p0

    if-gt v2, v6, :cond_0

    const/16 v2, 0xe1

    if-ne v4, v2, :cond_6

    if-lt v5, v9, :cond_6

    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2, v8, v1}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    const v4, 0x45786966

    if-ne v2, v4, :cond_6

    add-int/lit8 v2, v0, 0x6

    invoke-static {p0, v2, v7, v1}, Lorg/telegram/messenger/camera/CameraController;->pack([BIIZ)I

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v2, v0, 0x8

    add-int/lit8 v0, v5, -0x8

    move v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    add-int/2addr v0, v5

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto :goto_3

    :pswitch_3
    const/16 v1, 0x5a

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x10e

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v2, v4, -0xc

    move v4, v2

    move v2, v3

    goto :goto_4

    :cond_9
    move v2, v1

    move v4, v0

    goto/16 :goto_2

    :cond_a
    move v4, v2

    move v2, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    add-int/lit8 v0, p2, -0x1

    add-int/2addr p1, v0

    const/4 v0, -0x1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 v1, v1, 0x8

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    add-int/2addr p1, v0

    move p2, v2

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraController$2;-><init>(Lorg/telegram/messenger/camera/CameraController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close(Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraSession;->destroy()V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lorg/telegram/messenger/camera/CameraController$3;-><init>(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCameras()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/camera/CameraInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initCamera()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/camera/CameraController$1;-><init>(Lorg/telegram/messenger/camera/CameraController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isCameraInitied()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInitied:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_0

    const/16 v0, 0x321

    if-eq p2, v0, :cond_0

    if-ne p2, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$8;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/camera/CameraController$8;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lorg/telegram/messenger/camera/CameraController$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/camera/CameraController$6;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Z)V
    .locals 10

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v2, v6, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    iget-object v9, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lorg/telegram/messenger/camera/CameraController$7;

    move-object v1, p0

    move-object v3, p1

    move v4, p5

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/camera/CameraController$7;-><init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startPreview(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/camera/CameraController$5;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lorg/telegram/messenger/camera/CameraController$9;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/camera/CameraController$9;-><init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takePicture(Ljava/io/File;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p2, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v2, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lorg/telegram/messenger/camera/CameraController$4;

    invoke-direct {v5, p0, p1, v1, p3}, Lorg/telegram/messenger/camera/CameraController$4;-><init>(Lorg/telegram/messenger/camera/CameraController;Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
