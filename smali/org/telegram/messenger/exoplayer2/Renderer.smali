.class public interface abstract Lorg/telegram/messenger/exoplayer2/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer$ExoPlayerComponent;


# static fields
.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_STARTED:I = 0x2


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;JZJ)V
.end method

.method public abstract getCapabilities()Lorg/telegram/messenger/exoplayer2/RendererCapabilities;
.end method

.method public abstract getMediaClock()Lorg/telegram/messenger/exoplayer2/util/MediaClock;
.end method

.method public abstract getState()I
.end method

.method public abstract getStream()Lorg/telegram/messenger/exoplayer2/source/SampleStream;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract hasReadStreamToEnd()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowStreamError()V
.end method

.method public abstract render(JJ)V
.end method

.method public abstract replaceStream([Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/source/SampleStream;J)V
.end method

.method public abstract resetPosition(J)V
.end method

.method public abstract setCurrentStreamIsFinal()V
.end method

.method public abstract setIndex(I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
