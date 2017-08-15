.class public final Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private volatile bytesLoaded:I

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJILorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    iput-object p11, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    add-long/2addr v4, v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v2, v2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->getTrackOutput()Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->formatWithOffset(Lorg/telegram/messenger/exoplayer2/Format;J)V

    move v2, v6

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v2

    goto :goto_0

    :cond_1
    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v0
.end method
