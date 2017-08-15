.class public Lorg/telegram/messenger/video/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

.field private static final mTriangleVerticesData:[F


# instance fields
.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I

.field private rotationAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVerticesData:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 3

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    const/16 v0, -0x3039

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    iput v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    iput p1, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    sget-object v0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    sget-object v1, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const v1, 0x8b31

    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lorg/telegram/messenger/video/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string/jumbo v4, "glCreateProgram"

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v2, "glAttachShader"

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v2, v5, [I

    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v2, v0

    if-eq v2, v5, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v2, v0

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public checkGlError(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/SurfaceTexture;Z)V
    .locals 8

    const/16 v5, 0xd

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v3, 0x0

    const-string/jumbo v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    iget-object v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    aget v2, v2, v6

    neg-float v2, v2

    aput v2, v0, v6

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v4, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    aget v4, v4, v5

    sub-float/2addr v2, v4

    aput v2, v0, v5

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string/jumbo v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    iget v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string/jumbo v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string/jumbo v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string/jumbo v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string/jumbo v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:I

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mSTMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:I

    iget-object v1, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x4

    invoke-static {v6, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string/jumbo v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public getTextureId()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, -0x1

    const v4, 0x8d65

    const-string/jumbo v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string/jumbo v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/video/TextureRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    const-string/jumbo v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maPositionHandle:I

    if-ne v0, v5, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    const-string/jumbo v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->maTextureHandle:I

    if-ne v0, v5, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:I

    const-string/jumbo v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muMVPMatrixHandle:I

    if-ne v0, v5, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mProgram:I

    const-string/jumbo v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:I

    const-string/jumbo v0, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->muSTMatrixHandle:I

    if-ne v0, v5, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-array v0, v6, [I

    invoke-static {v6, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v1

    iput v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mTextureID:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string/jumbo v0, "glBindTexture mTextureID"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0x2801

    const/high16 v2, 0x46180000    # 9728.0f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x812f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    const v2, 0x812f

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string/jumbo v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/TextureRenderer;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/video/TextureRenderer;->mMVPMatrix:[F

    iget v2, p0, Lorg/telegram/messenger/video/TextureRenderer;->rotationAngle:I

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_5
    return-void
.end method
