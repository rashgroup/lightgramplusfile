.class public Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;
.super Ljava/lang/Object;
.source "CacheSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final isCached:Z

.field public final key:Ljava/lang/String;

.field public final lastAccessTimestamp:J

.field public final length:J

.field public final position:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 10

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    if-eqz p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    iput-object p8, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->compareTo(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHoleSpan()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenEnded()Z
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CacheSpan;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
