.class Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$2;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[Lorg/telegram/messenger/exoplayer2/extractor/Extractor;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->released:Z
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$100(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->callback:Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$200(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$2;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;)V

    :cond_0
    return-void
.end method
