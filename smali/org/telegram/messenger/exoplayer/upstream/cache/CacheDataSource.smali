.class public final Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource$EventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheDataSource"


# instance fields
.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

.field private final cacheReadDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private final cacheWriteDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private final eventListener:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource$EventListener;

.field private flags:I

.field private ignoreCache:Z

.field private final ignoreCacheOnError:Z

.field private key:Ljava/lang/String;

.field private lockedSpan:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

.field private readPosition:J

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSink;ZZLorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource$EventListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->blockOnCache:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    if-eqz p4, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;

    invoke-direct {v0, p2, p4}, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSink;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    :goto_0
    iput-object p7, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->eventListener:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource$EventListener;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/DataSource;ZZ)V
    .locals 8

    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;-><init>(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/DataSource;ZZJ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/DataSource;ZZJ)V
    .locals 9

    new-instance v3, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer/upstream/FileDataSource;-><init>()V

    new-instance v4, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;

    invoke-direct {v4, p1, p5, p6}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink;-><init>(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;J)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;-><init>(Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSink;ZZLorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method private closeCurrentSource()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;->releaseHoleSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;->releaseHoleSpan(Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    :cond_2
    throw v0
.end method

.method private handleBeforeThrow(Ljava/io/IOException;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSink$CacheDataSinkException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->ignoreCache:Z

    :cond_1
    return-void
.end method

.method private notifyBytesRead()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->eventListener:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->eventListener:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource$EventListener;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    :cond_0
    return-void
.end method

.method private openNextSource()V
    .locals 10

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->ignoreCache:Z

    if-eqz v1, :cond_0

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v7, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    return-void

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string/jumbo v1, "CacheDataSource"

    const-string/jumbo v2, "Cache bypassed due to unbounded length."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cache:Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-boolean v1, v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->position:J

    sub-long v4, v2, v4

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v2, v4

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v9, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    goto :goto_1

    :cond_4
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->lockedSpan:Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    :goto_2
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v7, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    :goto_3
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    goto/16 :goto_1

    :cond_5
    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheSpan;->length:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->upstreamDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->notifyBytesRead()V

    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    throw v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J
    .locals 2

    :try_start_0
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget v0, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->flags:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->flags:I

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->position:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->openNextSource()V

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    throw v0
.end method

.method public read([BII)I
    .locals 8

    const-wide/16 v6, -0x1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->currentDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->cacheReadDataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->closeCurrentSource()V

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->openNextSource()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    throw v0
.end method
