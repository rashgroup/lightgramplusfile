.class public abstract Lorg/telegram/messenger/audioinfo/AudioInfo;
.super Ljava/lang/Object;
.source "AudioInfo.java"


# instance fields
.field protected album:Ljava/lang/String;

.field protected albumArtist:Ljava/lang/String;

.field protected artist:Ljava/lang/String;

.field protected brand:Ljava/lang/String;

.field protected comment:Ljava/lang/String;

.field protected compilation:Z

.field protected composer:Ljava/lang/String;

.field protected copyright:Ljava/lang/String;

.field protected cover:Landroid/graphics/Bitmap;

.field protected disc:S

.field protected discs:S

.field protected duration:J

.field protected genre:Ljava/lang/String;

.field protected grouping:Ljava/lang/String;

.field protected lyrics:Ljava/lang/String;

.field protected smallCover:Landroid/graphics/Bitmap;

.field protected title:Ljava/lang/String;

.field protected track:S

.field protected tracks:S

.field protected version:Ljava/lang/String;

.field protected year:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;
    .locals 4

    const/16 v0, 0xc

    :try_start_0
    new-array v0, v0, [B

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    const/16 v3, 0x74

    if-ne v2, v3, :cond_0

    const/4 v2, 0x6

    aget-byte v2, v0, v2

    const/16 v3, 0x79

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    const/16 v2, 0x70

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->albumArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->composer:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->cover:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisc()S
    .locals 1

    iget-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->disc:S

    return v0
.end method

.method public getDiscs()S
    .locals 1

    iget-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->discs:S

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->duration:J

    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getGrouping()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->grouping:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->lyrics:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallCover()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->smallCover:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()S
    .locals 1

    iget-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->track:S

    return v0
.end method

.method public getTracks()S
    .locals 1

    iget-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->tracks:S

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()S
    .locals 1

    iget-short v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->year:S

    return v0
.end method

.method public isCompilation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/AudioInfo;->compilation:Z

    return v0
.end method
