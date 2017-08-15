.class public Lorg/telegram/messenger/voip/AudioRecordJNI;
.super Ljava/lang/Object;
.source "AudioRecordJNI.java"


# instance fields
.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private agc:Landroid/media/audiofx/AutomaticGainControl;

.field private audioRecord:Landroid/media/AudioRecord;

.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferSize:I

.field private nativeInst:J

.field private ns:Landroid/media/audiofx/NoiseSuppressor;

.field private running:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->nativeInst:J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/voip/AudioRecordJNI;)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/voip/AudioRecordJNI;)Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/voip/AudioRecordJNI;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->nativeCallback(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private getBufferSize(I)I
    .locals 3

    const v0, 0xbb80

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private native nativeCallback(Ljava/nio/ByteBuffer;)V
.end method

.method private startThread()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "thread already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/voip/AudioRecordJNI$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/AudioRecordJNI$1;-><init>(Lorg/telegram/messenger/voip/AudioRecordJNI;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public init(IIII)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already inited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p4}, Lorg/telegram/messenger/voip/AudioRecordJNI;->getBufferSize(I)I

    move-result v5

    iput p4, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->bufferSize:I

    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    const/16 v3, 0x10

    :goto_0
    const/4 v4, 0x2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    const/16 v3, 0xc

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AudioRecord init failed!"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    :cond_4
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public start()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    :try_start_1
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-static {v2}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-static {v2}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    const-string/jumbo v3, "user_system_ns"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-static {v2}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const-string/jumbo v3, "use_system_aec"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_3
    :try_start_4
    invoke-direct {p0}, Lorg/telegram/messenger/voip/AudioRecordJNI;->startThread()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_5
    const-string/jumbo v2, "AutomaticGainControl is not available on this device :("

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_6
    const-string/jumbo v3, "error creating AutomaticGainControl"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v2, "Error initializing AudioRecord"

    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    :try_start_7
    const-string/jumbo v2, "NoiseSuppressor is not available on this device :("

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_8
    const-string/jumbo v3, "error creating NoiseSuppressor"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :cond_6
    :try_start_9
    const-string/jumbo v2, "AcousticEchoCanceler is not available on this device"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catch_3
    move-exception v2

    :try_start_a
    const-string/jumbo v3, "error creating AcousticEchoCanceler"

    invoke-static {v3, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    return-void
.end method
