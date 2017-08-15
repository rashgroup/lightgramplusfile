.class Lorg/telegram/messenger/voip/AudioRecordJNI$1;
.super Ljava/lang/Object;
.source "AudioRecordJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/AudioRecordJNI;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/AudioRecordJNI;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z
    invoke-static {v0}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$000(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {v0}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$200(Lorg/telegram/messenger/voip/AudioRecordJNI;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$100(Lorg/telegram/messenger/voip/AudioRecordJNI;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x780

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z
    invoke-static {v0}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$000(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;
    invoke-static {v0}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$200(Lorg/telegram/messenger/voip/AudioRecordJNI;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string/jumbo v0, "tg-voip"

    const-string/jumbo v1, "audiotrack thread exits"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI$1;->this$0:Lorg/telegram/messenger/voip/AudioRecordJNI;

    # getter for: Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$100(Lorg/telegram/messenger/voip/AudioRecordJNI;)Ljava/nio/ByteBuffer;

    move-result-object v1

    # invokes: Lorg/telegram/messenger/voip/AudioRecordJNI;->nativeCallback(Ljava/nio/ByteBuffer;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->access$300(Lorg/telegram/messenger/voip/AudioRecordJNI;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
