.class public final Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;,
        Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$Flags;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CACHE_FILE_SIZE:J = 0x200000L

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2

.field public static SL_04:Ljava/lang/String;


# instance fields
.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private currentRequestIgnoresCache:Z

.field private currentRequestUnbounded:Z

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

.field private flags:I

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private key:Ljava/lang/String;

.field private lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

.field private readPosition:J

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "lightgramplus"

    sput-object v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->SL_04:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;I)V
    .locals 6

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;IJ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;IJ)V
    .locals 8

    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSink;

    invoke-direct {v4, p1, p4, p5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSink;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSink;ILorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-eqz p4, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/TeeDataSource;

    invoke-direct {v0, p2, p4}, Lorg/telegram/messenger/exoplayer2/upstream/TeeDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSink;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    :goto_3
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_3
.end method

.method private closeCurrentSource()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    :cond_2
    throw v0
.end method

.method private handleBeforeThrow(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    :cond_1
    return-void
.end method

.method private notifyBytesRead()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    :cond_0
    return-void
.end method

.method private openNextSource(Z)Z
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object v2, v0

    :goto_1
    iget-wide v0, v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    const/4 v3, 0x1

    :goto_3
    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v0, :cond_0

    iget-wide v0, v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    add-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->setContentLength(J)V

    :cond_0
    return v3

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-boolean v1, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long v4, v2, v4

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long v6, v2, v4

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v8, -0x1

    cmp-long v0, v2, v8

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_4
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object v2, v0

    goto/16 :goto_1

    :cond_5
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    :cond_6
    :goto_4
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    :goto_5
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object v2, v0

    goto/16 :goto_1

    :cond_7
    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v6, v0

    if-nez p1, :cond_a

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    if-eqz v0, :cond_a

    move-object v1, v6

    :goto_6
    if-eqz v1, :cond_a

    instance-of v0, v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;

    if-eqz v0, :cond_b

    move-object v0, v1

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceException;->reason:I

    if-nez v0, :cond_b

    const/4 v6, 0x0

    :cond_a
    if-eqz v6, :cond_c

    throw v6

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    :cond_c
    move-wide v0, v4

    goto/16 :goto_3
.end method

.method private setContentLength(J)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->setContentLength(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->notifyBytesRead()V

    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v4, -0x1

    :try_start_0
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->flags:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    if-nez v1, :cond_1

    :cond_0
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-eqz v1, :cond_5

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v0, :cond_6

    :cond_2
    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    :cond_3
    :goto_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)Z

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    return-wide v0

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    throw v0
.end method

.method public read([BII)I
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-ne v1, v2, :cond_3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    :cond_3
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    throw v0

    :cond_4
    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->currentRequestUnbounded:Z

    if-eqz v1, :cond_5

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->setContentLength(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    :cond_6
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method
