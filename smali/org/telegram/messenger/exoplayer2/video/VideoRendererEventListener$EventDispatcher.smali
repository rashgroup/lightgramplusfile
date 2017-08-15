.class public final Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    return-object v0
.end method


# virtual methods
.method public decoderInitialized(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;-><init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public disabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$7;-><init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public droppedFrames(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;-><init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public enabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;-><init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public inputFormatChanged(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;-><init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public renderedFirstFrame(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;-><init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoSizeChanged(IIIF)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;-><init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IIIF)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
