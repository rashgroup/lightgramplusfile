.class Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field final synthetic val$decoderName:Ljava/lang/String;

.field final synthetic val$initializationDurationMs:J

.field final synthetic val$initializedTimestampMs:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;->this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;->val$decoderName:Ljava/lang/String;

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;->val$initializedTimestampMs:J

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;->val$initializationDurationMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;->this$0:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    # getter for: Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->access$000(Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;->val$decoderName:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;->val$initializedTimestampMs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$2;->val$initializationDurationMs:J

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method
