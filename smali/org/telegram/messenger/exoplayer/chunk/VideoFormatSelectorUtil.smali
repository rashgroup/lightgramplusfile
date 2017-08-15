.class public final Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;
.super Ljava/lang/Object;
.source "VideoFormatSelectorUtil.java"


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final TAG:Ljava/lang/String; = "VideoFormatSelectorUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 6

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_2

    const-string/jumbo v0, "Sony"

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "BRAVIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "NVIDIA"

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "SHIELD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "sys.display-size"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v2, :cond_1

    if-lez v3, :cond_1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VideoFormatSelectorUtil"

    const-string/jumbo v3, "Failed to read sys.display-size"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    :cond_1
    const-string/jumbo v1, "VideoFormatSelectorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid sys.display-size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget v2, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0

    :cond_3
    sget v2, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_4

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0

    :cond_4
    sget v2, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_5

    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private static getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-le p3, p4, :cond_1

    move v2, v0

    :goto_0
    if-le p1, p2, :cond_2

    :goto_1
    if-eq v2, v0, :cond_0

    move v3, p1

    move p1, p2

    move p2, v3

    :cond_0
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Lorg/telegram/messenger/exoplayer/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    return-object v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Lorg/telegram/messenger/exoplayer/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method private static isFormatPlayable(Lorg/telegram/messenger/exoplayer/chunk/Format;[Ljava/lang/String;ZZ)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    const/16 v2, 0x500

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    const/16 v2, 0x2d0

    if-ge v1, v2, :cond_0

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    if-lez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    if-lez v1, :cond_6

    sget v1, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/x-unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "video/avc"

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->frameRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->frameRate:F

    float-to-double v4, v1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->isSizeAndRateSupportedV21(Ljava/lang/String;ZIID)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    invoke-static {v0, p3, v1, v2}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->isSizeSupportedV21(Ljava/lang/String;ZII)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    mul-int/2addr v1, v2

    invoke-static {}, Lorg/telegram/messenger/exoplayer/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v2

    if-gt v1, v2, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZZII)[I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "ZZZII)[I"
        }
    .end annotation

    const v3, 0x7fffffff

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/chunk/FormatWrapper;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/chunk/FormatWrapper;->getFormat()Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v7

    move/from16 v0, p4

    invoke-static {v7, p1, p2, v0}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->isFormatPlayable(Lorg/telegram/messenger/exoplayer/chunk/Format;[Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    if-lez v2, :cond_3

    iget v2, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    if-lez v2, :cond_3

    if-lez p5, :cond_3

    if-lez p6, :cond_3

    iget v2, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iget v8, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {p3, v0, v1, v2, v8}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v8

    iget v2, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iget v9, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    mul-int/2addr v2, v9

    iget v9, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iget v10, v8, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    const v11, 0x3f7ae148    # 0.98f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    if-lt v9, v10, :cond_3

    iget v7, v7, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_3

    if-ge v2, v3, :cond_3

    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-eq v3, v2, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_2
    if-ltz v4, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/chunk/FormatWrapper;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer/chunk/FormatWrapper;->getFormat()Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v2

    iget v6, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    if-lez v6, :cond_1

    iget v6, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    if-lez v6, :cond_1

    iget v6, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iget v2, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    mul-int/2addr v2, v6

    if-le v2, v3, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v2

    return-object v2

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public static selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatWrapper;",
            ">;[",
            "Ljava/lang/String;",
            "Z)[I"
        }
    .end annotation

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormats(Ljava/util/List;[Ljava/lang/String;ZZZII)[I

    move-result-object v0

    return-object v0
.end method
