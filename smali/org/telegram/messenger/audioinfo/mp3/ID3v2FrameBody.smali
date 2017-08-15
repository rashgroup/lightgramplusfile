.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;
.super Ljava/lang/Object;
.source "ID3v2FrameBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;
    }
.end annotation


# static fields
.field static final textBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

.field private final frameHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

.field private final input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

.field private final tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$1;

    invoke-direct {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->textBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    int-to-long v4, p4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    iput-object p5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    iput-object p6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->frameHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    return-void
.end method

.method private extractString([BIILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;Z)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, p3, :cond_1

    add-int v3, p2, v2

    aget-byte v3, p1, v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    if-ne p4, v3, :cond_0

    if-nez v0, :cond_0

    add-int v3, p2, v2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v3

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v1

    sub-int p3, v0, v1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xfeff

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move v0, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_1
.end method


# virtual methods
.method public getData()Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    return-object v0
.end method

.method public getFrameHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->frameHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameHeader;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainingLength()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->input:Lorg/telegram/messenger/audioinfo/util/RangeInputStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/util/RangeInputStream;->getRemainingLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTagHeader()Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->tagHeader:Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;

    return-object v0
.end method

.method public readEncoding()Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->ISO_8859_1:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16BE:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_8:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public readFixedLengthString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    int-to-long v0, p1

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not read fixed-length string of length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->textBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes(I)[B

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully([BII)V

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->extractString([BIILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readZeroTerminatedString(ILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    sget-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->textBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody$Buffer;->bytes(I)[B

    move-result-object v1

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v4, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->data:Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-virtual {v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v5

    aput-byte v5, v1, v3

    if-nez v5, :cond_1

    sget-object v5, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->UTF_16:Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;

    if-ne p2, v5, :cond_0

    if-nez v0, :cond_0

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v5

    if-ne v0, v5, :cond_2

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;->getZeroBytes()I

    move-result v3

    sub-int v3, v0, v3

    move-object v0, p0

    move-object v4, p2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->extractString([BIILorg/telegram/messenger/audioinfo/mp3/ID3v2Encoding;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    const-string/jumbo v1, "Could not read zero-termiated string"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id3v2frame[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2FrameBody;->getRemainingLength()J

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
