.class public final Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;
.super Ljava/lang/Object;
.source "RawResourceDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# static fields
.field private static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final resources:Landroid/content/res/Resources;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

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
            "Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    :try_start_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v1, :cond_5

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_5
    throw v0

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    const-string/jumbo v2, "rawresource"

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string/jumbo v1, "URI must use scheme rawresource"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    const-string/jumbo v1, "Resource identifier must be an integer."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->opened:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    :cond_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    return-wide v0

    :cond_3
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_4

    :goto_1
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    goto :goto_0

    :cond_4
    iget-wide v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    sub-long v0, v2, v0

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
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :try_start_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v0, :cond_3

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    :try_start_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    long-to-int p3, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_3
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->bytesRemaining:J

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/RawResourceDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_5
    move v0, v1

    goto :goto_0
.end method
