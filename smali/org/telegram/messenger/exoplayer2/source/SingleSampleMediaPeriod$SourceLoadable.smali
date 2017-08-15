.class final Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceLoadable"
.end annotation


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private sampleData:[B

.field private sampleSize:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)[B
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    return-object v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    return-void
.end method

.method public isLoadCanceled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->uri:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    if-nez v0, :cond_1

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v3, v3

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleSize:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    return-void
.end method
