.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;
.super Ljava/lang/Object;
.source "ID3v2TagBody.java"


# instance fields
.field private final data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

.field private final input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

.field private final tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;


# direct methods
.method constructor <init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    int-to-long v4, p4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    iput-object p5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    return-void
.end method


# virtual methods
.method public frameBody(Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getBodySize()I

    move-result v2

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isUnsynchronization()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getBodySize()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v4

    array-length v5, v4

    move v3, v1

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v3, v5, :cond_3

    aget-byte v6, v4, v3

    if-eqz v0, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    aput-byte v6, v4, v2

    move v2, v0

    :cond_1
    const/16 v0, 0xff

    if-ne v6, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v4, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move v1, v2

    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isEncryption()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    const-string/jumbo v1, "Frame encryption is not supported"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->isCompression()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getDataLengthIndicator()I

    move-result v4

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_3
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;->getHeaderSize()I

    move-result v2

    int-to-long v2, v2

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;-><init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;)V

    return-object v0

    :cond_5
    move v4, v1

    move-object v1, v0

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainingLength()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getRemainingLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id3v2tag[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;->getRemainingLength()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " left]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
