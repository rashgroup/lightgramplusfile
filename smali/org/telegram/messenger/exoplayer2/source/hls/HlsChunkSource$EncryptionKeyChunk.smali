.class final Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptionKeyChunk"
.end annotation


# instance fields
.field public final iv:Ljava/lang/String;

.field private result:[B


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;[BLjava/lang/String;)V
    .locals 8

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/source/chunk/DataChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;[B)V

    iput-object p7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected consume([BI)V
    .locals 1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-void
.end method

.method public getResult()[B
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-object v0
.end method
