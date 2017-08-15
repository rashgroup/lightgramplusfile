.class public final Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

.field private final index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

.field private initializationException:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lockedSpans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private totalSpace:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-direct {v0, p1, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;-><init>(Ljava/io/File;[B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;

    const-string/jumbo v2, "SimpleCache.initialize()"

    invoke-direct {v1, p0, v2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache$1;->start()V

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initialize()V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;)Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    return-object v0
.end method

.method private addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->add(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->notifySpanAdded(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    return-void
.end method

.method private getSpan(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createOpenHole(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {v1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getSpan(J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpansAndCachedContents()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 10

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->load()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "cached_content_index.exi"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-static {v4, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    goto :goto_0
.end method

.method private notifySpanAdded(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;->onSpanAdded(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v0, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onSpanAdded(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private notifySpanRemoved(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;->onSpanRemoved(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v0, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onSpanRemoved(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private notifySpanTouched(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v1, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;->onSpanTouched(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v0, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onSpanTouched(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->notifySpanRemoved(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private removeStaleSpansAndCachedContents()V
    .locals 5

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commitFile(Ljava/io/File;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v0

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v4, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v2, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v6, v3, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v4, v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gtz v2, :cond_4

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    :cond_3
    invoke-direct {p0, v3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public declared-synchronized getCacheSpace()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContentLength(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->getContentLength(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCached(Ljava/lang/String;JJ)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->isCached(JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseHoleSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->removeSpan(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContentLength(Ljava/lang/String;J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->setContentLength(Ljava/lang/String;J)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpansAndCachedContents()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->evictor:Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheEvictor;->onStartFile(Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->assignIdForKey(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->initializationException:Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->getSpan(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v1

    iget-boolean v0, v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->index:Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->touch(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;)Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->notifySpanTouched(Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCacheSpan;Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/SimpleCache;->lockedSpans:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
