.class Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->enabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field final synthetic val$decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;->this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;->val$decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;->this$0:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    # getter for: Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->access$000(Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;->val$decoderCounters:Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/video/VideoRendererEventListener;->onVideoEnabled(Lorg/telegram/messenger/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method
