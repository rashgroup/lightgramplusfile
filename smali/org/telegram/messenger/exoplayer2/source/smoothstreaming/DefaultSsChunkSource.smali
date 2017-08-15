.class public Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;
    }
.end annotation


# instance fields
.field private currentManifestChunkOffset:I

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final elementIndex:I

.field private final extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private final manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;)V
    .locals 19

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v18, v2, p3

    invoke-interface/range {p4 .. p4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v2

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v12, v3, v4

    move-object/from16 v0, v18

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    const/4 v15, 0x4

    :goto_1
    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    move-object/from16 v0, v18

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->type:I

    move-object/from16 v0, v18

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->timescale:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p2

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p6

    invoke-direct/range {v3 .. v17}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLorg/telegram/messenger/exoplayer2/Format;I[Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    new-instance v5, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v4, v12, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/Extractor;Lorg/telegram/messenger/exoplayer2/Format;ZZ)V

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static newMediaChunk(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;Ljava/lang/String;IJJILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
    .locals 19

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;

    const/4 v13, 0x1

    move-object/from16 v3, p1

    move-object v4, v0

    move-object/from16 v5, p0

    move/from16 v6, p9

    move-object/from16 v7, p10

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p4

    move-wide/from16 v14, p5

    move-object/from16 v16, p11

    move-object/from16 v17, p0

    invoke-direct/range {v2 .. v17}, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJIIJLorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer2/Format;)V

    return-object v2
.end method


# virtual methods
.method public final getNextChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;JLorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long v2, v2, p2

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4, v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v3, v2, v3

    iget v2, v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    if-nez p1, :cond_5

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v2

    :cond_4
    iget v4, v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lt v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    sub-int/2addr v2, v4

    if-gez v2, :cond_4

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v8

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v4

    add-long v10, v8, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int v7, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->extractorWrappers:[Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    aget-object v14, v5, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v5, v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v13

    invoke-static/range {v3 .. v14}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->newMediaChunk(Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;Ljava/lang/String;IJJILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_0
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V
    .locals 0

    return-void
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateManifest(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v0, v0, v1

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->elementIndex:I

    aget-object v2, v2, v3

    if-eqz v1, :cond_0

    iget v3, v2, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-nez v3, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    return-void

    :cond_1
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v2

    cmp-long v4, v4, v2

    if-gtz v4, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkIndex(J)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;->currentManifestChunkOffset:I

    goto :goto_0
.end method
