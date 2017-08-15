.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
.super Ljava/lang/Object;
.source "ID3v2FrameHeader.java"


# instance fields
.field private bodySize:I

.field private compression:Z

.field private dataLengthIndicator:I

.field private encryption:Z

.field private frameId:Ljava/lang/String;

.field private headerSize:I

.field private unsynchronization:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;)V
    .locals 12

    const/4 v4, 0x4

    const/4 v11, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getPosition()J

    move-result-wide v8

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-result-object v7

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v3

    if-ne v3, v0, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v5

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v3

    if-ne v3, v0, :cond_4

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    iput v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v3

    if-le v3, v0, :cond_2

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v10

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v3

    if-ne v3, v11, :cond_6

    const/16 v4, 0x80

    const/16 v3, 0x40

    const/16 v0, 0x20

    move v5, v0

    move v6, v3

    move v3, v2

    move v0, v4

    move v4, v2

    :goto_2
    and-int/2addr v0, v10

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->compression:Z

    and-int v0, v10, v4

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->unsynchronization:Z

    and-int v0, v10, v6

    if-eqz v0, :cond_9

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v0

    if-ne v0, v11, :cond_a

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->compression:Z

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->dataLengthIndicator:I

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :cond_1
    and-int v0, v10, v5

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :cond_2
    :goto_6
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getPosition()J

    move-result-wide v0

    sub-long/2addr v0, v8

    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->headerSize:I

    return-void

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v7, v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v5

    const-string/jumbo v6, "ISO-8859-1"

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->getVersion()I

    move-result v3

    if-ne v3, v11, :cond_5

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x40

    const/16 v5, 0x8

    move v6, v4

    move v4, v0

    move v0, v5

    move v5, v3

    move v3, v1

    goto/16 :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    and-int v0, v10, v5

    if-eqz v0, :cond_b

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :cond_b
    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    if-eqz v0, :cond_c

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    :cond_c
    and-int v0, v10, v3

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->dataLengthIndicator:I

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    goto :goto_6
.end method


# virtual methods
.method public getBodySize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    return v0
.end method

.method public getDataLengthIndicator()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->dataLengthIndicator:I

    return v0
.end method

.method public getFrameId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->headerSize:I

    return v0
.end method

.method public isCompression()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->compression:Z

    return v0
.end method

.method public isEncryption()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->encryption:Z

    return v0
.end method

.method public isPadding()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isUnsynchronization()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->unsynchronization:Z

    return v0
.end method

.method public isValid()Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_1
    :goto_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%s[id=%s, bodysize=%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->frameId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->bodySize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
