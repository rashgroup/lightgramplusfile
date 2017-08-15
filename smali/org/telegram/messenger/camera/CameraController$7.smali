.class Lorg/telegram/messenger/camera/CameraController$7;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController;->recordVideo(Lorg/telegram/messenger/camera/CameraSession;Ljava/io/File;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraController;

.field final synthetic val$callback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

.field final synthetic val$camera:Landroid/hardware/Camera;

.field final synthetic val$info:Lorg/telegram/messenger/camera/CameraInfo;

.field final synthetic val$onVideoStartRecord:Ljava/lang/Runnable;

.field final synthetic val$path:Ljava/io/File;

.field final synthetic val$session:Lorg/telegram/messenger/camera/CameraSession;

.field final synthetic val$smallVideo:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    iput-boolean p4, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$smallVideo:Z

    iput-object p5, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$path:Ljava/io/File;

    iput-object p6, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    iput-object p7, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$callback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    iput-object p8, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$onVideoStartRecord:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "torch"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-boolean v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$smallVideo:Z

    # setter for: Lorg/telegram/messenger/camera/CameraController;->recordingSmallVideo:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$202(Lorg/telegram/messenger/camera/CameraController;Z)Z

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    # setter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$302(Lorg/telegram/messenger/camera/CameraController;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v2}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraSession;->configureRecorder(ILandroid/media/MediaRecorder;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    const-wide/32 v2, 0x40000000

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recordingSmallVideo:Z
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$200(Lorg/telegram/messenger/camera/CameraController;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/camera/Size;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v1

    const v2, 0xdbba0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$callback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    # setter for: Lorg/telegram/messenger/camera/CameraController;->onVideoTakeCallback:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;
    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$402(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;)Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/telegram/messenger/camera/CameraController;->recordedFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->access$502(Lorg/telegram/messenger/camera/CameraController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$onVideoStartRecord:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$onVideoStartRecord:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_3
    return-void

    :cond_1
    :try_start_4
    const-string/jumbo v0, "off"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    :try_start_6
    new-instance v0, Lorg/telegram/messenger/camera/Size;

    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/camera/Size;-><init>(II)V

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->val$info:Lorg/telegram/messenger/camera/CameraInfo;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraInfo;->getPictureSizes()Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x2d0

    const/16 v3, 0x1e0

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/messenger/camera/CameraController;->chooseOptimalSize(Ljava/util/List;IILorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v1

    const v2, 0x1b7740

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    # getter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v1}, Lorg/telegram/messenger/camera/CameraController;->access$300(Lorg/telegram/messenger/camera/CameraController;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$7;->this$0:Lorg/telegram/messenger/camera/CameraController;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/messenger/camera/CameraController;->recorder:Landroid/media/MediaRecorder;
    invoke-static {v1, v2}, Lorg/telegram/messenger/camera/CameraController;->access$302(Lorg/telegram/messenger/camera/CameraController;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3
.end method
