.class public Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;
.super Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;
.implements Lorg/telegram/messenger/exoplayer2/util/MediaClock;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private allowPositionDiscontinuity:Z

.field private audioSessionId:I

.field private final audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

.field private currentPositionUs:J

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private passthroughEnabled:Z

.field private passthroughMediaFormat:Landroid/media/MediaFormat;

.field private pcmEncoding:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;",
            "Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-direct {v0, p6, p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v0, p4, p5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method protected allowPassthrough(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isPassthroughSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected configureCodec(Landroid/media/MediaCodec;Lorg/telegram/messenger/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    const-string/jumbo v2, "audio/raw"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/Format;->getFrameworkMediaFormatV16()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 2

    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->getDecoderInfo(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;
    .locals 0

    return-object p0
.end method

.method public getPositionUs()J
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected handleAudioTrackDiscontinuity()V
    .locals 0

    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setVolume(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    check-cast p2, Landroid/media/PlaybackParams;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method protected onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V

    const-string/jumbo v0, "audio/raw"

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/messenger/exoplayer2/Format;->pcmEncoding:I

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughMediaFormat:Landroid/media/MediaFormat;

    :cond_0
    const-string/jumbo v0, "channel-count"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->pcmEncoding:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->configure(Ljava/lang/String;IIII)V

    return-void

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "audio/raw"

    goto :goto_1
.end method

.method protected onOutputStreamEnded()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handleEndOfStream()V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return-void
.end method

.method protected onStarted()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStarted()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->play()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pause()V

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioTrackUnderrun(IJJ)V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->passthroughEnabled:Z

    if-eqz v2, :cond_0

    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_0
    return v0

    :cond_0
    if-eqz p11, :cond_1

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handleDiscontinuity()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->initialize(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSessionId(I)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->onAudioSessionId(I)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->play()V

    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    invoke-virtual {v2, p6, p9, p10}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->handleBuffer(Ljava/nio/ByteBuffer;J)I
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->handleAudioTrackDiscontinuity()V

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_3
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioTrack:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->audioSessionId:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->initialize(I)I
    :try_end_2
    .catch Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected supportsFormat(Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/audio/MediaCodecAudioRenderer;->allowPassthrough(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getPassthroughDecoderInfo()Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2, v0}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecSelector;->getDecoderInfo(Ljava/lang/String;Z)Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget v3, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    iget v3, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    if-eq v3, v5, :cond_3

    iget v3, p2, Lorg/telegram/messenger/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget v3, p2, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    if-eq v3, v5, :cond_4

    iget v3, p2, Lorg/telegram/messenger/exoplayer2/Format;->channelCount:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    if-eqz v0, :cond_6

    const/4 v0, 0x3

    :goto_1
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_1
.end method
