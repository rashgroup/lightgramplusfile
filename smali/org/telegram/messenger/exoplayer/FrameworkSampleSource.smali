.class public final Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;
.super Ljava/lang/Object;
.source "FrameworkSampleSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/SampleSource;
.implements Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_MASK:I = 0x3

.field private static final TRACK_STATE_DISABLED:I = 0x0

.field private static final TRACK_STATE_ENABLED:I = 0x1

.field private static final TRACK_STATE_FORMAT_SENT:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private extractor:Landroid/media/MediaExtractor;

.field private final fileDescriptor:Ljava/io/FileDescriptor;

.field private final fileDescriptorLength:J

.field private final fileDescriptorOffset:J

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private pendingDiscontinuities:[Z

.field private pendingSeekPositionUs:J

.field private preparationError:Ljava/io/IOException;

.field private prepared:Z

.field private remainingReleaseCount:I

.field private trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private trackStates:[I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->uri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->headers:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->fileDescriptor:Ljava/io/FileDescriptor;

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->fileDescriptorOffset:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->fileDescriptorLength:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->fileDescriptor:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->fileDescriptorOffset:J

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->fileDescriptorLength:J

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->uri:Landroid/net/Uri;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->headers:Ljava/util/Map;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createMediaFormat(Landroid/media/MediaFormat;)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string/jumbo v1, "mime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "language"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getOptionalStringV16(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v1, "max-input-size"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v1, "width"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v1, "height"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v1, "rotation-degrees"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v1, "channel-count"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v1, "sample-rate"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v1, "encoder-delay"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v22

    const-string/jumbo v1, "encoder-padding"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v23

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "csd-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "csd-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "durationUs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "durationUs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_1
    const-string/jumbo v1, "audio/raw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v21, 0x2

    :goto_2
    new-instance v1, Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const-wide v15, 0x7fffffffffffffffL

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-direct/range {v1 .. v23}, Lorg/telegram/messenger/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/MediaFormat;->setFrameworkFormatV16(Landroid/media/MediaFormat;)V

    return-object v1

    :cond_1
    const-wide/16 v6, -0x1

    goto :goto_1

    :cond_2
    const/16 v21, -0x1

    goto :goto_2
.end method

.method private getDrmInitDataV18()Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v1

    new-instance v5, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string/jumbo v6, "video/mp4"

    invoke-direct {v5, v6, v1}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v0, v5}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private static final getOptionalIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static final getOptionalStringV16(Landroid/media/MediaFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private seekToUsInternal(JZ)V
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->pendingSeekPositionUs:J

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    :cond_0
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->lastSeekPositionUs:J

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->pendingSeekPositionUs:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, p1, p2, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public disable(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    aput v1, v0, p1

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public enable(IJ)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    aput v1, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {p0, p2, p3, v1}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->seekToUsInternal(JZ)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getBufferedPositionUs()J
    .locals 6

    const-wide/16 v0, -0x1

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getCachedDuration()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x3

    goto :goto_0

    :cond_1
    add-long v0, v4, v2

    goto :goto_0
.end method

.method public getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    throw v0

    :cond_0
    return-void
.end method

.method public prepare(J)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->prepared:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v0, v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    move v0, v6

    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->createMediaFormat(Landroid/media/MediaFormat;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->fileDescriptor:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->fileDescriptorOffset:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->fileDescriptorLength:J

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->preparationError:Ljava/io/IOException;

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->prepared:Z

    :cond_3
    move v6, v7

    goto :goto_0
.end method

.method public readData(IJLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    aget v0, v0, p1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->getDrmInitDataV18()Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    move-result-object v0

    :goto_2
    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->trackStates:[I

    aput v3, v0, p1

    const/4 v2, -0x4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    if-ne v0, p1, :cond_6

    iget-object v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    iget-object v2, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iput v1, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    iget-object v1, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget v2, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    iput v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    invoke-virtual {p5}, Lorg/telegram/messenger/exoplayer/SampleHolder;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->cryptoInfo:Lorg/telegram/messenger/exoplayer/CryptoInfo;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/CryptoInfo;->setFromExtractorV16(Landroid/media/MediaExtractor;)V

    :cond_4
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->pendingSeekPositionUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v2, -0x3

    goto :goto_1

    :cond_5
    iput v1, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    goto :goto_3

    :cond_6
    if-gez v0, :cond_7

    const/4 v0, -0x1

    :goto_4
    move v2, v0

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method public readDiscontinuity(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->lastSeekPositionUs:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public register()Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    return-object p0
.end method

.method public release()V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->extractor:Landroid/media/MediaExtractor;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekToUs(J)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer/FrameworkSampleSource;->seekToUsInternal(JZ)V

    return-void
.end method
