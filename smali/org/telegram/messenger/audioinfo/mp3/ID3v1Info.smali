.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "ID3v1Info.java"


# static fields
.field public static SL_05:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "."

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->SL_05:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5

    const/16 v4, 0x7e

    const/16 v3, 0x1e

    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->isID3v1StartPosition(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ID3"

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->brand:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->version:Ljava/lang/String;

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->title:Ljava/lang/String;

    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->artist:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->album:Ljava/lang/String;

    const/16 v1, 0x5d

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->year:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0x61

    invoke-virtual {p0, v0, v1, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->extractString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->comment:Ljava/lang/String;

    const/16 v1, 0x7f

    aget-byte v1, v0, v1

    invoke-static {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->genre:Ljava/lang/String;

    :cond_0
    const/16 v1, 0x7d

    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    aget-byte v1, v0, v4

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1.1"

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->version:Ljava/lang/String;

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->track:S

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->year:S

    goto :goto_0
.end method

.method public static isID3v1StartPosition(Ljava/io/InputStream;)Z
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    throw v0
.end method


# virtual methods
.method extractString([BII)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "ISO-8859-1"

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method readBytes(Ljava/io/InputStream;I)[B
    .locals 3

    const/4 v0, 0x0

    new-array v1, p2, [B

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v2, p2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    return-object v1
.end method
