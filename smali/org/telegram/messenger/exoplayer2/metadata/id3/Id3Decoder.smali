.class public final Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    }
.end annotation


# static fields
.field public static final ID3_HEADER_LENGTH:I = 0xa

.field public static final ID3_TAG:I

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeApicFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;
    .locals 9

    const/4 v0, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, p1, -0x1

    new-array v4, v1, [B

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v4, v8, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-ne p2, v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "image/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x3

    const-string/jumbo v7, "ISO-8859-1"

    invoke-direct {v5, v4, v8, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "image/jpg"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v1, "image/jpeg"

    :cond_0
    :goto_0
    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v0

    invoke-direct {v7, v4, v0, v8, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v0

    add-int/2addr v0, v6

    array-length v2, v4

    invoke-static {v4, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v2, v1, v7, v5, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v2

    :cond_1
    invoke-static {v4, v8}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v1, v4, v8, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "image/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static decodeBinaryFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeCommentFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;
    .locals 7

    const/4 v4, 0x3

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [B

    invoke-virtual {p0, v2, v6, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v6, v4}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v2, p1, -0x4

    new-array v2, v2, [B

    add-int/lit8 v4, p1, -0x4

    invoke-virtual {p0, v2, v6, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v6, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v6, v4, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v2, v4, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v0

    new-instance v6, Ljava/lang/String;

    sub-int/2addr v0, v4

    invoke-direct {v6, v2, v4, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v0, v3, v5, v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static decodeFrame(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;
    .locals 14

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    move v7, v0

    :goto_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez p2, :cond_0

    and-int/lit16 v0, v1, 0xff

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v0

    :cond_0
    :goto_1
    const/4 v0, 0x3

    if-lt p0, v0, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    move v6, v0

    :goto_2
    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v7, :cond_5

    if-nez v1, :cond_5

    if-nez v6, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int v11, v0, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-le v11, v0, :cond_6

    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Frame size exceeds remaining tag data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x3

    if-ne p0, v12, :cond_c

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    :goto_4
    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_a

    const/4 v4, 0x1

    :goto_5
    and-int/lit8 v0, v6, 0x20

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_6
    move v5, v2

    :cond_7
    :goto_7
    if-nez v5, :cond_8

    if-eqz v4, :cond_12

    :cond_8
    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    const/4 v12, 0x4

    if-ne p0, v12, :cond_7

    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    :goto_8
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_e

    const/4 v5, 0x1

    :goto_9
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_f

    const/4 v4, 0x1

    :goto_a
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_10

    const/4 v3, 0x1

    :goto_b
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_c
    move v13, v2

    move v2, v0

    move v0, v13

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    goto :goto_c

    :cond_12
    if-eqz v0, :cond_22

    add-int/lit8 v0, v1, -0x1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_d
    if-eqz v2, :cond_13

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_13
    if-eqz v3, :cond_21

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I

    move-result v0

    move v1, v0

    :goto_e
    const/16 v0, 0x54

    if-ne v8, v0, :cond_15

    const/16 v0, 0x58

    if-ne v9, v0, :cond_15

    const/16 v0, 0x58

    if-ne v10, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/16 v0, 0x58

    if-ne v7, v0, :cond_15

    :cond_14
    :try_start_0
    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeTxxxFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_f
    invoke-virtual {p1, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_3

    :cond_15
    const/16 v0, 0x50

    if-ne v8, v0, :cond_16

    const/16 v0, 0x52

    if-ne v9, v0, :cond_16

    const/16 v0, 0x49

    if-ne v10, v0, :cond_16

    const/16 v0, 0x56

    if-ne v7, v0, :cond_16

    :try_start_1
    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodePrivFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v0

    goto :goto_f

    :cond_16
    const/16 v0, 0x47

    if-ne v8, v0, :cond_18

    const/16 v0, 0x45

    if-ne v9, v0, :cond_18

    const/16 v0, 0x4f

    if-ne v10, v0, :cond_18

    const/16 v0, 0x42

    if-eq v7, v0, :cond_17

    const/4 v0, 0x2

    if-ne p0, v0, :cond_18

    :cond_17
    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeGeobFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v0

    goto :goto_f

    :cond_18
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1a

    const/16 v0, 0x50

    if-ne v8, v0, :cond_1b

    const/16 v0, 0x49

    if-ne v9, v0, :cond_1b

    const/16 v0, 0x43

    if-ne v10, v0, :cond_1b

    :cond_19
    invoke-static {p1, v1, p0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeApicFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;II)Lorg/telegram/messenger/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v0

    goto :goto_f

    :cond_1a
    const/16 v0, 0x41

    if-ne v8, v0, :cond_1b

    const/16 v0, 0x50

    if-ne v9, v0, :cond_1b

    const/16 v0, 0x49

    if-ne v10, v0, :cond_1b

    const/16 v0, 0x43

    if-eq v7, v0, :cond_19

    :cond_1b
    const/16 v0, 0x54

    if-ne v8, v0, :cond_1d

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1c

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%c%c%c"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v0

    goto/16 :goto_f

    :cond_1c
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%c%c%c%c"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1d
    const/16 v0, 0x43

    if-ne v8, v0, :cond_1f

    const/16 v0, 0x4f

    if-ne v9, v0, :cond_1f

    const/16 v0, 0x4d

    if-ne v10, v0, :cond_1f

    const/16 v0, 0x4d

    if-eq v7, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1f

    :cond_1e
    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeCommentFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v0

    goto/16 :goto_f

    :cond_1f
    const/4 v0, 0x2

    if-ne p0, v0, :cond_20

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%c%c%c"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeBinaryFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/BinaryFrame;

    move-result-object v0

    goto/16 :goto_f

    :cond_20
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%c%c%c%c"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_11

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Unsupported character encoding"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p1, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v0

    :cond_21
    move v1, v0

    goto/16 :goto_e

    :cond_22
    move v0, v1

    goto/16 :goto_d
.end method

.method private static decodeGeobFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v6, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v4, v2, v6, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    sub-int v7, v5, v3

    invoke-direct {v6, v2, v3, v7, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v5

    new-instance v7, Ljava/lang/String;

    sub-int v8, v5, v3

    invoke-direct {v7, v2, v3, v8, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v0

    add-int/2addr v0, v5

    array-length v1, v2

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v1, v4, v6, v7, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    .locals 8

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Data too short to be an ID3 tag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    sget v4, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-eq v0, v4, :cond_1

    const-string/jumbo v1, "Id3Decoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    const/4 v4, 0x2

    if-ne v5, v4, :cond_4

    and-int/lit8 v4, v6, 0x40

    if-eqz v4, :cond_2

    move v4, v1

    :goto_1
    if-eqz v4, :cond_3

    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_2
    if-ge v5, v7, :cond_d

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_d

    move v0, v1

    :goto_3
    new-instance v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v1, v5, v0, v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne v5, v4, :cond_7

    and-int/lit8 v3, v6, 0x40

    if-eqz v3, :cond_6

    move v3, v1

    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v3, v3, 0x4

    sub-int/2addr v0, v3

    :cond_5
    move v3, v0

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_4

    :cond_7
    if-ne v5, v7, :cond_c

    and-int/lit8 v3, v6, 0x40

    if-eqz v3, :cond_a

    move v3, v1

    :goto_5
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/lit8 v4, v3, -0x4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v0, v3

    :cond_8
    and-int/lit8 v3, v6, 0x10

    if-eqz v3, :cond_b

    move v3, v1

    :goto_6
    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, -0xa

    :cond_9
    move v3, v0

    goto :goto_2

    :cond_a
    move v3, v2

    goto :goto_5

    :cond_b
    move v3, v2

    goto :goto_6

    :cond_c
    const-string/jumbo v0, "Id3Decoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto :goto_3
.end method

.method private static decodePrivFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;
    .locals 5

    const/4 v4, 0x0

    new-array v0, p1, [B

    invoke-virtual {p0, v0, v4, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeTextInformationFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v4, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v4, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v4, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static decodeTxxxFrame(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v5, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v5, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v0

    new-instance v5, Ljava/lang/String;

    sub-int/2addr v0, v3

    invoke-direct {v5, v2, v3, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;

    invoke-direct {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/TxxxFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static delimiterLength(I)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "ISO-8859-1"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ISO-8859-1"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "UTF-16"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "UTF-16BE"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "UTF-8"

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

.method private static indexOfEos([BII)I
    .locals 2

    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_3
    array-length v0, p0

    goto :goto_0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 1

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    :goto_1
    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p0

    goto :goto_1
.end method

.method private static removeUnsynchronization(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I
    .locals 6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v1, v0

    move v0, p1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x2

    invoke-static {v2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static validateV4Frames(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_1
    return v0

    :cond_0
    if-nez p1, :cond_7

    int-to-long v6, v2

    const-wide/32 v8, 0x808080

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v0, v1

    goto :goto_1

    :cond_1
    and-int/lit16 v3, v2, 0xff

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v3, v6

    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0xe

    or-int/2addr v3, v6

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v2, v3

    move v3, v2

    :goto_2
    and-int/lit8 v2, v5, 0x40

    if-eqz v2, :cond_6

    move v2, v0

    :goto_3
    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x4

    :cond_2
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move v0, v1

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v0

    :cond_5
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_2
.end method


# virtual methods
.method public canDecode(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v5, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    # getter for: Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->framesSize:I
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v0

    # getter for: Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v8

    if-eqz v8, :cond_1

    # getter for: Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->framesSize:I
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v0

    invoke-static {v5, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)I

    move-result v0

    :cond_1
    add-int/2addr v0, v7

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    # getter for: Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v0

    const/4 v7, 0x4

    if-ne v0, v7, :cond_6

    invoke-static {v5, v2}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->validateV4Frames(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v5, v1}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->validateV4Frames(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    # getter for: Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x6

    :cond_2
    :goto_2
    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v1, :cond_5

    # getter for: Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    invoke-static {v2, v5, v0}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Failed to validate V4 ID3 tag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method
