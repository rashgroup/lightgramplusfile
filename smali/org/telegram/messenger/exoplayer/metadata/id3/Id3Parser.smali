.class public final Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;
.super Ljava/lang/Object;
.source "Id3Parser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/metadata/MetadataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer/metadata/MetadataParser",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v0

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v0

    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

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

.method private static parseApicFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v6, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v6}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v4, v2, v6, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v6

    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v3

    invoke-direct {v7, v2, v3, v8, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v0

    add-int/2addr v0, v6

    array-length v1, v2

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;

    invoke-direct {v1, v4, v7, v5, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v1
.end method

.method private static parseBinaryFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    new-instance v1, Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static parseGeobFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v6, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v6}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v4, v2, v6, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    sub-int v7, v5, v3

    invoke-direct {v6, v2, v3, v7, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v5

    new-instance v7, Ljava/lang/String;

    sub-int v8, v5, v3

    invoke-direct {v7, v2, v3, v8, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v0

    add-int/2addr v0, v5

    array-length v1, v2

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;

    invoke-direct {v1, v4, v6, v7, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static parseId3Header(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I
    .locals 9

    const/4 v8, 0x2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x49

    if-ne v0, v3, :cond_0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_0

    const/16 v3, 0x33

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v3, Lorg/telegram/messenger/exoplayer/ParserException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\"."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    add-int/lit8 v3, v2, -0x4

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    sub-int/2addr v0, v2

    :cond_3
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0xa

    :cond_4
    return v0
.end method

.method private static parsePrivFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/PrivFrame;
    .locals 5

    const/4 v4, 0x0

    new-array v0, p1, [B

    invoke-virtual {p0, v0, v4, p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfZeroByte([BI)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/metadata/id3/PrivFrame;

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static parseTextInformationFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer/metadata/id3/TextInformationFrame;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v4, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v4, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v4, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p2, v3}, Lorg/telegram/messenger/exoplayer/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseTxxxFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v5, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v5, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->delimiterLength(I)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->indexOfEos([BII)I

    move-result v0

    new-instance v5, Ljava/lang/String;

    sub-int/2addr v0, v3

    invoke-direct {v5, v2, v3, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;

    invoke-direct {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BI)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parse([BI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parse([BI)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v3, p1, p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([BI)V

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseId3Header(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    const/16 v8, 0x54

    if-ne v0, v8, :cond_2

    const/16 v8, 0x58

    if-ne v4, v8, :cond_2

    const/16 v8, 0x58

    if-ne v5, v8, :cond_2

    const/16 v8, 0x58

    if-ne v6, v8, :cond_2

    :try_start_0
    invoke-static {v3, v7}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseTxxxFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;

    move-result-object v0

    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0xa

    sub-int v0, v1, v0

    move v1, v0

    goto :goto_0

    :cond_2
    const/16 v8, 0x50

    if-ne v0, v8, :cond_3

    const/16 v8, 0x52

    if-ne v4, v8, :cond_3

    const/16 v8, 0x49

    if-ne v5, v8, :cond_3

    const/16 v8, 0x56

    if-ne v6, v8, :cond_3

    invoke-static {v3, v7}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parsePrivFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/PrivFrame;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v8, 0x47

    if-ne v0, v8, :cond_4

    const/16 v8, 0x45

    if-ne v4, v8, :cond_4

    const/16 v8, 0x4f

    if-ne v5, v8, :cond_4

    const/16 v8, 0x42

    if-ne v6, v8, :cond_4

    invoke-static {v3, v7}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseGeobFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/16 v8, 0x41

    if-ne v0, v8, :cond_5

    const/16 v8, 0x50

    if-ne v4, v8, :cond_5

    const/16 v8, 0x49

    if-ne v5, v8, :cond_5

    const/16 v8, 0x43

    if-ne v6, v8, :cond_5

    invoke-static {v3, v7}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseApicFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v8, 0x54

    if-ne v0, v8, :cond_6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%c%c%c%c"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v0

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v0

    const/4 v0, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v0

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v7, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseTextInformationFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer/metadata/id3/TextInformationFrame;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "%c%c%c%c"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v0

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v0

    const/4 v0, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v0

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v7, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Parser;->parseBinaryFrame(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
