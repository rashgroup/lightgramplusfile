.class public Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;,
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;,
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ExtensionRendererMode;,
        Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

.field private audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final audioRendererCount:I

.field private audioSessionId:I

.field private audioStreamType:I

.field private audioVolume:F

.field private final componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

.field private final mainHandler:Landroid/os/Handler;

.field private metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

.field private needSetSurface:Z

.field private ownsSurface:Z

.field private playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

.field private final player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

.field private final renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

.field private surface:Landroid/view/Surface;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

.field private textureView:Landroid/view/TextureView;

.field private videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

.field private videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

.field private videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

.field private final videoRendererCount:I

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;",
            "Lorg/telegram/messenger/exoplayer2/LoadControl;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJLjava/util/ArrayList;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/Renderer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v4, v3

    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    move v1, v2

    move v2, v9

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-interface {v5}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioVolume:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    invoke-direct {v0, v1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$002(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Landroid/view/Surface;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$802(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;Lorg/telegram/messenger/exoplayer2/Format;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;)Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    return-object v0
.end method

.method private buildRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJLjava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildVideoRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ILorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildAudioRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ILorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildTextRenderers(Landroid/content/Context;Landroid/os/Handler;ILorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildMetadataRenderers(Landroid/content/Context;Landroid/os/Handler;ILorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Ljava/util/ArrayList;)V

    move-object/from16 v0, p7

    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    if-eq v0, v1, :cond_2

    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v1, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 9

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v3, v1, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    add-int/lit8 v0, v1, 0x1

    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v3, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    :goto_2
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    return-void
.end method

.method public varargs blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->blockingSendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void
.end method

.method protected buildAudioRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ILorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v3, 0x1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v1, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    move-result-object v6

    move-object v2, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V

    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne p4, v7, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :try_start_0
    const-string/jumbo v0, "org.telegram.messenger.exoplayer2.ext.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v1, v2, 0x1

    :try_start_1
    invoke-virtual {p6, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v2, "Loaded LibopusAudioRenderer."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v2, v1

    :goto_1
    :try_start_2
    const-string/jumbo v0, "org.telegram.messenger.exoplayer2.ext.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v1, v2, 0x1

    :try_start_3
    invoke-virtual {p6, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v2, "Loaded LibflacAudioRenderer."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    :try_start_4
    const-string/jumbo v0, "org.telegram.messenger.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/Renderer;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v0, "SimpleExoPlayer"

    const-string/jumbo v1, "Loaded FfmpegAudioRenderer."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    :goto_3
    move v2, v0

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    move v0, v2

    :goto_4
    move v1, v0

    goto :goto_2

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    move v0, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move v0, v1

    goto :goto_3
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Landroid/os/Handler;ILorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    invoke-direct {v0, p4, v1, v2}, Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Landroid/os/Handler;ILorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lorg/telegram/messenger/exoplayer2/text/TextRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;Landroid/os/Looper;)V

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ILorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I",
            "Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;

    sget-object v5, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v9, 0x0

    const/16 v12, 0x32

    move-object v4, p1

    move-wide/from16 v6, p6

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v12}, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;JLorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;I)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_1
    :try_start_0
    const-string/jumbo v2, "org.telegram.messenger.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x32

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/Renderer;

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v2, "SimpleExoPlayer"

    const-string/jumbo v3, "Loaded LibvpxVideoRenderer."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method public clearVideoSurface()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public getAudioDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getComponentListener()Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    return-object v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lorg/telegram/messenger/exoplayer2/Timeline;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentTimeline()Lorg/telegram/messenger/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentTrackSelections()Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;->params:Landroid/media/PlaybackParams;

    goto :goto_0
.end method

.method public getPlaybackState()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->getRendererType(I)I

    move-result v0

    return v0
.end method

.method public getVideoDecoderCounters()Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->release()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->removeListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekTo(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekTo(J)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->seekToDefaultPosition(I)V

    return-void
.end method

.method public varargs sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void
.end method

.method public setAudioDebugListener(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioDebugListener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 10

    const/4 v0, 0x0

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioStreamType:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v3, v1, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    add-int/lit8 v0, v1, 0x1

    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v3, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setId3Output(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setMetadataOutput(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)V

    return-void
.end method

.method public setMetadataOutput(Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->metadataOutput:Lorg/telegram/messenger/exoplayer2/metadata/MetadataRenderer$Output;

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;-><init>(Landroid/media/PlaybackParams;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v3, v1, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    add-int/lit8 v0, v1, 0x1

    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x3

    invoke-direct {v7, v6, v8, p1}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v3, v1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->playbackParamsHolder:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$PlaybackParamsHolder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public setTextOutput(Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textOutput:Lorg/telegram/messenger/exoplayer2/text/TextRenderer$Output;

    return-void
.end method

.method public setVideoDebugListener(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoDebugListener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    return-void
.end method

.method public setVideoListener(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 10

    const/4 v0, 0x0

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->videoRendererCount:I

    new-array v3, v1, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    add-int/lit8 v0, v1, 0x1

    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v3, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-nez p1, :cond_0

    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SimpleExoPlayer"

    const-string/jumbo v2, "Replacing existing SurfaceTextureListener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    invoke-direct {p0, v0, v3}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->needSetSurface:Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->componentListener:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1
.end method

.method public setVolume(F)V
    .locals 10

    const/4 v0, 0x0

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioVolume:F

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->audioRendererCount:I

    new-array v3, v1, [Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->renderers:[Lorg/telegram/messenger/exoplayer2/Renderer;

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    invoke-interface {v6}, Lorg/telegram/messenger/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    add-int/lit8 v0, v1, 0x1

    new-instance v7, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v7, v3, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->sendMessages([Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->player:Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayer;->stop()V

    return-void
.end method
