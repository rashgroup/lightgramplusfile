.class public final Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;
.super Ljava/lang/Object;
.source "AssetDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_1
    :try_start_1
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->opened:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    :cond_4
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    return-wide v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public read([BII)I
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v0, -0x1

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :try_start_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v0, :cond_3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    :try_start_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    long-to-int p3, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_3
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->bytesRemaining:J

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/AssetDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_5
    move v0, v1

    goto :goto_0
.end method
