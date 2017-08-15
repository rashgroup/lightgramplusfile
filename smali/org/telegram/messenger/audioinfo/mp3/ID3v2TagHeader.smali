.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
.super Ljava/lang/Object;
.source "ID3v2TagHeader.java"


# instance fields
.field private compression:Z

.field private footerSize:I

.field private headerSize:I

.field private paddingSize:I

.field private revision:I

.field private totalTagSize:I

.field private unsynchronization:Z

.field private version:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;-><init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    iput v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->revision:I

    iput v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    iput v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    iput v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->paddingSize:I

    iput v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v4

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v6

    const-string/jumbo v7, "ISO-8859-1"

    invoke-direct {v3, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v6, "ID3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid ID3 identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-eq v3, v9, :cond_1

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-eq v3, v8, :cond_1

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-eq v3, v10, :cond_1

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported ID3v2 version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->revision:I

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    iget v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-ne v6, v9, :cond_5

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_4

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->compression:Z

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v0

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_7

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    and-int/lit8 v1, v3, 0x40

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-ne v1, v8, :cond_8

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->paddingSize:I

    add-int/lit8 v1, v1, -0x6

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    :cond_6
    :goto_4
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-lt v0, v10, :cond_2

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    goto :goto_4
.end method


# virtual methods
.method public getFooterSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    return v0
.end method

.method public getHeaderSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    return v0
.end method

.method public getPaddingSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->paddingSize:I

    return v0
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->revision:I

    return v0
.end method

.method public getTotalTagSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    return v0
.end method

.method public isCompression()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->compression:Z

    return v0
.end method

.method public isUnsynchronization()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    return v0
.end method

.method public tagBody(Ljava/io/InputStream;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->compression:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    const-string/jumbo v1, "Tag compression is not supported"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    if-eqz v0, :cond_5

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v3

    array-length v5, v3

    move v1, v2

    move v4, v2

    move v0, v2

    :goto_0
    if-ge v1, v5, :cond_4

    aget-byte v6, v3, v1

    if-eqz v0, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    add-int/lit8 v0, v4, 0x1

    aput-byte v6, v3, v4

    move v4, v0

    :cond_2
    const/16 v0, 0xff

    if-ne v6, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3, v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    iget v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    int-to-long v2, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;-><init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;)V

    :goto_2
    return-object v0

    :cond_5
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    int-to-long v2, v1

    iget v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    iget v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    sub-int/2addr v1, v4

    iget v4, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    sub-int v4, v1, v4

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;-><init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;)V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%s[version=%s, totalTagSize=%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
