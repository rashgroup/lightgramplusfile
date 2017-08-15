.class public final Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;,
        Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final ERROR_BAD_VALUE:I = -0x2

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MODE_STATIC:I = 0x0

.field private static final MODE_STREAM:I = 0x1

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field public static final SESSION_ID_NOT_SET:I = 0x0

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field private static final WRITE_NON_BLOCKING:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private final audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

.field private bufferSize:I

.field private bufferSizeUs:J

.field private channelConfig:I

.field private currentSourceBuffer:Ljava/nio/ByteBuffer;

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private hasData:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastFeedElapsedRealtimeMs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private final listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

.field private nextPlayheadOffsetIndex:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resampledBuffer:Ljava/nio/ByteBuffer;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private sourceEncoding:I

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private streamType:I

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private targetEncoding:I

.field private temporaryBuffer:[B

.field private temporaryBufferOffset:I

.field private useResampledBuffer:Z

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    sput-boolean v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string/jumbo v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    return-void

    :cond_1
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private checkAudioTrackInitialized()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :goto_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    :catch_0
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v0
.end method

.method private durationUsToFrames(J)J
    .locals 5

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubmittedFrames()J
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    :cond_2
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v0, v1, :cond_3

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v0, :cond_5

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string/jumbo v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    :cond_6
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v1, :cond_7

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string/jumbo v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    :cond_8
    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v1, :cond_9

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string/jumbo v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private needsPassthroughWorkarounds()Z
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overrideHasPendingData()Z
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pcmBytesToFrames(J)J
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private static resampleTo16BitPcm(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v1, v2, v0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :sswitch_0
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v1, :cond_1

    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    :cond_1
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sparse-switch p1, :sswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :sswitch_1
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :sswitch_2
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :goto_1
    :sswitch_3
    if-ge v0, v2, :cond_2

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_2
    :sswitch_4
    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :goto_3
    :sswitch_5
    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    :cond_2
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x3 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x3 -> :sswitch_3
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private resetSyncParams()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    return-void
.end method

.method private setAudioTrackVolume()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private static setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private static setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)I
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0x15

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    move v4, v2

    :goto_0
    if-nez v4, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    if-ne v0, p1, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v3, :cond_4

    :cond_1
    :goto_2
    return v1

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    :cond_5
    if-eqz v4, :cond_19

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6

    iput-object v11, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    move v1, v3

    goto :goto_2

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    if-eq v0, v4, :cond_f

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->useResampledBuffer:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    if-ne v0, v3, :cond_10

    move v0, v2

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampleTo16BitPcm(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    invoke-static {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    :cond_8
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-nez v0, :cond_11

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    move v2, v1

    :goto_5
    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    if-ge v0, v10, :cond_b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    array-length v3, v3

    if-ge v3, v0, :cond_a

    :cond_9
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    invoke-virtual {p1, v4, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    :cond_b
    :goto_6
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v0, :cond_c

    iget-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    :cond_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sget v3, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    if-ge v3, v10, :cond_13

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v6

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v8, v3

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v3, v4

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    sub-int v3, v4, v3

    if-lez v3, :cond_e

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBuffer:[B

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    invoke-virtual {v3, v4, v5, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-ltz v1, :cond_d

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->temporaryBufferOffset:I

    :cond_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_e
    :goto_7
    if-gez v1, :cond_14

    new-instance v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$WriteException;-><init>(I)V

    throw v0

    :cond_f
    move v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v1

    goto/16 :goto_4

    :cond_11
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-ne v0, v2, :cond_12

    sub-long v6, v4, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x30d40

    cmp-long v0, v6, v8

    if-lez v0, :cond_12

    const-string/jumbo v0, "AudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Discontinuity detected [expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    :cond_12
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    if-ne v0, v3, :cond_18

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    sub-long v4, p2, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    goto/16 :goto_5

    :cond_13
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    goto :goto_7

    :cond_14
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-nez v3, :cond_15

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    :cond_15
    if-ne v1, v0, :cond_17

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    :cond_16
    iput-object v11, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    or-int/lit8 v2, v2, 0x2

    :cond_17
    move v1, v2

    goto/16 :goto_2

    :cond_18
    move v2, v1

    goto/16 :goto_5

    :cond_19
    move v2, v1

    goto/16 :goto_6
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;IIII)V
    .locals 10

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    :goto_0
    const-string/jumbo v1, "audio/raw"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result p4

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    if-ne v1, p4, :cond_3

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    if-ne v1, p3, :cond_3

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    if-ne v1, v0, :cond_3

    :goto_2
    return-void

    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1c

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xcc

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xdc

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xfc

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x4fc

    goto :goto_0

    :pswitch_7
    sget v0, Lorg/telegram/messenger/exoplayer2/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    const/high16 v1, -0x80000000

    if-eq p4, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p4, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported PCM encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sourceEncoding:I

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->passthrough:Z

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    if-eqz v3, :cond_4

    :goto_3
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    mul-int/lit8 v1, p2, 0x2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    if-eqz p5, :cond_5

    iput p5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    :goto_4
    if-eqz v3, :cond_c

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    goto :goto_2

    :cond_4
    const/4 p4, 0x2

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_8

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    :cond_6
    const/16 v0, 0x5000

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_4

    :cond_7
    const v0, 0xc000

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_4

    :cond_8
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    invoke-static {p3, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    const/4 v0, -0x2

    if-eq v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    mul-int/lit8 v2, v1, 0x4

    const-wide/32 v4, 0x3d090

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v4

    long-to-int v0, v4

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    mul-int/2addr v0, v4

    int-to-long v4, v1

    const-wide/32 v6, 0xb71b0

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v6

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    if-ge v2, v0, :cond_a

    :goto_7
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    if-le v2, v1, :cond_b

    move v0, v1

    goto :goto_7

    :cond_b
    move v0, v2

    goto :goto_7

    :cond_c
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v0

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getCurrentPositionUs(Z)J
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->maybeSampleSyncParams()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackSpeed()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v2, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    add-long/2addr v0, v2

    :goto_1
    if-nez p1, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeUs:J

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)I
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasPendingData()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    sub-long v4, v0, v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->listener:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSizeUs:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$Listener;->onUnderrun(IJJ)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->writeBuffer(Ljava/nio/ByteBuffer;J)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->lastFeedElapsedRealtimeMs:J

    return v0
.end method

.method public handleDiscontinuity()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    :cond_0
    return-void
.end method

.method public handleEndOfStream()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->handleEndOfStream(J)V

    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(I)I
    .locals 10

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    if-nez p1, :cond_2

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->checkAudioTrackInitialized()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    sget-boolean v0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v7, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    move v4, v9

    move v5, v9

    move v6, v8

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setAudioTrackVolume()V

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->hasData:Z

    return v7

    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->bufferSize:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resumeSystemTimeUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    return-void
.end method

.method public reset()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedPcmBytes:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->submittedEncodedFrames:J

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->framesPerEncodedSample:I

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->currentSourceBuffer:Ljava/nio/ByteBuffer;

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->startMediaTimeState:I

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->latencyUs:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->resetSyncParams()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;-><init>(Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$1;->start()V

    :cond_1
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtil;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public setStreamType(I)Z
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->streamType:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->reset()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->volume:F

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;->setAudioTrackVolume()V

    :cond_0
    return-void
.end method
