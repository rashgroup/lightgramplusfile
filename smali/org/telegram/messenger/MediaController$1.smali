.class Lorg/telegram/messenger/MediaController$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->samplesCount:J
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$300(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    div-int/lit8 v1, v6, 0x2

    int-to-long v8, v1

    add-long/2addr v8, v2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->samplesCount:J
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$300(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v2

    long-to-double v2, v2

    long-to-double v10, v8

    div-double/2addr v2, v10

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordSamples:[S
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v1

    array-length v1, v1

    int-to-double v10, v1

    mul-double/2addr v2, v10

    double-to-int v3, v2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordSamples:[S
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v1

    array-length v1, v1

    sub-int v7, v1, v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordSamples:[S
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v1

    array-length v1, v1

    int-to-float v1, v1

    int-to-float v2, v3

    div-float v10, v1, v2

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v11, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordSamples:[S
    invoke-static {v11}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordSamples:[S
    invoke-static {v12}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v12

    float-to-int v13, v2

    aget-short v12, v12, v13

    aput-short v12, v11, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v2, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordBufferSize:I
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$200(Lorg/telegram/messenger/MediaController;)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    int-to-float v1, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v1, v10

    int-to-float v7, v7

    div-float v7, v1, v7

    const/4 v1, 0x0

    move v14, v1

    move v1, v2

    move v2, v3

    move v3, v14

    :goto_2
    :try_start_1
    div-int/lit8 v10, v6, 0x2

    if-ge v3, v10, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    const/16 v11, 0x9c4

    if-le v10, v11, :cond_2

    mul-int v11, v10, v10

    int-to-double v12, v11

    add-double/2addr v4, v12

    :cond_2
    float-to-int v11, v1

    if-ne v3, v11, :cond_3

    iget-object v11, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordSamples:[S
    invoke-static {v11}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v11

    array-length v11, v11

    if-ge v2, v11, :cond_3

    iget-object v11, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordSamples:[S
    invoke-static {v11}, Lorg/telegram/messenger/MediaController;->access$400(Lorg/telegram/messenger/MediaController;)[S

    move-result-object v11

    aput-short v10, v11, v2

    add-float/2addr v1, v7

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # setter for: Lorg/telegram/messenger/MediaController;->samplesCount:J
    invoke-static {v1, v8, v9}, Lorg/telegram/messenger/MediaController;->access$302(Lorg/telegram/messenger/MediaController;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v2, v4

    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-double v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v6, v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    if-eqz v6, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/MediaController$1$1;

    invoke-direct {v5, p0, v0, v1}, Lorg/telegram/messenger/MediaController$1$1;-><init>(Lorg/telegram/messenger/MediaController$1;Ljava/nio/ByteBuffer;Z)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/messenger/MediaController$1$2;

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/messenger/MediaController$1$2;-><init>(Lorg/telegram/messenger/MediaController$1;D)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_5
    return-void

    :catch_0
    move-exception v1

    move-wide v2, v4

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$1;->this$0:Lorg/telegram/messenger/MediaController;

    # getter for: Lorg/telegram/messenger/MediaController;->sendAfterDone:I
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1200(Lorg/telegram/messenger/MediaController;)I

    move-result v1

    # invokes: Lorg/telegram/messenger/MediaController;->stopRecordingInternal(I)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$1300(Lorg/telegram/messenger/MediaController;I)V

    goto :goto_5
.end method
