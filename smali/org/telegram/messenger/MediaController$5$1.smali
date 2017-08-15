.class Lorg/telegram/messenger/MediaController$5$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$5;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$5;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->isPaused:Z
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2500(Lorg/telegram/messenger/MediaController;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # operator-- for: Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2610(Lorg/telegram/messenger/MediaController;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->lastProgress:I
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->lastProgress:I
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # setter for: Lorg/telegram/messenger/MediaController;->lastProgress:I
    invoke-static {v2, v1}, Lorg/telegram/messenger/MediaController;->access$2702(Lorg/telegram/messenger/MediaController;I)I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->lastProgress:I
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    iput v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->lastPlayPcm:J
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2800(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->lastPlayPcm:J
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2800(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    long-to-float v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2900(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->lastProgress:I
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-ne v1, v2, :cond_3

    goto/16 :goto_0
.end method
