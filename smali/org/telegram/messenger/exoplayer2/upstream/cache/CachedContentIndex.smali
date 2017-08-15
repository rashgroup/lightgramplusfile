.class final Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "cached_content_index.exi"

.field private static final FLAG_ENCRYPTED_INDEX:I = 0x1

.field private static final VERSION:I = 0x1


# instance fields
.field private final atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

.field private bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

.field private changed:Z

.field private final cipher:Ljavax/crypto/Cipher;

.field private final idToKey:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToContent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation
.end field

.field private final secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;-><init>(Ljava/io/File;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    :try_start_0
    const-string/jumbo v0, "AES/CBC/PKCS5PADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "cached_content_index.exi"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    return-void

    :catch_0
    move-exception v0

    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private addNew(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->getNewId(Landroid/util/SparseArray;)I

    move-result v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;J)V

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->addNew(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;)V

    return-object v1
.end method

.method public static getNewId(Landroid/util/SparseArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    if-gez v0, :cond_0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private readFile()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;->openRead()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eq v3, v1, :cond_1

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x10

    :try_start_3
    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->read([B)I

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v6, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljavax/crypto/CipherInputStream;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v5, v4, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v3

    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v3, v0

    move v4, v0

    :goto_1
    if-ge v3, v5, :cond_4

    new-instance v6, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v6, v2}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->addNew(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;)V

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->headerHashCode()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_7
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v3

    if-eq v3, v4, :cond_5

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_7

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v1, v3

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private writeFile()V
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;->startWrite()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    if-nez v4, :cond_0

    new-instance v4, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    invoke-direct {v4, v2}, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    :goto_0
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    new-array v1, v1, [B

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, v4, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->writeToStream(Ljava/io/DataOutputStream;)V

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->headerHashCode()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->bufferedOutputStream:Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/exoplayer2/util/ReusableBufferedOutputStream;->reset(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_4
    :try_start_5
    new-instance v2, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/Cache$CacheException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_6
    :try_start_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :cond_2
    :try_start_7
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;->endWrite(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->addNew(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method addNew(Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    return-void
.end method

.method public assignIdForKey(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->add(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    return v0
.end method

.method public get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    return-object v0
.end method

.method public getAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getLength()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getKeyForId(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->readFile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->atomicFile:Lorg/telegram/messenger/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/AtomicFile;->delete()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeEmpty()V
    .locals 4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeEmpty(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    :cond_0
    return-void
.end method

.method public setContentLength(Ljava/lang/String;J)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->getLength()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;->setLength(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->addNew(Ljava/lang/String;J)Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContent;

    goto :goto_0
.end method

.method public store()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->writeFile()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/cache/CachedContentIndex;->changed:Z

    goto :goto_0
.end method
