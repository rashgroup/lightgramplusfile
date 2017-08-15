.class public final Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# static fields
.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"


# instance fields
.field private final assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final baseDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final contentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final fileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;

    const/4 v2, 0x0

    move-object v1, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0, p2}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    goto :goto_1
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSource;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
