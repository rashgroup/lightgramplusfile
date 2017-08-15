.class public final Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
.source "InitializationChunk.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;
.implements Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$SingleTrackMetadataOutput;


# instance fields
.field private volatile bytesLoaded:I

.field private final extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)V
    .locals 14

    const/4 v6, 0x2

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->loadCanceled:Z

    return-void
.end method

.method public format(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-void
.end method

.method public getSampleFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public getSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    return-object v0
.end method

.method public isLoadCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v4

    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v2, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v5, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0, p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$SingleTrackMetadataOutput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->loadCanceled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleMetadata(JIII[B)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    return-void
.end method
