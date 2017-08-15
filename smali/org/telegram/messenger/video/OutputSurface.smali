.class public Lorg/telegram/messenger/video/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4


# instance fields
.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFrameAvailable:Z

.field private final mFrameSyncObject:Ljava/lang/Object;

.field private mHeight:I

.field private mPixelBuf:Ljava/nio/ByteBuffer;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

.field private mWidth:I

.field private rotateRender:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/video/OutputSurface;->rotateRender:I

    invoke-direct {p0}, Lorg/telegram/messenger/video/OutputSurface;->setup()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/video/OutputSurface;->rotateRender:I

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Lorg/telegram/messenger/video/OutputSurface;->mWidth:I

    iput p2, p0, Lorg/telegram/messenger/video/OutputSurface;->mHeight:I

    iput p3, p0, Lorg/telegram/messenger/video/OutputSurface;->rotateRender:I

    iget v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mWidth:I

    iget v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/OutputSurface;->eglSetup(II)V

    invoke-virtual {p0}, Lorg/telegram/messenger/video/OutputSurface;->makeCurrent()V

    invoke-direct {p0}, Lorg/telegram/messenger/video/OutputSurface;->setup()V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "EGL error encountered (see log)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private eglSetup(II)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL10 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL10"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xd

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    new-array v3, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v5, v7, [I

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    array-length v4, v3

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v6

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v4, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string/jumbo v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/OutputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0x3057

    aput v1, v0, v6

    aput p1, v0, v7

    const/4 v1, 0x2

    const/16 v2, 0x3056

    aput v2, v0, v1

    aput p2, v0, v8

    const/4 v1, 0x4

    const/16 v2, 0x3038

    aput v2, v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v3, v3, v6

    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string/jumbo v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/OutputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3033
        0x1
        0x3040
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setup()V
    .locals 2

    new-instance v0, Lorg/telegram/messenger/video/TextureRenderer;

    iget v1, p0, Lorg/telegram/messenger/video/OutputSurface;->rotateRender:I

    invoke-direct {v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/TextureRenderer;->surfaceCreated()V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/TextureRenderer;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 4

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Surface frame wait timed out"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    const-string/jumbo v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void
.end method

.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/video/TextureRenderer;->changeFragmentShader(Ljava/lang/String;)V

    return-void
.end method

.method public drawImage(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/video/TextureRenderer;->drawFrame(Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public getFrame()Ljava/nio/ByteBuffer;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mWidth:I

    iget v3, p0, Lorg/telegram/messenger/video/OutputSurface;->mHeight:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    iget-object v6, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not configured for makeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "before makeCurrent"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/video/OutputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameAvailable:Z

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public release()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mTextureRender:Lorg/telegram/messenger/video/TextureRenderer;

    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurface:Landroid/view/Surface;

    iput-object v5, p0, Lorg/telegram/messenger/video/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method
