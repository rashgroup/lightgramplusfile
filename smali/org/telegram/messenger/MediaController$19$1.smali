.class Lorg/telegram/messenger/MediaController$19$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$19;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$19;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$19;->val$audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$19;->val$audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$19;->val$recordingAudioFileToSend:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    iput-boolean v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$19;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$19;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordSamples:[S
    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$19;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordSamples:[S
    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MediaController;->getWaveform2([SI)[B

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->waveform:[B

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->waveform:[B

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$19;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordTimeCount:J
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$700(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$19;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordTimeCount:J
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$700(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v1, v6

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$19;->val$audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x2bc

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget v0, v0, Lorg/telegram/messenger/MediaController$19;->val$send:I

    if-ne v0, v10, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$19;->val$audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$19;->val$recordingAudioFileToSend:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$19;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordDialogId:J
    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$5400(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$19;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->access$5500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    new-array v4, v11, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget v0, v0, Lorg/telegram/messenger/MediaController$19;->val$send:I

    if-ne v0, v11, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$19;->val$audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    :goto_0
    aput-object v0, v4, v5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget v0, v0, Lorg/telegram/messenger/MediaController$19;->val$send:I

    if-ne v0, v11, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$19;->val$recordingAudioFileToSend:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_2
    aput-object v2, v4, v10

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$19$1;->this$1:Lorg/telegram/messenger/MediaController$19;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$19;->val$recordingAudioFileToSend:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method
