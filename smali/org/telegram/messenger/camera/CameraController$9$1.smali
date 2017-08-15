.class Lorg/telegram/messenger/camera/CameraController$9$1;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraController$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/camera/CameraController$9;

.field final synthetic val$camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraController$9;Landroid/hardware/Camera;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$9$1;->this$1:Lorg/telegram/messenger/camera/CameraController$9;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$9$1;->val$camera:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$9$1;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$9$1;->this$1:Lorg/telegram/messenger/camera/CameraController$9;

    iget-object v1, v1, Lorg/telegram/messenger/camera/CameraController$9;->val$session:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$9$1;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
