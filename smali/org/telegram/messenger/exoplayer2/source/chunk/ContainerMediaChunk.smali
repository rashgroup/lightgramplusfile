.class public Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$SingleTrackMetadataOutput;


# instance fields
.field private volatile bytesLoaded:I

.field private final chunkCount:I

.field private final extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJIIJLorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    iput p11, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    iput-wide p12, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    iput-object p14, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iput-object p15, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final bytesLoaded()J
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public getNextChunkIndex()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->chunkIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v4

    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v2, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v5, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->getTrackOutput()Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->formatWithOffset(Lorg/telegram/messenger/exoplayer2/Format;J)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v2, p0, v1}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$SingleTrackMetadataOutput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v0
.end method

.method public final seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V
    .locals 0

    return-void
.end method
