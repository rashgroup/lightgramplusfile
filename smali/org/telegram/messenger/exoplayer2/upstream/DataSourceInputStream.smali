.class public final Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private closed:Z

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    return-void
.end method

.method private checkOpened()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    return-wide v0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public open()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    return-void
.end method

.method public read()I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->read([B)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 6

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6

    const/4 v1, -0x1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    goto :goto_1
.end method

.method public skip(J)J
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
