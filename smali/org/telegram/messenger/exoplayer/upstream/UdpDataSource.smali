.class public final Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;
.super Ljava/lang/Object;
.source "UdpDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/UriDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEAFULT_SOCKET_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0


# instance fields
.field private address:Ljava/net/InetAddress;

.field private dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

.field private final listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;

.field private socketAddress:Ljava/net/InetSocketAddress;

.field private final socketTimeoutMillis:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/TransferListener;)V
    .locals 1

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;-><init>(Lorg/telegram/messenger/exoplayer/upstream/TransferListener;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/TransferListener;I)V
    .locals 1

    const/16 v0, 0x1f40

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;-><init>(Lorg/telegram/messenger/exoplayer/upstream/TransferListener;II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/TransferListener;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    iput p3, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socketTimeoutMillis:I

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetBuffer:[B

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetBuffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    :cond_1
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    iput v3, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->opened:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onTransferEnd()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J
    .locals 3

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->dataSpec:Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socketTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->opened:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onTransferStart()V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([BII)I
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer/upstream/TransferListener;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/TransferListener;->onBytesTransferred(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetBuffer:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource;->packetRemaining:I

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
