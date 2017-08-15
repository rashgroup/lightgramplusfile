.class Lorg/telegram/messenger/camera/CameraController$6;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->open(Lorg/telegram/messenger/camera/CameraSession;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$prestartCallback:Ljava/lang/Runnable;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;

.field final synthetic val$texture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Ljava/lang/Runnable;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$6;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$prestartCallback:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$texture:Landroid/graphics/SurfaceTexture;

    iput-object p5, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, v2, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget v2, v2, Lorg/telegram/messenger/camera/CameraInfo;->cameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$6;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_4

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "auto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$6;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v4, v4, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$6;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraController;->availableFlashModes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/camera/CameraSession;->checkFlashMode(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$prestartCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$prestartCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->configurePhotoCamera()V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$callback:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$6;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v2, v2, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    :cond_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
