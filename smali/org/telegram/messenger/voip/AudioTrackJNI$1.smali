.class Lorg/telegram/messenger/voip/AudioTrackJNI$1;
.super Ljava/lang/Object;
.source "AudioTrackJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/AudioTrackJNI;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/AudioTrackJNI;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z
    invoke-static {v0}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$100(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B
    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$200(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v1

    # invokes: Lorg/telegram/messenger/voip/AudioTrackJNI;->nativeCallback([B)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$300(Lorg/telegram/messenger/voip/AudioTrackJNI;[B)V

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->buffer:[B
    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$200(Lorg/telegram/messenger/voip/AudioTrackJNI;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x780

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->running:Z
    invoke-static {v0}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$100(Lorg/telegram/messenger/voip/AudioTrackJNI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioTrackJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioTrackJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioTrackJNI;->audioTrack:Landroid/media/AudioTrack;
    invoke-static {v0}, Lorg/telegram/messenger/voip/AudioTrackJNI;->access$000(Lorg/telegram/messenger/voip/AudioTrackJNI;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    const-string/jumbo v0, "tg-voip"

    const-string/jumbo v1, "audiotrack thread exits"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "error starting AudioTrack"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
