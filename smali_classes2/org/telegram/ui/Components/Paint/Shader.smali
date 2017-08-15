.class public Lorg/telegram/ui/Components/Paint/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;
    }
.end annotation


# instance fields
.field private fragmentShader:I

.field protected program:I

.field protected uniformsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vertexShader:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->uniformsMap:Ljava/util/Map;

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/Paint/Shader;->compileShader(ILjava/lang/String;)Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;

    move-result-object v2

    iget v0, v2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->status:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "Vertex shader compilation failed"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget v0, v2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Shader;->destroyShader(III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x8b30

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Components/Paint/Shader;->compileShader(ILjava/lang/String;)Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;

    move-result-object v3

    iget v0, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->status:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "Fragment shader compilation failed"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget v0, v2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v1, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Shader;->destroyShader(III)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    iget v4, v2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    iget v4, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    move v0, v1

    :goto_1
    array-length v4, p3

    if-ge v0, v4, :cond_3

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    aget-object v5, p3, v0

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Shader;->linkProgram(I)I

    move-result v0

    if-nez v0, :cond_4

    iget v0, v2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v1, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iget v2, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Shader;->destroyShader(III)V

    goto :goto_0

    :cond_4
    array-length v0, p4

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v4, p4, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Shader;->uniformsMap:Ljava/util/Map;

    iget v6, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget v0, v2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    if-eqz v0, :cond_6

    iget v0, v2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_6
    iget v0, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    if-eqz v0, :cond_0

    iget v0, v3, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0
.end method

.method public static SetColorUniform(II)V
    .locals 5

    const/high16 v4, 0x437f0000    # 255.0f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {p0, v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method private compileShader(ILjava/lang/String;)Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v1, v3

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;

    aget v1, v1, v3

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;-><init>(Lorg/telegram/ui/Components/Paint/Shader;II)V

    return-object v2
.end method

.method private destroyShader(III)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_2
    return-void
.end method

.method private linkProgram(I)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8b82

    invoke-static {p1, v1, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v1, v0, v2

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    aget v0, v0, v2

    return v0
.end method


# virtual methods
.method public cleanResources()V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->vertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    :cond_0
    return-void
.end method

.method public getUniform(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Shader;->uniformsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
