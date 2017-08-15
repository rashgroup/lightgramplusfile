.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Id3Reader"


# instance fields
.field private final id3Header:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private sampleBytesRead:I

.field private sampleSize:I

.field private sampleTimeUs:J

.field private writingSample:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-ge v1, v7, :cond_3

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v1, v2

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v1, 0x49

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x44

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x33

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    const-string/jumbo v0, "Id3Reader"

    const-string/jumbo v1, "Discarding invalid ID3 tag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->id3Header:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    goto :goto_0
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const-string/jumbo v1, "application/id3"

    const/4 v2, -0x1

    invoke-static {v3, v1, v3, v2, v3}, Lorg/telegram/messenger/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    return-void
.end method

.method public packetFinished()V
    .locals 8

    const/4 v6, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    goto :goto_0
.end method

.method public packetStarted(JZ)V
    .locals 3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleTimeUs:J

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleSize:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->sampleBytesRead:I

    goto :goto_0
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Id3Reader;->writingSample:Z

    return-void
.end method
