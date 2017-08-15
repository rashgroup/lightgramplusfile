.class public Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/ChunkSource;
.implements Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;,
        Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;,
        Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;,
        Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$NoAdaptationSetException;,
        Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;
    }
.end annotation


# static fields
.field public static SL_02:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DashChunkSource"


# instance fields
.field private final adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

.field private availableRange:Lorg/telegram/messenger/exoplayer/TimeRange;

.field private final availableRangeValues:[J

.field private currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

.field private final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private final elapsedRealtimeOffsetUs:J

.field private enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

.field private final evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;

.field private final eventSourceId:I

.field private fatalError:Ljava/io/IOException;

.field private lastChunkWasInitialization:Z

.field private final live:Z

.field private final liveEdgeLatencyUs:J

.field private final manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private nextPeriodHolderIndex:I

.field private final periodHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;",
            ">;"
        }
    .end annotation
.end field

.field private prepareCalled:Z

.field private processedManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

.field private startAtLiveEdge:Z

.field private final systemClock:Lorg/telegram/messenger/exoplayer/util/Clock;

.field private final trackSelector:Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;

.field private final tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "classicgroup"

    sput-object v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->SL_02:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;JILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;",
            "Lorg/telegram/messenger/exoplayer/upstream/DataSource;",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;",
            "JI",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;",
            ">;)V"
        }
    .end annotation

    invoke-static {p4, p5, p6, p7}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->buildManifest(JILjava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;JI[Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;)V
    .locals 8

    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;-><init>(Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;JILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;)V
    .locals 16

    const/4 v2, 0x0

    new-instance v7, Lorg/telegram/messenger/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lorg/telegram/messenger/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v15}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;-><init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;Lorg/telegram/messenger/exoplayer/util/Clock;JJZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;JJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;",
            "Lorg/telegram/messenger/exoplayer/upstream/DataSource;",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;",
            "JJ",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;",
            "I)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    new-instance v7, Lorg/telegram/messenger/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lorg/telegram/messenger/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v0, 0x3e8

    mul-long v8, p5, v0

    const-wide/16 v0, 0x3e8

    mul-long v10, p7, v0

    const/4 v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v1 .. v15}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;-><init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;Lorg/telegram/messenger/exoplayer/util/Clock;JJZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;JJZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;",
            "Lorg/telegram/messenger/exoplayer/upstream/DataSource;",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;",
            "I)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    new-instance v7, Lorg/telegram/messenger/exoplayer/util/SystemClock;

    invoke-direct {v7}, Lorg/telegram/messenger/exoplayer/util/SystemClock;-><init>()V

    const-wide/16 v0, 0x3e8

    mul-long v8, p5, v0

    const-wide/16 v0, 0x3e8

    mul-long v10, p7, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    invoke-direct/range {v1 .. v15}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;-><init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;Lorg/telegram/messenger/exoplayer/util/Clock;JJZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;Lorg/telegram/messenger/exoplayer/util/Clock;JJZLandroid/os/Handler;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ManifestFetcher",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;",
            ">;",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;",
            "Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;",
            "Lorg/telegram/messenger/exoplayer/upstream/DataSource;",
            "Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;",
            "Lorg/telegram/messenger/exoplayer/util/Clock;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->trackSelector:Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->systemClock:Lorg/telegram/messenger/exoplayer/util/Clock;

    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    iput-wide p9, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    iput-boolean p11, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    iput-object p12, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    iput-object p13, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;

    iput p14, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventSourceId:I

    new-instance v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    iget-boolean v0, p2, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->live:Z

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;)Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;

    return-object v0
.end method

.method private static buildManifest(JILjava/util/List;)Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    new-instance v2, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    const/4 v3, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v2, v3, v0, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;)V

    new-instance v6, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v3, v4, v5, v2}, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    new-instance v3, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    const-wide/16 v4, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-wide/from16 v6, p0

    invoke-direct/range {v3 .. v17}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLorg/telegram/messenger/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V

    return-object v3
.end method

.method private findPeriodHolder(J)Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableStartTimeUs()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableEndTimeUs()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    goto :goto_0
.end method

.method private getAvailableRange(J)Lorg/telegram/messenger/exoplayer/TimeRange;
    .locals 13

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x3e8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v2, v2, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexExplicit()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer/TimeRange$StaticTimeRange;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableStartTimeUs()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableEndTimeUs()J

    move-result-wide v0

    invoke-direct {v2, v4, v5, v0, v1}, Lorg/telegram/messenger/exoplayer/TimeRange$StaticTimeRange;-><init>(JJ)V

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableStartTimeUs()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexUnbounded()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->systemClock:Lorg/telegram/messenger/exoplayer/util/Clock;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v10

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->availabilityStartTime:J

    mul-long/2addr v6, v10

    sub-long v6, p1, v6

    sub-long v6, v0, v6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    :goto_2
    new-instance v1, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->systemClock:Lorg/telegram/messenger/exoplayer/util/Clock;

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;-><init>(JJJJLorg/telegram/messenger/exoplayer/util/Clock;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->getAvailableEndTimeUs()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->timeShiftBufferDepth:J

    mul-long v8, v0, v10

    goto :goto_2
.end method

.method private static getMediaMimeType(Lorg/telegram/messenger/exoplayer/chunk/Format;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "application/mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "stpp"

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "application/ttml+xml"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "wvtt"

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "application/x-mp4vtt"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNowUnixTimeUs()J
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->systemClock:Lorg/telegram/messenger/exoplayer/util/Clock;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->elapsedRealtimeOffsetUs:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method

.method private static getTrackFormat(ILorg/telegram/messenger/exoplayer/chunk/Format;Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 11

    const/4 v3, -0x1

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v8

    :pswitch_0
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    iget v6, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    iget v7, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v8

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v2, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    iget v6, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->audioChannels:I

    iget v7, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->audioSamplingRate:I

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->language:Ljava/lang/String;

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v8

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget v3, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->bitrate:I

    iget-object v6, p1, Lorg/telegram/messenger/exoplayer/chunk/Format;->language:Ljava/lang/String;

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "text/vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static mimeTypeIsWebm(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method private newInitializationChunk(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer/upstream/DataSource;II)Lorg/telegram/messenger/exoplayer/chunk/Chunk;
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->attemptMerge(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    new-instance v1, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;

    iget-object v5, p3, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object v2, p5

    move-object v3, v0

    move v4, p7

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;I)V

    return-object v1

    :cond_0
    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, p2

    goto :goto_0
.end method

.method private notifyAvailableRangeChanged(Lorg/telegram/messenger/exoplayer/TimeRange;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventListener:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$1;-><init>(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;Lorg/telegram/messenger/exoplayer/TimeRange;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private processManifest(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->startMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriodCount()I

    move-result v1

    if-le v0, v1, :cond_1

    :goto_1
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0, p1, v2, v3}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->updatePeriod(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;ILorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)V

    const/4 v0, 0x1

    if-le v1, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->updatePeriod(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;ILorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriodCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-direct {v1, v2, p1, v0, v3}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;-><init>(ILorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;ILorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->nextPeriodHolderIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->getNowUnixTimeUs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->getAvailableRange(J)Lorg/telegram/messenger/exoplayer/TimeRange;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRange:Lorg/telegram/messenger/exoplayer/TimeRange;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRange:Lorg/telegram/messenger/exoplayer/TimeRange;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRange:Lorg/telegram/messenger/exoplayer/TimeRange;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRange:Lorg/telegram/messenger/exoplayer/TimeRange;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->notifyAvailableRangeChanged(Lorg/telegram/messenger/exoplayer/TimeRange;)V

    :cond_5
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    goto :goto_1
.end method


# virtual methods
.method public adaptiveTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;II[I)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    if-nez v0, :cond_0

    const-string/jumbo v0, "DashChunkSource"

    const-string/jumbo v1, "Skipping adaptive track (missing format evaluator)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    array-length v1, p4

    new-array v3, v1, [Lorg/telegram/messenger/exoplayer/chunk/Format;

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    array-length v1, v3

    if-ge v7, v1, :cond_2

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    aget v6, p4, v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    iget-object v6, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    if-eqz v2, :cond_1

    iget v1, v6, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    if-le v1, v5, :cond_6

    :cond_1
    move-object v1, v6

    :goto_2
    iget v2, v6, Lorg/telegram/messenger/exoplayer/chunk/Format;->width:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v2, v6, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput-object v6, v3, v7

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/telegram/messenger/exoplayer/chunk/Format$DecreasingBandwidthComparator;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer/chunk/Format$DecreasingBandwidthComparator;-><init>()V

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->live:Z

    if-eqz v1, :cond_3

    const-wide/16 v6, -0x1

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->getMediaMimeType(Lorg/telegram/messenger/exoplayer/chunk/Format;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v0, "DashChunkSource"

    const-string/jumbo v1, "Skipped adaptive track (unknown media mime type)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-wide v6, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    goto :goto_3

    :cond_4
    iget v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->type:I

    invoke-static {v0, v2, v1, v6, v7}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->getTrackFormat(ILorg/telegram/messenger/exoplayer/chunk/Format;Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v1

    if-nez v1, :cond_5

    const-string/jumbo v0, "DashChunkSource"

    const-string/jumbo v1, "Skipped adaptive track (unknown media format)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyAsAdaptive(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;-><init>(Lorg/telegram/messenger/exoplayer/MediaFormat;I[Lorg/telegram/messenger/exoplayer/chunk/Format;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method

.method public continueBuffering(J)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->processedManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->processManifest(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->processedManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->minUpdatePeriod:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const-wide/16 v0, 0x1388

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->getManifestLoadStartTimestamp()J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->requestRefresh()V

    goto :goto_0
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

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;->disable()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->disable()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iput-object v1, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRange:Lorg/telegram/messenger/exoplayer/TimeRange;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    return-void
.end method

.method public enable(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;->enable()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->enable()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->getManifest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->processManifest(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->processManifest(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;)V

    goto :goto_0
.end method

.method public fixedTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;III)V
    .locals 8

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    iget-object v2, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->getMediaMimeType(Lorg/telegram/messenger/exoplayer/chunk/Format;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v0, "DashChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skipped track "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (unknown media mime type)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v4, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->type:I

    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {v4, v2, v3, v0, v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->getTrackFormat(ILorg/telegram/messenger/exoplayer/chunk/Format;Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "DashChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skipped track "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (unknown media format)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->duration:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-direct {v3, v0, p3, v2}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;-><init>(Lorg/telegram/messenger/exoplayer/MediaFormat;ILorg/telegram/messenger/exoplayer/chunk/Format;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getAvailableRange()Lorg/telegram/messenger/exoplayer/TimeRange;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRange:Lorg/telegram/messenger/exoplayer/TimeRange;

    return-object v0
.end method

.method public final getChunkOperation(Ljava/util/List;JLorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 10
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

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->isAdaptive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->adaptiveFormatEvaluator:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveFormats:[Lorg/telegram/messenger/exoplayer/chunk/Format;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->access$000(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)[Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator;->evaluate(Ljava/util/List;J[Lorg/telegram/messenger/exoplayer/chunk/Format;Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->queueSize:I

    iput v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    if-nez v4, :cond_5

    const/4 v0, 0x0

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    # getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->fixedFormat:Lorg/telegram/messenger/exoplayer/chunk/Format;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->access$100(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;)Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    const/4 v1, 0x2

    iput v1, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    goto :goto_1

    :cond_5
    iget v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    if-eqz v0, :cond_6

    iget-object v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/chunk/Chunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/chunk/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRange:Lorg/telegram/messenger/exoplayer/TimeRange;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/TimeRange;->getCurrentBoundsUs([J)[J

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->live:Z

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    :cond_7
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->liveEdgeLatencyUs:J

    sub-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_8
    :goto_2
    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->findPeriodHolder(J)Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    move-result-object v0

    const/4 v1, 0x1

    move-object v9, v0

    move v5, v1

    :goto_3
    iget-object v0, v9, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    iget-object v1, v4, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;

    iget-object v3, v8, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, v8, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->getInitializationUri()Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v1

    :cond_9
    iget-object v0, v8, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    if-nez v0, :cond_a

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->getIndexUri()Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v2

    :cond_a
    if-nez v1, :cond_b

    if-eqz v2, :cond_13

    :cond_b
    iget-object v4, v8, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget v6, v9, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v7, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->newInitializationChunk(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer/upstream/DataSource;II)Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_2

    :cond_d
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->startAtLiveEdge:Z

    :cond_e
    iget v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->endTimeUs:J

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->live:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v5, 0x0

    aget-wide v6, v1, v5

    cmp-long v1, v2, v6

    if-gez v1, :cond_f

    new-instance v0, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/BehindLiveWindowException;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v1, v1, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->availableRangeValues:[J

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    :cond_10
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    iget v2, v0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->parentId:I

    iget v3, v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    if-ne v2, v3, :cond_11

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->isBeyondLastSegment(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->dynamic:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    goto/16 :goto_0

    :cond_11
    const/4 v3, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v2, v0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->parentId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    if-nez v1, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    const/4 v1, 0x1

    move-object v9, v0

    move v5, v1

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->isIndexUnbounded()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->isBeyondLastSegment(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->parentId:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    const/4 v1, 0x1

    move-object v9, v0

    move v5, v1

    goto/16 :goto_3

    :cond_13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v8, p2, p3}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentNum(J)I

    move-result v6

    :goto_4
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->enabledTrack:Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->evaluation:Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;

    iget v7, v0, Lorg/telegram/messenger/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    move-object v0, p0

    move-object v1, v9

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->newMediaChunk(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;II)Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->lastChunkWasInitialization:Z

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->chunk:Lorg/telegram/messenger/exoplayer/chunk/Chunk;

    goto/16 :goto_0

    :cond_14
    if-eqz v5, :cond_15

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum()I

    move-result v6

    goto :goto_4

    :cond_15
    iget v0, p4, Lorg/telegram/messenger/exoplayer/chunk/ChunkOperationHolder;->queueSize:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->getNextChunkIndex()I

    move-result v6

    goto :goto_4

    :cond_16
    move-object v9, v1

    move v5, v3

    goto/16 :goto_3
.end method

.method public final getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->trackFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->manifestFetcher:Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ManifestFetcher;->maybeThrowError()V

    :cond_1
    return-void
.end method

.method protected newMediaChunk(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;II)Lorg/telegram/messenger/exoplayer/chunk/Chunk;
    .locals 24

    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->representation:Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;

    iget-object v12, v9, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(I)J

    move-result-wide v22

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->getSegmentUrl(I)Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    move-result-object v6

    new-instance v2, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v6, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->start:J

    iget-wide v6, v6, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;->length:J

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->startTimeUs:J

    iget-wide v6, v9, Lorg/telegram/messenger/exoplayer/dash/mpd/Representation;->presentationTimeOffsetUs:J

    sub-long v13, v4, v6

    iget-object v3, v12, Lorg/telegram/messenger/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;

    const/4 v6, 0x1

    move-object/from16 v0, p5

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->trackFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    move-object/from16 v4, p3

    move-object v5, v2

    move-object v7, v12

    move-wide/from16 v8, v22

    move/from16 v12, p6

    invoke-direct/range {v3 .. v15}, Lorg/telegram/messenger/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJILorg/telegram/messenger/exoplayer/MediaFormat;Lorg/telegram/messenger/exoplayer/drm/DrmInitData;I)V

    :goto_0
    return-object v3

    :cond_0
    if-eqz p4, :cond_1

    const/16 v20, 0x1

    :goto_1
    new-instance v3, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;

    move-object/from16 v0, p2

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->extractorWrapper:Lorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;

    move-object/from16 v0, p5

    iget v0, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p5

    iget v0, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$ExposedTrack;->adaptiveMaxHeight:I

    move/from16 v18, v0

    # getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->access$200(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->localIndex:I

    move/from16 v21, v0

    move-object/from16 v4, p3

    move-object v5, v2

    move/from16 v6, p7

    move-object v7, v12

    move-wide/from16 v8, v22

    move/from16 v12, p6

    move-object/from16 v16, p4

    invoke-direct/range {v3 .. v21}, Lorg/telegram/messenger/exoplayer/chunk/ContainerMediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJIJLorg/telegram/messenger/exoplayer/chunk/ChunkExtractorWrapper;Lorg/telegram/messenger/exoplayer/MediaFormat;IILorg/telegram/messenger/exoplayer/drm/DrmInitData;ZI)V

    goto :goto_0

    :cond_1
    const/16 v20, 0x0

    goto :goto_1
.end method

.method public onChunkLoadCompleted(Lorg/telegram/messenger/exoplayer/chunk/Chunk;)V
    .locals 5

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->periodHolders:Landroid/util/SparseArray;

    iget v2, p1, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->parentId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->representationHolders:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->hasFormat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->getFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    :cond_2
    iget-object v2, v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->hasSeekMap()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v3, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->getSeekMap()Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/telegram/messenger/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ChunkIndex;Ljava/lang/String;)V

    iput-object v3, v1, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$RepresentationHolder;->segmentIndex:Lorg/telegram/messenger/exoplayer/dash/DashSegmentIndex;

    :cond_3
    # getter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->access$200(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->hasDrmInitData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/chunk/InitializationChunk;->getDrmInitData()Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    move-result-object v1

    # setter for: Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;->access$202(Lorg/telegram/messenger/exoplayer/dash/DashChunkSource$PeriodHolder;Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    goto :goto_0
.end method

.method public onChunkLoadError(Lorg/telegram/messenger/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public prepare()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->prepareCalled:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->prepareCalled:Z

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->trackSelector:Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->currentManifest:Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p0}, Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;->selectTracks(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;ILorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v2, :cond_1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/DashChunkSource;->fatalError:Ljava/io/IOException;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
