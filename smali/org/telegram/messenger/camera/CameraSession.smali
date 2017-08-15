.class public Lorg/telegram/messenger/camera/CameraSession;
.super Ljava/lang/Object;
.source "CameraSession.java"


# static fields
.field public static final ORIENTATION_HYSTERESIS:I = 0x5


# instance fields
.field private autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field protected cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

.field private currentFlashMode:Ljava/lang/String;

.field private currentOrientation:I

.field private initied:Z

.field private isVideo:Z

.field private jpegOrientation:I

.field private lastDisplayOrientation:I

.field private lastOrientation:I

.field private meteringAreaSupported:Z

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private final pictureFormat:I

.field private final pictureSize:Lorg/telegram/messenger/camera/Size;

.field private final previewSize:Lorg/telegram/messenger/camera/Size;

.field private sameTakePictureOrientation:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/Size;Lorg/telegram/messenger/camera/Size;I)V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "off"

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    iput v1, p0, Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I

    iput v1, p0, Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I

    new-instance v0, Lorg/telegram/messenger/camera/CameraSession$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/camera/CameraSession$1;-><init>(Lorg/telegram/messenger/camera/CameraSession;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    iput p4, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureFormat:I

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "flashMode_front"

    :goto_0
    const-string/jumbo v2, "off"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    new-instance v0, Lorg/telegram/messenger/camera/CameraSession$2;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/camera/CameraSession$2;-><init>(Lorg/telegram/messenger/camera/CameraSession;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "flashMode"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/messenger/camera/CameraSession;)Landroid/view/OrientationEventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/camera/CameraSession;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/camera/CameraSession;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    return v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/camera/CameraSession;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/camera/CameraSession;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/camera/CameraSession;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/camera/CameraSession;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/camera/CameraSession;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->lastOrientation:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/camera/CameraSession;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/camera/CameraSession;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/camera/CameraSession;->lastDisplayOrientation:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/camera/CameraSession;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    return v0
.end method

.method private getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I
    .locals 5

    const/4 v1, 0x0

    const/16 v3, 0x10e

    const/16 v2, 0x5a

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    if-nez p2, :cond_0

    if-ne v0, v2, :cond_0

    move v0, v3

    :cond_0
    if-nez p2, :cond_2

    const-string/jumbo v1, "Huawei"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "angler"

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, v3, :cond_2

    :goto_1
    return v2

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    move v0, v3

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v2, v0, 0x168

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getHigh()I
    .locals 2

    const-string/jumbo v0, "LGE"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "g3_tmo_us"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private roundOrientation(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 p2, v0, 0x168

    :cond_1
    return p2

    :cond_2
    sub-int v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkFlashMode(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v0, :cond_1

    const-string/jumbo v0, "flashMode_front"

    :goto_1
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "flashMode"

    goto :goto_1
.end method

.method protected configurePhotoCamera()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v4, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v3, v0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v0

    invoke-static {v0, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I

    move-result v6

    const-string/jumbo v0, "samsung"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sf2wifixx"

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    iput v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentOrientation:I

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraSession;->previewSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v7

    invoke-virtual {v3, v0, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureSize:Lorg/telegram/messenger/camera/Size;

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v7

    invoke-virtual {v3, v0, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->pictureFormat:I

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const-string/jumbo v0, "continuous-picture"

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    const/4 v7, -0x1

    if-eq v0, v7, :cond_9

    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_5

    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v7, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    sub-int/2addr v0, v7

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v1, :cond_7

    rsub-int v5, v6, 0x168

    rem-int/lit16 v5, v5, 0x168

    if-ne v5, v0, :cond_6

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->meteringAreaSupported:Z

    :cond_1
    :goto_6
    return-void

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v0

    goto/16 :goto_0

    :cond_2
    packed-switch v6, :pswitch_data_0

    move v0, v2

    :goto_7
    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit8 v7, v7, 0x5a

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    iput v7, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    :cond_3
    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v1, :cond_4

    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v7

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_1

    :pswitch_0
    move v0, v2

    goto :goto_7

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_7

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_7

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_7

    :cond_4
    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v7, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_1

    :cond_5
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v7, p0, Lorg/telegram/messenger/camera/CameraSession;->jpegOrientation:I

    add-int/2addr v0, v7

    rem-int/lit16 v0, v0, 0x168
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    if-ne v6, v0, :cond_8

    move v0, v1

    :goto_8
    :try_start_7
    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected configureRecorder(ILandroid/media/MediaRecorder;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    invoke-direct {p0}, Lorg/telegram/messenger/camera/CameraSession;->getHigh()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v2, v2, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v1, :cond_1

    if-eq p1, v4, :cond_0

    if-nez v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    return-void

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v0, v3}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot find valid CamcorderProfile"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->orientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method protected focusToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/hardware/Camera$Area;

    const/16 v4, 0x3e8

    invoke-direct {v3, p1, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    iget-boolean v2, p0, Lorg/telegram/messenger/camera/CameraSession;->meteringAreaSupported:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/hardware/Camera$Area;

    const/16 v4, 0x3e8

    invoke-direct {v3, p2, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :try_start_3
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    :try_start_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public getCurrentFlashMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentOrientation:I

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 2

    :try_start_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/camera/CameraSession;->getDisplayOrientation(Landroid/hardware/Camera$CameraInfo;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextFlashMode()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v3, v0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    goto :goto_1
.end method

.method protected isInitied()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    return v0
.end method

.method public isSameTakePictureOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->sameTakePictureOrientation:Z

    return v0
.end method

.method public setCurrentFlashMode(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraSession;->currentFlashMode:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v0, v0, Lorg/telegram/messenger/camera/CameraInfo;->frontCamera:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, "flashMode_front"

    :goto_0
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string/jumbo v0, "flashMode"

    goto :goto_0
.end method

.method protected setInitied()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->initied:Z

    return-void
.end method

.method protected stopVideoRecording()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/camera/CameraSession;->isVideo:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    return-void
.end method
