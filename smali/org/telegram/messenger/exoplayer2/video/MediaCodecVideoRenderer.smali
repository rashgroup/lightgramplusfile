.class public Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;
.super Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"


# instance fields
.field private final allowedJoiningTimeMs:J

.field private codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private consecutiveDroppedFrameCount:I

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsAutoFrcWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

.field private joiningDeadlineMs:J

.field private lastReportedHeight:I

.field private lastReportedPixelWidthHeightRatio:F

.field private lastReportedUnappliedRotationDegrees:I

.field private lastReportedWidth:I

.field private final maxDroppedFramesToNotify:I

.field private pendingPixelWidthHeightRatio:F

.field private pendingRotationDegrees:I

.field private renderedFirstFrame:Z

.field private scalingMode:I

.field private streamFormats:[Lorg/telegram/messenger/exoplayer2/Format;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;J)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2, p5, p6}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    iput p9, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    new-instance v0, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {v0, p7, p8}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->clearLastReportedVideoSize()V

    return-void
.end method

.method private static areAdaptationCompatible(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getRotationDegrees(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getRotationDegrees(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearLastReportedVideoSize()V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedWidth:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedPixelWidthHeightRatio:F

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedUnappliedRotationDegrees:I

    return-void
.end method

.method private static deviceNeedsAutoFrcWorkaround()Z
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "foster"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NVIDIA"

    sget-object v1, Lorg/telegram/messenger/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dropOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3

    const-string/jumbo v0, "dropVideoBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->droppedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->droppedOutputBufferCount:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->maxConsecutiveDroppedOutputBufferCount:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method

.method private static getCodecMaxValues(Lorg/telegram/messenger/exoplayer2/Format;[Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .locals 8

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v1

    array-length v4, p1

    const/4 v0, 0x0

    move v7, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v7

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, p1, v3

    invoke-static {p0, v5}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->areAdaptationCompatible(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, v5, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getMaxInputSize(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {v3, v2, v1, v0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object v3
.end method

.method private static getMaxInputSize(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 6

    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v2, -0x1

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    if-eq v3, v2, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    :goto_0
    return v0

    :cond_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-eq v3, v2, :cond_1

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ne v3, v2, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "video/3gpp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "video/mp4v-es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "video/avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "video/hevc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    goto :goto_1

    :pswitch_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int/2addr v1, v2

    :goto_2
    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int v0, v1, v0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "BRAVIA 4K 2015"

    sget-object v3, Lorg/telegram/messenger/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x10

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    add-int/lit8 v2, v2, 0xf

    div-int/lit8 v2, v2, 0x10

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    goto :goto_2

    :pswitch_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int/2addr v1, v2

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int/2addr v0, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_1
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static getMediaFormat(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;Z)Landroid/media/MediaFormat;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "max-width"

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "max-height"

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "max-input-size"

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v1, "auto-frc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    return-object v0
.end method

.method private static getPixelWidthHeightRatio(Lorg/telegram/messenger/exoplayer2/Format;)F
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->pixelWidthHeightRatio:F

    goto :goto_0
.end method

.method private static getRotationDegrees(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/Format;->rotationDegrees:I

    goto :goto_0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 5

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedWidth:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedHeight:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedUnappliedRotationDegrees:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedPixelWidthHeightRatio:F

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(IIIF)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedWidth:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedHeight:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedUnappliedRotationDegrees:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->lastReportedPixelWidthHeightRatio:F

    :cond_1
    return-void
.end method

.method private renderOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged()V

    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->clearLastReportedVideoSize()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->releaseCodec()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeInitCodec()V

    :cond_1
    return-void
.end method

.method private static setVideoScalingMode(Landroid/media/MediaCodec;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method private skipOutputBuffer(Landroid/media/MediaCodec;I)V
    .locals 2

    const-string/jumbo v0, "skipVideoBuffer"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/util/TraceUtil;->endSection()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z
    .locals 2

    invoke-static {p3, p4}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->areAdaptationCompatible(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p4, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v0, v1, :cond_1

    iget v0, p4, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-gt v0, v1, :cond_1

    iget v0, p4, Lorg/telegram/messenger/exoplayer2/Format;->maxInputSize:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-gt v0, v1, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v1, p4, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v1, p4, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;Lorg/telegram/messenger/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->streamFormats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {p2, v0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getCodecMaxValues(Lorg/telegram/messenger/exoplayer2/Format;[Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->codecMaxValues:Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->deviceNeedsAutoFrcWorkaround:Z

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getMediaFormat(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;Z)Landroid/media/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->setVideoScalingMode(Landroid/media/MediaCodec;I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isReady()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    move v0, v1

    goto :goto_0
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->clearLastReportedVideoSize()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->disable()V

    :try_start_0
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->enable()V

    return-void
.end method

.method protected onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getPixelWidthHeightRatio(Lorg/telegram/messenger/exoplayer2/Format;)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getRotationDegrees(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    const-string/jumbo v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-left"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-top"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    const-string/jumbo v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    if-eqz v1, :cond_4

    const-string/jumbo v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingPixelWidthHeightRatio:F

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentWidth:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentPixelWidthHeightRatio:F

    :cond_1
    :goto_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->setVideoScalingMode(Landroid/media/MediaCodec;I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->pendingRotationDegrees:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->currentUnappliedRotationDegrees:I

    goto :goto_3
.end method

.method protected onPositionReset(JZ)V
    .locals 5

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->streamFormats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStreamChanged([Lorg/telegram/messenger/exoplayer2/Format;)V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 9

    if-eqz p11, :cond_0

    move/from16 v0, p7

    invoke-direct {p0, p5, v0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroid/media/MediaCodec;I)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderedFirstFrame:Z

    if-nez v2, :cond_2

    sget v2, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move/from16 v0, p7

    invoke-direct {p0, p5, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, p7

    invoke-direct {p0, p5, v0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v2, p3

    sub-long v4, p9, p1

    sub-long v2, v4, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->frameReleaseTimeHelper:Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;

    move-wide/from16 v0, p9

    invoke-virtual {v6, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/video/VideoFrameReleaseTimeHelper;->adjustReleaseTime(JJ)J

    move-result-wide v2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, -0x7530

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    move/from16 v0, p7

    invoke-direct {p0, p5, v0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->dropOutputBuffer(Landroid/media/MediaCodec;I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    sget v6, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_5

    const-wide/32 v6, 0xc350

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    move/from16 v0, p7

    invoke-direct {p0, p5, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroid/media/MediaCodec;IJ)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x7530

    cmp-long v2, v4, v2

    if-gez v2, :cond_7

    const-wide/16 v2, 0x2af8

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    const-wide/16 v2, 0x2710

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    :try_start_0
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    move/from16 v0, p7

    invoke-direct {p0, p5, v0}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroid/media/MediaCodec;I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected shouldInitCodec()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->shouldInitCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected supportsFormat(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v4, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v5, p2, Lorg/telegram/messenger/exoplayer2/Format;->drmInitData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    if-eqz v5, :cond_1

    move v0, v1

    move v2, v1

    :goto_1
    iget v6, v5, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v0, v6, :cond_2

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->get(I)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->requiresSecureDecryption:Z

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    invoke-interface {p1, v4, v2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v4, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    if-lez v4, :cond_4

    iget v4, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    if-lez v4, :cond_4

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_6

    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    iget v3, p2, Lorg/telegram/messenger/exoplayer2/Format;->frameRate:F

    float-to-double v4, v3

    invoke-virtual {v2, v0, v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v0

    :cond_4
    :goto_2
    iget-boolean v1, v2, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    :goto_3
    if-eqz v0, :cond_9

    const/4 v0, 0x3

    :goto_4
    or-int/2addr v1, v0

    goto :goto_0

    :cond_5
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isVideoSizeSupportedV21(II)Z

    move-result v0

    goto :goto_2

    :cond_6
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    iget v4, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    mul-int/2addr v0, v4

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v4

    if-gt v0, v4, :cond_7

    move v0, v3

    :goto_5
    if-nez v0, :cond_4

    const-string/jumbo v1, "MediaCodecVideoRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lorg/telegram/messenger/exoplayer2/Format;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lorg/telegram/messenger/exoplayer2/Format;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/telegram/messenger/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    const/4 v1, 0x4

    goto :goto_3

    :cond_9
    const/4 v0, 0x2

    goto :goto_4
.end method
