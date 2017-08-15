.class Lorg/telegram/messenger/camera/CameraController$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->initCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/16 v14, 0x870

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_5

    invoke-static {v3, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    new-instance v7, Lorg/telegram/messenger/camera/CameraInfo;

    invoke-direct {v7, v3, v6}, Lorg/telegram/messenger/camera/CameraInfo;-><init>(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/CameraInfo;->getCameraId()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v10

    move v1, v2

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    if-ge v11, v14, :cond_0

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    if-ge v11, v14, :cond_0

    iget-object v11, v7, Lorg/telegram/messenger/camera/CameraInfo;->previewSizes:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/messenger/camera/Size;

    iget v13, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v12, v13, v0}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v9

    move v1, v2

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    const-string/jumbo v10, "samsung"

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "jflteuc"

    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v11, 0x800

    if-ge v10, v11, :cond_3

    :cond_2
    iget-object v10, v7, Lorg/telegram/messenger/camera/CameraInfo;->pictureSizes:Ljava/util/ArrayList;

    new-instance v11, Lorg/telegram/messenger/camera/Size;

    iget v12, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v11, v12, v0}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$1;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object v5, v0, Lorg/telegram/messenger/camera/CameraController;->cameraInfos:Ljava/util/ArrayList;

    :cond_6
    new-instance v0, Lorg/telegram/messenger/camera/CameraController$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/camera/CameraController$1$1;-><init>(Lorg/telegram/messenger/camera/CameraController$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
