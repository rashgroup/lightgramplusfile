.class final Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;
.super Ljava/lang/Object;
.source "Aes128DataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private final encryptionIv:[B

.field private final encryptionKey:[B

.field private final upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->encryptionKey:[B

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->encryptionIv:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 4

    :try_start_0
    const-string/jumbo v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->encryptionKey:[B

    const-string/jumbo v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->encryptionIv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v1, Ljavax/crypto/CipherInputStream;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->upstream:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-direct {v2, v3, p1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    invoke-direct {v1, v2, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
