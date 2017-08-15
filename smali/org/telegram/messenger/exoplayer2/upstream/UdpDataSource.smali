.class public final Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;
.super Ljava/lang/Object;
.source "UdpDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEAFULT_SOCKET_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0


# instance fields
.field private address:Ljava/net/InetAddress;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private final packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;

.field private socketAddress:Ljava/net/InetSocketAddress;

.field private final socketTimeoutMillis:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x1f40

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketTimeoutMillis:I

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    :cond_1
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->opened:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->opened:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 3

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->opened:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([BII)I
    .locals 3

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    invoke-interface {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    sub-int v1, v0, v1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
