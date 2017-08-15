.class public Lorg/telegram/tgnet/NativeByteBuffer;
.super Lorg/telegram/tgnet/AbstractSerializedData;
.source "NativeByteBuffer.java"


# static fields
.field private static final addressWrapper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/telegram/tgnet/NativeByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected address:I

.field public buffer:Ljava/nio/ByteBuffer;

.field private justCalc:Z

.field private len:I

.field public reused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer$1;

    invoke-direct {v0}, Lorg/telegram/tgnet/NativeByteBuffer$1;-><init>()V

    sput-object v0, Lorg/telegram/tgnet/NativeByteBuffer;->addressWrapper:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    if-ltz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->native_getFreeBuffer(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    invoke-static {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_getJavaByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "invalid NativeByteBuffer size"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    return-void
.end method

.method synthetic constructor <init>(IZLorg/telegram/tgnet/NativeByteBuffer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    iput-boolean p1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    return-void
.end method

.method public static native native_getFreeBuffer(I)I
.end method

.method public static native native_getJavaByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static native native_limit(I)I
.end method

.method public static native native_position(I)I
.end method

.method public static native native_reuse(I)V
.end method

.method public static wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 3

    sget-object v0, Lorg/telegram/tgnet/NativeByteBuffer;->addressWrapper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz p0, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "forgot to reuse?"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    iput p0, v0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_getJavaByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_limit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {p0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_position(I)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public compact()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getIntFromByte(B)I
    .locals 0

    if-ltz p1, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit16 p1, p1, 0x100

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0
.end method

.method public limit()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public limit(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public position()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public readBool(Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const v2, -0x668d8a4b

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v2, -0x438668c9

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not bool value!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v1, "Not bool value!"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readByteArray(Z)[B
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    const/16 v2, 0xfe

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x4

    move v2, v0

    :goto_0
    new-array v0, v2, [B

    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int v3, v2, v1

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read byte array error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "read byte array error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_1
    return-object v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    const/16 v2, 0xfe

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x4

    move v2, v0

    :goto_0
    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-direct {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    add-int v3, v2, v1

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read byte array error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "read byte array error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public readBytes([BZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read raw error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "read raw error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readData(IZ)[B
    .locals 1

    new-array v0, p1, [B

    invoke-virtual {p0, v0, p2}, Lorg/telegram/tgnet/NativeByteBuffer;->readBytes([BZ)V

    return-object v0
.end method

.method public readDouble(Z)D
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read double error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "read double error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public readInt32(Z)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read int32 error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "read int32 error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readInt64(Z)J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read int64 error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "read int64 error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public readString(Z)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    const/16 v2, 0xfe

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->getIntFromByte(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x4

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    new-array v2, v1, [B

    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int v3, v1, v0

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read string error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "read string error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_2

    :cond_2
    move v4, v0

    move v0, v1

    move v1, v4

    goto :goto_0
.end method

.method public reuse()V
    .locals 1

    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->reused:Z

    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    invoke-static {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->native_reuse(I)V

    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public skip(I)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0
.end method

.method public writeBool(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const v0, -0x668d8a4b

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    :goto_0
    return-void

    :cond_0
    const v0, -0x438668c9

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0
.end method

.method public writeByte(B)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write byte error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(B)V

    return-void
.end method

.method public writeByteArray([B)V
    .locals 3

    const/16 v2, 0xfd

    :try_start_0
    array-length v0, p1

    if-gt v0, v2, :cond_2

    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1
    array-length v0, p1

    if-gt v0, v2, :cond_5

    const/4 v0, 0x1

    :goto_2
    array-length v1, p1

    add-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write byte array error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    iget v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeByteArray([BII)V
    .locals 3

    const/16 v2, 0xfd

    if-gt p3, v2, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_1
    if-gt p3, v2, :cond_5

    const/4 v0, 0x1

    :goto_2
    add-int v1, p3, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write byte array error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    iget v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 4

    const/16 v3, 0xfd

    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    if-gt v1, v3, :cond_2

    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_1
    if-gt v1, v3, :cond_5

    const/4 v0, 0x1

    :goto_2
    add-int v2, v1, v0

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    iget v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeBytes(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public writeBytes([B)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write raw error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeBytes([BII)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write raw error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write double error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeInt32(I)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write int32 error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeInt64(J)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/telegram/tgnet/NativeByteBuffer;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write int64 error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write string error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
