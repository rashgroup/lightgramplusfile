.class public Lorg/telegram/messenger/audioinfo/mp3/MP3Info;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "MP3Info.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;-><init>(Ljava/io/InputStream;JLjava/util/logging/Level;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/util/logging/Level;)V
    .locals 8

    const-wide/16 v6, 0x80

    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    const-string/jumbo v0, "MP3"

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->brand:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->version:Ljava/lang/String;

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->isID3v2StartPosition(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;

    invoke-direct {v0, v1, p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;-><init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getAlbum()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->album:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getAlbumArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->albumArtist:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->artist:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getComment()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->comment:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getCover()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getSmallCover()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->smallCover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->isCompilation()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->compilation:Z

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getComposer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->composer:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getCopyright()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->copyright:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getDisc()S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->disc:S

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getDiscs()S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->discs:S

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->duration:J

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getGenre()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->genre:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getGrouping()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->grouping:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getLyrics()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->lyrics:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getTrack()S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->track:S

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getTracks()S

    move-result v2

    iput-short v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->tracks:S

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getYear()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->year:S

    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-wide v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->duration:J

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    :cond_1
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;-><init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Info;J)V

    invoke-virtual {p0, v1, p2, p3, v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->calculateDuration(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;JLorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->duration:J
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->album:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->artist:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_3
    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->getPosition()J

    move-result-wide v2

    sub-long v4, p2, v6

    cmp-long v0, v2, v4

    if-gtz v0, :cond_a

    sub-long v2, p2, v6

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->skipFully(J)V

    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->isID3v1StartPosition(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->album:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getAlbum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->album:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->artist:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->artist:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->comment:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getComment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->comment:Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->genre:Ljava/lang/String;

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getGenre()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->genre:Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->title:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->title:Ljava/lang/String;

    :cond_8
    iget-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->track:S

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getTrack()S

    move-result v1

    iput-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->track:S

    :cond_9
    iget-short v1, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->year:S

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getYear()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->year:S

    :cond_a
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v2, p4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->LOGGER:Ljava/util/logging/Logger;

    const-string/jumbo v3, "Could not determine MP3 duration"

    invoke-virtual {v2, p4, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method calculateDuration(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;JLorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->readFirstFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getNumberOfFrames()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v5

    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v6

    mul-int/2addr v4, v6

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getTotalDuration(J)J

    move-result-wide v4

    :goto_0
    return-wide v4

    :cond_0
    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->getPosition()J

    move-result-wide v6

    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v4

    int-to-long v8, v4

    sub-long v12, v6, v8

    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getBitrate()I

    move-result v11

    int-to-long v6, v11

    const/4 v4, 0x0

    const/16 v14, 0x2710

    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getDuration()I

    move-result v15

    div-int/2addr v14, v15

    :goto_1
    if-ne v5, v14, :cond_1

    if-nez v4, :cond_1

    const-wide/16 v16, 0x0

    cmp-long v15, p2, v16

    if-lez v15, :cond_1

    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v4

    sub-long v6, p2, v12

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getTotalDuration(J)J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->readNextFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    move-result-object v10

    if-nez v10, :cond_2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    int-to-long v4, v5

    mul-long/2addr v4, v8

    const-wide/16 v8, 0x8

    mul-long/2addr v4, v8

    div-long/2addr v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getBitrate()I

    move-result v15

    if-eq v15, v11, :cond_3

    const/4 v4, 0x1

    :cond_3
    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v6, v6, v16

    invoke-virtual {v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v4, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string/jumbo v5, "No audio frame"

    invoke-direct {v4, v5}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method readFirstFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
    .locals 9

    const/4 v5, 0x0

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    move v8, v0

    move v0, v5

    move v5, v8

    :goto_1
    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_e

    and-int/lit16 v0, v5, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->mark(I)V

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    move v3, v0

    :goto_2
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    :cond_0
    :goto_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v0

    move v3, v0

    goto :goto_2

    :cond_3
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    move v2, v0

    :goto_5
    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-direct {v0, v5, v3, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;-><init>(III)V
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    :goto_6
    if-eqz v4, :cond_d

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->reset()V

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->mark(I)V

    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v0

    new-array v6, v0, [B

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput-byte v1, v6, v0

    const/4 v0, 0x1

    int-to-byte v1, v5

    aput-byte v1, v6, v0

    const/4 v0, 0x2

    :try_start_1
    array-length v1, v6

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v6, v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    invoke-direct {v1, v4, v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;-><init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;[B)V

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->isChecksumError()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :goto_7
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, -0x1

    move v3, v2

    :goto_8
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/4 v2, -0x1

    if-ne v3, v2, :cond_8

    :cond_4
    move-object v0, v1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v0

    move v2, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v4, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v0

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v2

    move v3, v2

    goto :goto_8

    :cond_8
    const/16 v2, 0xff

    if-ne v0, v2, :cond_d

    and-int/lit16 v0, v3, 0xfe

    and-int/lit16 v2, v5, 0xfe

    if-ne v0, v2, :cond_d

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, -0x1

    :goto_a
    const/4 v7, -0x1

    if-eq v0, v7, :cond_9

    const/4 v7, -0x1

    if-ne v2, v7, :cond_c

    :cond_9
    move-object v0, v1

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v0

    goto :goto_9

    :cond_b
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v2

    goto :goto_a

    :cond_c
    :try_start_2
    new-instance v7, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-direct {v7, v3, v0, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;-><init>(III)V

    invoke-virtual {v7, v4}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->isCompatible(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->reset()V

    array-length v0, v6

    add-int/lit8 v0, v0, -0x2

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->skipFully(J)V
    :try_end_2
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :cond_d
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->reset()V

    :cond_e
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, -0x1

    :goto_b
    move v8, v0

    move v0, v5

    move v5, v8

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method

.method readNextFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
    .locals 8

    const/4 v0, 0x4

    const/4 v3, 0x0

    const/4 v1, -0x1

    invoke-virtual {p3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v6

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->mark(I)V

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v5, v1

    :goto_1
    if-eq v0, v1, :cond_0

    if-ne v5, v1, :cond_3

    :cond_0
    move-object v0, v3

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v2

    move v5, v2

    goto :goto_1

    :cond_3
    const/16 v2, 0xff

    if-ne v0, v2, :cond_8

    and-int/lit16 v2, v5, 0xe0

    const/16 v4, 0xe0

    if-ne v2, v4, :cond_8

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    :goto_3
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    :goto_4
    if-eq v2, v1, :cond_4

    if-ne v4, v1, :cond_7

    :cond_4
    move-object v0, v3

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v2

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v4

    goto :goto_4

    :cond_7
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-direct {v1, v5, v2, v4}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;-><init>(III)V
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->isCompatible(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v6

    new-array v6, v6, [B

    const/4 v7, 0x0

    int-to-byte v0, v0

    aput-byte v0, v6, v7

    const/4 v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    const/4 v0, 0x2

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    const/4 v0, 0x3

    int-to-byte v2, v4

    aput-byte v2, v6, v0

    const/4 v0, 0x4

    :try_start_1
    array-length v2, v6

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v6, v0, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    invoke-direct {v0, v1, v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;-><init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;[B)V

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v1, v3

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->reset()V

    move-object v0, v3

    goto :goto_2
.end method
