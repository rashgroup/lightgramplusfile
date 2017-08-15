.class public final Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/SampleSource;
.implements Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
.implements Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;
.implements Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;,
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;,
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;,
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;,
        Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/telegram/messenger/exoplayer/extractor/Extractor;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE:I = 0x6

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_ON_DEMAND:I = 0x3

.field private static final MIN_RETRY_COUNT_DEFAULT_FOR_MEDIA:I = -0x1

.field private static final NO_RESET_PENDING:J = -0x8000000000000000L


# instance fields
.field private final allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

.field private currentLoadableException:Ljava/io/IOException;

.field private currentLoadableExceptionCount:I

.field private currentLoadableExceptionTimestamp:J

.field private final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private downstreamPositionUs:J

.field private volatile drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

.field private enabledTrackCount:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;

.field private final eventSourceId:I

.field private extractedSampleCount:I

.field private extractedSampleCountAtStartOfLoad:I

.field private final extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

.field private havePendingNextSampleUs:Z

.field private lastSeekPositionUs:J

.field private loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

.field private loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

.field private loadingFinished:Z

.field private maxTrackDurationUs:J

.field private mediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

.field private final minLoadableRetryCount:I

.field private pendingDiscontinuities:[Z

.field private pendingMediaFormat:[Z

.field private pendingNextSampleUs:J

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private remainingReleaseCount:I

.field private final requestedBufferSize:I

.field private final sampleQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private sampleTimeOffsetUs:J

.field private volatile seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

.field private trackEnabledStates:[Z

.field private volatile tracksBuilt:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.webm.WebmExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.mp4.FragmentedMp4Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.mp4.Mp4Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.mp3.Mp3Extractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.ts.AdtsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.ts.TsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.flv.FlvExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.ogg.OggExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.ts.PsExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.extractor.wav.WavExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    const-string/jumbo v1, "org.telegram.messenger.exoplayer.ext.flac.FlacExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object p7, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventHandler:Landroid/os/Handler;

    iput p8, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventSourceId:I

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iput p4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->requestedBufferSize:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->minLoadableRetryCount:I

    if-eqz p9, :cond_0

    array-length v0, p9

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array p9, v0, [Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p9

    if-ge v1, v0, :cond_1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->DEFAULT_EXTRACTOR_CLASSES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/Extractor;

    aput-object v0, p9, v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unexpected error creating default extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unexpected error creating default extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    invoke-direct {v0, p9, p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;-><init>([Lorg/telegram/messenger/exoplayer/extractor/Extractor;Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;II[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 10

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IILandroid/os/Handler;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;I[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V
    .locals 7

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;II[Lorg/telegram/messenger/exoplayer/extractor/Extractor;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventSourceId:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;

    return-object v0
.end method

.method static synthetic access$308(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    return v0
.end method

.method private clearState()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->clear()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    return-void
.end method

.method private createLoadableFromPositionUs(J)Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 9

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->requestedBufferSize:I

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v6, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->getPosition(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IJ)V

    return-object v0
.end method

.method private createLoadableFromStart()Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;
    .locals 8

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractorHolder:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->requestedBufferSize:I

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;Lorg/telegram/messenger/exoplayer/upstream/Allocator;IJ)V

    return-object v0
.end method

.method private discardSamplesForDisabledTracks(J)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->discardUntil(J)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getRetryDelayMillis(J)J
    .locals 5

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private haveFormatsForAllTracks()Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->hasFormat()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isCurrentLoadableExceptionFatal()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    instance-of v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;

    return v0
.end method

.method private isPendingReset()Z
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartLoading()V
    .locals 10

    const-wide/16 v8, -0x1

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isCurrentLoadableExceptionFatal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionTimestamp:J

    sub-long/2addr v4, v6

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    int-to-long v6, v0

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->getRetryDelayMillis(J)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    if-nez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromStart()Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    :cond_4
    :goto_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCountAtStartOfLoad:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v0, v1, p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_4

    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromStart()Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingNextSampleUs:J

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    goto :goto_3

    :cond_7
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleTimeOffsetUs:J

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromStart()Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    :goto_5
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCountAtStartOfLoad:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    invoke-virtual {v0, v1, p0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer/upstream/Loader$Callback;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_9

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    goto/16 :goto_0

    :cond_9
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->createLoadableFromPositionUs(J)Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadable:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$ExtractingLoadable;

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    goto :goto_5
.end method

.method private notifyLoadError(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventListener:Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$2;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private restartFrom(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->clearState()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    goto :goto_0
.end method


# virtual methods
.method public continueBuffering(IJ)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->discardSamplesForDisabledTracks(J)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public disable(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aput-boolean v2, v0, p1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->cancelLoading()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->clearState()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->trim(I)V

    goto :goto_0
.end method

.method public drmInitData(Lorg/telegram/messenger/exoplayer/drm/DrmInitData;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    return-void
.end method

.method public enable(IJ)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v2, v0, p1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    invoke-direct {p0, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->restartFrom(J)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public endTracks()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->tracksBuilt:Z

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 8

    const-wide/high16 v4, -0x8000000000000000L

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, -0x3

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getLargestParsedTimestampUs()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    goto :goto_0
.end method

.method public getFormat(I)Lorg/telegram/messenger/exoplayer/MediaFormat;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->mediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isCurrentLoadableExceptionFatal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->minLoadableRetryCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->minLoadableRetryCount:I

    :goto_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->restartFrom(J)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->clearState()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Allocator;->trim(I)V

    goto :goto_0
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    return-void
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
    .locals 2

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableException:Ljava/io/IOException;

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCountAtStartOfLoad:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionTimestamp:J

    invoke-direct {p0, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->notifyLoadError(Ljava/io/IOException;)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->currentLoadableExceptionCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public prepare(J)Z
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-nez v2, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer/upstream/Loader;

    const-string/jumbo v3, "Loader:ExtractorSampleSource"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maybeStartLoading()V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->tracksBuilt:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->haveFormatsForAllTracks()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v2, v3, [Z

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->trackEnabledStates:[Z

    new-array v2, v3, [Z

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    new-array v2, v3, [Z

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    new-array v2, v3, [Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->mediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->mediaFormats:[Lorg/telegram/messenger/exoplayer/MediaFormat;

    aput-object v0, v4, v2

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->durationUs:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->maxTrackDurationUs:J

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    move v0, v1

    goto :goto_0
.end method

.method public readData(IJLorg/telegram/messenger/exoplayer/MediaFormatHolder;Lorg/telegram/messenger/exoplayer/SampleHolder;)I
    .locals 6

    const/4 v2, -0x2

    const/4 v1, 0x0

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getFormat()Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->format:Lorg/telegram/messenger/exoplayer/MediaFormat;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer/MediaFormatHolder;->drmInitData:Lorg/telegram/messenger/exoplayer/drm/DrmInitData;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingMediaFormat:[Z

    aput-boolean v1, v0, p1

    const/4 v0, -0x4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->getSample(Lorg/telegram/messenger/exoplayer/SampleHolder;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v2, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget v2, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    if-eqz v0, :cond_5

    const/high16 v0, 0x8000000

    :goto_2
    or-int/2addr v0, v2

    iput v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingNextSampleUs:J

    iget-wide v4, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleTimeOffsetUs:J

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->havePendingNextSampleUs:Z

    :cond_3
    iget-wide v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleTimeOffsetUs:J

    add-long/2addr v0, v2

    iput-wide v0, p5, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    const/4 v0, -0x3

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loadingFinished:Z

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public readDiscontinuity(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public register()Lorg/telegram/messenger/exoplayer/SampleSource$SampleSourceReader;
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    return-object p0
.end method

.method public release()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->remainingReleaseCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$1;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/Loader;->release(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->loader:Lorg/telegram/messenger/exoplayer/upstream/Loader;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    return-void
.end method

.method public seekToUs(J)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->prepared:Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->enabledTrackCount:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->seekMap:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingResetPositionUs:J

    :goto_1
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->lastSeekPositionUs:J

    cmp-long v0, v4, p1

    if-nez v0, :cond_4

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->downstreamPositionUs:J

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    move v3, v2

    move v4, v0

    :goto_3
    if-eqz v4, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->skipToKeyframeBefore(J)Z

    move-result v0

    and-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->restartFrom(J)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    array-length v0, v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->pendingDiscontinuities:[Z

    aput-boolean v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->allocator:Lorg/telegram/messenger/exoplayer/upstream/Allocator;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;Lorg/telegram/messenger/exoplayer/upstream/Allocator;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ExtractorSampleSource;->sampleQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method
