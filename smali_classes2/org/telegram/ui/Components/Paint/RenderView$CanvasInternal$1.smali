.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->shuttingDown:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$300(Lorg/telegram/ui/Components/Paint/RenderView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # invokes: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->setCurrentContext()Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1300(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferWidth:I
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$800(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferHeight:I
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$900(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I

    move-result v1

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->painting:Lorg/telegram/ui/Components/Paint/Painting;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->render()V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1400(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$1500(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->ready:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->access$700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;->this$1:Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    # getter for: Lorg/telegram/ui/Components/Paint/RenderView;->queue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$500(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1$1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
