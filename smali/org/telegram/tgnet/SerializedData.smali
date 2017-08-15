.class public Lorg/telegram/tgnet/SerializedData;
.super Lorg/telegram/tgnet/AbstractSerializedData;
.source "SerializedData.java"


# instance fields
.field private in:Ljava/io/DataInputStream;

.field private inbuf:Ljava/io/ByteArrayInputStream;

.field protected isOut:Z

.field private justCalc:Z

.field private len:I

.field private out:Ljava/io/DataOutputStream;

.field private outbuf:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    iput-boolean v4, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iput-boolean v4, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    iput-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/tgnet/AbstractSerializedData;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    iput-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    iput-boolean v2, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    return-void
.end method

.method private writeInt32(ILjava/io/DataOutputStream;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x8

    shr-int v1, p1, v1

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write int32 error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private writeInt64(JLjava/io/DataOutputStream;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x8

    shr-long v2, p1, v1

    long-to-int v1, v2

    :try_start_0
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write int64 error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    return v0
.end method

.method public length()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public readBool(Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

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
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    const/16 v2, 0xfe

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    const/4 v1, 0x4

    move v2, v0

    :goto_0
    new-array v0, v2, [B

    iget-object v3, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    iget v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    :goto_1
    add-int v3, v2, v1

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    iget v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I
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

.method public readByteBuffer(Z)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public readBytes([BZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->read([B)I

    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read bytes error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "read bytes error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readData(IZ)[B
    .locals 1

    new-array v0, p1, [B

    invoke-virtual {p0, v0, p2}, Lorg/telegram/tgnet/SerializedData;->readBytes([BZ)V

    return-object v0
.end method

.method public readDouble(Z)D
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/tgnet/SerializedData;->readInt64(Z)J

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
    .locals 5

    const/4 v0, 0x0

    move v2, v0

    move v1, v0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v3, v1

    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "read int32 error"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const-string/jumbo v1, "read int32 error"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public readInt64(Z)J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v5

    int-to-long v6, v5

    mul-int/lit8 v5, v4, 0x8

    shl-long/2addr v6, v5

    or-long/2addr v6, v2

    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_1
    return-wide v0

    :catch_0
    move-exception v2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "read int64 error"

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const-string/jumbo v2, "read int64 error"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public readString(Z)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    const/16 v2, 0xfe

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    const/4 v1, 0x4

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    new-array v2, v1, [B

    iget-object v3, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->read([B)I

    iget v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    :goto_1
    add-int v3, v1, v0

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    iget v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/telegram/tgnet/SerializedData;->len:I

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

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v4, v0

    move v0, v1

    move v1, v4

    goto :goto_0
.end method

.method protected set([B)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->isOut:Z

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->inbuf:Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    return-void
.end method

.method public skip(I)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->outbuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public writeBool(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const v0, -0x668d8a4b

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    :goto_0
    return-void

    :cond_0
    const v0, -0x438668c9

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public writeByte(B)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I
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
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write byte error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeByteArray([B)V
    .locals 3

    const/16 v2, 0xfd

    :try_start_0
    array-length v0, p1

    if-gt v0, v2, :cond_2

    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    :goto_1
    array-length v0, p1

    if-gt v0, v2, :cond_5

    const/4 v0, 0x1

    :goto_2
    array-length v1, p1

    add-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I
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
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeByteArray([BII)V
    .locals 3

    const/16 v2, 0xfd

    if-gt p3, v2, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->write(I)V

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    :goto_1
    if-gt p3, v2, :cond_5

    const/4 v0, 0x1

    :goto_2
    add-int v1, p3, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I
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
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p3, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    shr-int/lit8 v1, p3, 0x10

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    iget v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V
    .locals 0

    return-void
.end method

.method public writeBytes([B)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I
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
    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "write bytes error"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt64(J)V
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

    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-direct {p0, p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(ILjava/io/DataOutputStream;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public writeInt64(J)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/tgnet/SerializedData;->justCalc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/SerializedData;->out:Ljava/io/DataOutputStream;

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt64(JLjava/io/DataOutputStream;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/telegram/tgnet/SerializedData;->len:I

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/tgnet/SerializedData;->writeByteArray([B)V
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
