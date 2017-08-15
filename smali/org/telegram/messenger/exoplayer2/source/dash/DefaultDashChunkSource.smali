.class public Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field private final adaptationSetIndex:I

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final elapsedRealtimeOffsetMs:J

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

.field private final maxSegmentsPerLoad:I

.field private missingLastSegment:Z

.field private periodIndex:I

.field private final representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

.field private final trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;IILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JI)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndex:I

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    move-wide/from16 v0, p7

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    move/from16 v0, p9

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/List;

    move-result-object v6

    invoke-interface {p5}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v2

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v2, v2

    if-ge v3, v2, :cond_0

    invoke-interface {p5, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v2

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v8, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-direct {v8, v4, v5, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)V

    aput-object v8, v7, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getNowUnixTimeUs()J
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private getRepresentations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->adaptationSetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    return-object v0
.end method

.method private static newInitializationChunk(Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;)Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    if-eqz p5, :cond_0

    invoke-virtual {p5, p6, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p6

    if-nez p6, :cond_1

    :goto_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-virtual {p5, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p5, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    return-object v1

    :cond_0
    move-object p5, p6

    goto :goto_0

    :cond_1
    move-object p5, p6

    goto :goto_0
.end method

.method private static newMediaChunk(Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/Format;II)Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
    .locals 20

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v6

    iget-object v4, v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v12

    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;

    move-object/from16 v5, p1

    move-object v6, v2

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v14, p6

    move-object/from16 v15, p2

    invoke-direct/range {v4 .. v15}, Lorg/telegram/messenger/exoplayer2/source/chunk/SingleSampleMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJILorg/telegram/messenger/exoplayer2/Format;)V

    :goto_0
    return-object v4

    :cond_0
    const/4 v15, 0x1

    const/4 v2, 0x1

    :goto_1
    move/from16 v0, p7

    if-ge v2, v0, :cond_1

    add-int v3, p6, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    invoke-virtual {v6, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    add-int v2, p6, v15

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v12

    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;->length:J

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    iget-wide v4, v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v0, v4

    move-wide/from16 v16, v0

    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-object/from16 v18, v0

    move-object/from16 v5, p1

    move-object v6, v2

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v14, p6

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lorg/telegram/messenger/exoplayer2/source/chunk/ContainerMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJIIJLorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer2/Format;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v6, v3

    goto :goto_1
.end method


# virtual methods
.method public final getNextChunk(Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;JLorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->endTimeUs:J

    sub-long/2addr v0, p2

    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(J)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-nez v8, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v5

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v6

    :cond_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_5

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->newInitializationChunk(Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;)Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->getNowUnixTimeUs()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastSegmentNum()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_e

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v2, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->availabilityStartTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    sub-long v2, v4, v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepth:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_3
    if-nez p1, :cond_b

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v3

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->constrainValue(III)I

    move-result v6

    :cond_7
    if-gt v6, v1, :cond_8

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    if-eqz v2, :cond_d

    if-lt v6, v1, :cond_d

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_c

    :cond_9
    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p4, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v6

    if-ge v6, v2, :cond_7

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectedFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionReason()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->newMediaChunk(Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/Format;II)Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkHolder;->chunk:Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;

    goto/16 :goto_0

    :cond_e
    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_3
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

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

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
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;)V
    .locals 4

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v1

    aget-object v1, v0, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->getSampleFormat()Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->setSampleFormat(Lorg/telegram/messenger/exoplayer2/Format;)V

    :cond_0
    iget-object v0, v1, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->getSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/DashWrappingSegmentIndex;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;Ljava/lang/String;)V

    iput-object v2, v1, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    :cond_1
    return-void
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;)Z
    .locals 4

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;

    if-eqz v0, :cond_1

    instance-of v0, p3, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v2, 0x194

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastSegmentNum()I

    move-result v2

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v0

    if-le v0, v2, :cond_1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil;->maybeBlacklistTrack(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;ILjava/lang/Exception;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateManifest(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 6

    :try_start_0
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->trackSelection:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->representationHolders:[Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$RepresentationHolder;->updateRepresentation(JLorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    :cond_0
    return-void
.end method
