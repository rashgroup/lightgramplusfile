.class public Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;
.super Ljava/lang/Object;
.source "SmoothStreamingChunkSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/ChunkSource;
.implements Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;
    }
.end annotation


# static fields
.field private static final INITIALIZATION_VECTOR_SIZE:I = 0x8

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388


# instance fields
.field private final adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

.field private currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

.field private currentManifestChunkOffset:I

.field private final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private final drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

.field private enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

.field private final evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final extractorWrappers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private fatalError:Ljava/io/IOException;

.field private final live:Z

.field private final liveEdgeLatencyUs:J

.field private final manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher",
            "<",
            "Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaFormats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private needManifestRefresh:Z

.field private prepareCalled:Z

.field private final trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;)V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;J)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher",
            "<",
            "Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;",
            "Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            "Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;",
            "Lorg/telegram/messenger/exoplayer/upstream/DataSource;",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackSelector:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p6

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->liveEdgeLatencyUs:J

    new-instance v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    iget-boolean v0, p2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    iget-object v0, p2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->data:[B

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getProtectionElementKeyId([B)[B

    move-result-object v1

    new-array v2, v6, [Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    const/16 v5, 0x8

    invoke-direct {v4, v6, v5, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    aput-object v4, v2, v3

    new-instance v1, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    new-instance v3, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string/jumbo v4, "video/mp4"

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;->data:[B

    invoke-direct {v3, v4, v0}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/DrmInitData$SchemeInitData;)V

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher",
            "<",
            "Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;",
            ">;",
            "Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;",
            "Lorg/telegram/messenger/exoplayer/upstream/DataSource;",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;",
            "J)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;-><init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;J)V

    return-void
.end method

.method private static getLiveSeekPosition(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;J)J
    .locals 9

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v1, v1, v0

    iget v4, v1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-lez v4, :cond_0

    iget v4, v1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    iget v6, v1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-long v0, v2, p1

    return-wide v0
.end method

.method private static getManifestTrackIndex(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;Lorg/telegram/messenger/exoplayer/chunk/Format;)I
    .locals 3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getManifestTrackKey(II)I
    .locals 1

    const/high16 v0, 0x10000

    if-gt p0, v0, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getProtectionElementKeyId([B)[B
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "<KID>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    const-string/jumbo v3, "</KID>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->swap([BII)V

    return-object v0
.end method

.method private initManifestTrack(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;II)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 24

    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getManifestTrackKey(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-eqz v2, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    if-eqz v2, :cond_1

    const-wide/16 v6, -0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v12, v2, p2

    iget-object v2, v12, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v2, v2, p3

    iget-object v11, v2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v2, v12, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v2, v2, p3

    iget-object v10, v2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->csd:[[B

    iget v2, v12, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->durationUs:J

    goto :goto_1

    :pswitch_0
    iget-object v2, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v3, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    iget v4, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    const/4 v5, -0x1

    iget v8, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iget v9, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    sget v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    :goto_2
    new-instance v9, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    iget-wide v12, v12, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->timescale:J

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackEncryptionBoxes:[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v19, v0

    sget v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-ne v11, v2, :cond_3

    const/16 v20, 0x4

    :goto_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v10, p3

    move-wide/from16 v16, v6

    invoke-direct/range {v9 .. v22}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;-><init>(IIJJJLorg/telegram/messenger/exoplayer/MediaFormat;[Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v9}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer/extractor/mp4/Track;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    move/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    new-instance v4, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    invoke-direct {v4, v2}, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;-><init>(Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    move/from16 v0, v23

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v2, v18

    goto/16 :goto_0

    :pswitch_1
    if-eqz v10, :cond_2

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    :goto_4
    iget-object v2, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v3, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    iget v4, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    const/4 v5, -0x1

    iget v8, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->audioChannels:I

    iget v9, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->audioSamplingRate:I

    iget-object v11, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->language:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    sget v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    goto :goto_2

    :cond_2
    iget v2, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->audioSamplingRate:I

    iget v3, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->audioChannels:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(II)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    goto :goto_4

    :pswitch_2
    iget-object v3, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v4, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    iget v5, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    iget-object v8, v11, Lorg/telegram/messenger/exoplayer/chunk/Format;->language:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v18

    sget v11, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->TYPE_text:I

    goto :goto_2

    :cond_3
    const/16 v20, -0x1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static newMediaChunk(Lorg/telegram/messenger/exoplayer/chunk/Format;Landroid/net/Uri;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer/drm/DrmInitData;Lorg/telegram/messenger/exoplayer/upstream/DataSource;IJJILorg/telegram/messenger/exoplayer/MediaFormat;II)Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;
    .locals 21

    const-wide/16 v2, 0x0

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    const-wide/16 v4, -0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    new-instance v1, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;

    const/16 v18, 0x1

    const/16 v19, -0x1

    move-object/from16 v2, p5

    move-object v3, v0

    move/from16 v4, p11

    move-object/from16 v5, p0

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p6

    move-wide/from16 v11, p7

    move-object/from16 v13, p3

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p4

    invoke-direct/range {v1 .. v19}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIJLorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer/MediaFormat;IILorg/telegram/messenger/exoplayer/drm/DrmInitData;ZI)V

    return-object v1
.end method

.method private static swap([BII)V
    .locals 2

    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    aput-byte v0, p0, p2

    return-void
.end method


# virtual methods
.method public adaptiveTrack(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;I[I)V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v7, v0, p2

    array-length v0, p3

    new-array v3, v0, [Lorg/telegram/messenger/exoplayer/chunk/Format;

    const/4 v0, 0x0

    move v2, v0

    move v4, v5

    move-object v0, v6

    :goto_1
    array-length v1, v3

    if-ge v2, v1, :cond_3

    aget v1, p3, v2

    iget-object v8, v7, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v8, v8, v1

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    aput-object v8, v3, v2

    invoke-direct {p0, p1, p2, v1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->initManifestTrack(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;II)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v1

    if-eqz v0, :cond_1

    iget v8, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    if-le v8, v5, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    iget v8, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->width:I

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v1, v1, Lorg/telegram/messenger/exoplayer/MediaFormat;->height:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/telegram/messenger/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;-><init>(Lorg/telegram/messenger/exoplayer/MediaFormat;I[Lorg/telegram/messenger/exoplayer/chunk/Format;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public continueBuffering(J)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    if-eq v1, v0, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v2

    aget-object v1, v1, v2

    iget v2, v1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v4

    aget-object v3, v3, v4

    if-eqz v2, :cond_2

    iget v4, v3, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-nez v4, :cond_4

    :cond_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    :goto_1
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iput-boolean v8, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->getManifestLoadStartTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v4

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_5

    iget v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    goto :goto_1

    :cond_5
    iget v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    invoke-virtual {v1, v6, v7}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkIndex(J)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    goto :goto_1
.end method

.method public disable(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;->disable()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->disable()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iput-object v1, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public enable(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;->enable()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->enable()V

    :cond_1
    return-void
.end method

.method public fixedTrack(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->initManifestTrack(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;II)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v1, v1, p2

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    aget-object v1, v1, p3

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-direct {v3, v0, p2, v1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;-><init>(Lorg/telegram/messenger/exoplayer/MediaFormat;ILorg/telegram/messenger/exoplayer/chunk/Format;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getChunkOperation(Ljava/util/List;JLorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;",
            ">;J",
            "Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$100(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    move-object/from16 v0, p4

    iput v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    if-nez v3, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$200(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    const/4 v3, 0x2

    iput v3, v2, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p4

    iget v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_4

    move-object/from16 v0, p4

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    if-eqz v2, :cond_4

    move-object/from16 v0, p4

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v4

    aget-object v5, v2, v4

    iget v2, v5, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto/16 :goto_0

    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->liveEdgeLatencyUs:J

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getLiveSeekPosition(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;J)J

    move-result-wide p2

    :cond_7
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkIndex(J)I

    move-result v2

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->live:Z

    if-eqz v4, :cond_9

    if-gez v2, :cond_9

    new-instance v2, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p4

    iget v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    sub-int/2addr v2, v4

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v4, v4, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-eqz v4, :cond_c

    iget v4, v5, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-lt v2, v4, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    goto/16 :goto_0

    :cond_a
    iget v4, v5, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_b

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->needManifestRefresh:Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    iget-boolean v4, v4, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;->isLive:Z

    if-nez v4, :cond_d

    iget v4, v5, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_d

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    if-eqz v4, :cond_e

    const-wide/16 v12, -0x1

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifestChunkOffset:I

    add-int v9, v2, v4

    invoke-static {v5, v3}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getManifestTrackIndex(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;Lorg/telegram/messenger/exoplayer/chunk/Format;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->elementIndex:I
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v6

    invoke-static {v6, v4}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->getManifestTrackKey(II)I

    move-result v15

    invoke-virtual {v5, v4, v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->extractorWrappers:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData$Mapped;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v14, v2, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->mediaFormats:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxWidth:I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$300(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->adaptiveMaxHeight:I
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->access$400(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;)I

    move-result v17

    invoke-static/range {v3 .. v17}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->newMediaChunk(Lorg/telegram/messenger/exoplayer/chunk/Format;Landroid/net/Uri;Ljava/lang/String;Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer/drm/DrmInitData;Lorg/telegram/messenger/exoplayer/upstream/DataSource;IJJILorg/telegram/messenger/exoplayer/MediaFormat;II)Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    :cond_c
    iget v4, v5, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->chunkCount:I

    if-lt v2, v4, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    :cond_e
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v6

    add-long v12, v10, v6

    goto :goto_4
.end method

.method public final getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource$ExposedTrack;->trackFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->maybeThrowError()V

    return-void
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)V
    .locals 0

    return-void
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public prepare()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->prepareCalled:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->prepareCalled:Z

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->trackSelector:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;

    invoke-interface {v1, v2, p0}, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;->selectTracks(Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v1, :cond_1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
