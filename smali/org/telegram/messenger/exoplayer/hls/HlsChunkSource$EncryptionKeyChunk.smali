.class final Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/DataChunk;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptionKeyChunk"
.end annotation


# instance fields
.field public final iv:Ljava/lang/String;

.field private result:[B

.field public final variantIndex:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;[BLjava/lang/String;I)V
    .locals 8

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;IILorg/telegram/messenger/exoplayer/chunk/Format;I[B)V

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->iv:Ljava/lang/String;

    iput p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->variantIndex:I

    return-void
.end method


# virtual methods
.method protected consume([BI)V
    .locals 1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-void
.end method

.method public getResult()[B
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-object v0
.end method
