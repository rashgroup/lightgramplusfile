.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;
.super Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field private commentHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

.field private previousPacketBlockSize:I

.field private seenFirstAudioPacket:Z

.field private vorbisIdHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

.field private vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static appendNumberOfSamples(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)V
    .locals 7

    const-wide/16 v4, 0xff

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method private static decodeBlockSize(BLorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;)I
    .locals 2

    iget v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->readBits(BII)I

    move-result v0

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    aget-object v0, v1, v0

    iget-boolean v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;->blockFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    goto :goto_0
.end method

.method static readBits(BII)I
    .locals 3

    shr-int v0, p0, p2

    const/16 v1, 0xff

    rsub-int/lit8 v2, p1, 0x8

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public static verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onSeekEnd(J)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->onSeekEnd(J)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v1, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :cond_0
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected preparePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->decodeBlockSize(BLorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v2, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    :cond_1
    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->appendNumberOfSamples(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)V

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method protected readHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 11

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->readSetupHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const-string/jumbo v1, "audio/vorbis"

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    const v4, 0xfe01

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-wide v8, v6, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    long-to-int v6, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p4, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method readSetupHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readVorbisIdentificationHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    if-nez v1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readVorbisCommentHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    new-array v3, v0, [B

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readVorbisModes(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    move-result-object v4

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v5

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;[B[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;I)V

    goto :goto_0
.end method

.method protected reset(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisSetup:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader$VorbisSetup;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->vorbisIdHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->commentHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    :cond_0
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    return-void
.end method
