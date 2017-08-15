.class Lorg/telegram/messenger/camera/CameraController$9;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$abandon:Z

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-boolean p3, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$abandon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v0, v0, Lorg/telegram/messenger/camera/CameraSession;->cameraInfo:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v2, v0, Lorg/telegram/messenger/camera/CameraInfo;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v3, v4}, Lorg/telegram/messenger/camera/CameraController;->access$302(Lorg/telegram/messenger/camera/CameraController;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    :try_start_4
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->stopVideoRecording()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_0
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v3, "off"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_4
    :try_start_6
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$600(Lorg/telegram/messenger/camera/CameraController;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v3, Lorg/telegram/messenger/camera/CameraController$9$1;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/camera/CameraController$9$1;-><init>(Lorg/telegram/messenger/camera/CameraController$9;Landroid/hardware/Camera;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->val$abandon:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$400(Lorg/telegram/messenger/camera/CameraController;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recordingSmallVideo:Z
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$200(Lorg/telegram/messenger/camera/CameraController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$500(Lorg/telegram/messenger/camera/CameraController;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_5
    new-instance v1, Lorg/telegram/messenger/camera/CameraController$9$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/camera/CameraController$9$2;-><init>(Lorg/telegram/messenger/camera/CameraController$9;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_6
    return-void

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_1
    move-object v0, v1

    goto :goto_5

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$402(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6
.end method
