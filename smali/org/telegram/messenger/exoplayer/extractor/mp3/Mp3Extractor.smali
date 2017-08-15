.class public final Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;
    }
.end annotation


# static fields
.field private static final HEADER_MASK:I = -0x1f400

.field private static final INFO_HEADER:I

.field private static final MAX_SNIFF_BYTES:I = 0x1000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final VBRI_HEADER:I

.field private static final XING_HEADER:I


# instance fields
.field private basisTimeUs:J

.field private extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final forcedFirstSampleTimestampUs:J

.field private gaplessInfo:Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

.field private final synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

.field private synchronizedHeaderData:I

.field private trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "Xing"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    const-string/jumbo v0, "Info"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    const-string/jumbo v0, "VBRI"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    return-void
.end method

.method private maybeResynchronize(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 6

    const v5, -0x1f400

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v3, 0x4

    invoke-interface {p1, v2, v0, v3, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    and-int v3, v2, v5

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-static {v2, v0}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer/util/MpegAudioHeader;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizeCatchingEndOfInput(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    goto :goto_0
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)I
    .locals 12

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v6, 0x0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->maybeResynchronize(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_1

    move v6, v0

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v2

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long v2, v10, v2

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v1, p1, v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v1

    if-ne v1, v0, :cond_4

    move v6, v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:J

    const-wide/32 v8, 0xf4240

    mul-long/2addr v2, v8

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v5, v5, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    int-to-long v8, v5

    div-long/2addr v2, v8

    add-long/2addr v2, v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v5, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:J

    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    goto :goto_0
.end method

.method private setupSeeker(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V
    .locals 10

    const/16 v0, 0x24

    const/16 v6, 0x15

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iget-object v2, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v2, v9, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->version:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->channels:I

    if-eq v7, v8, :cond_0

    move v6, v0

    :cond_0
    :goto_0
    invoke-virtual {v1, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v7

    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    if-eq v7, v8, :cond_1

    sget v8, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    if-ne v7, v8, :cond_6

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->create(Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit16 v0, v6, 0x8d

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, 0x3

    invoke-interface {p1, v0, v9, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->createFromXingHeaderValue(I)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v9, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer/util/MpegAudioHeader;)Z

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/ConstantBitrateSeeker;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->bitrate:I

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/mp3/ConstantBitrateSeeker;-><init>(JIJ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    :cond_4
    return-void

    :cond_5
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->channels:I

    if-ne v7, v8, :cond_0

    const/16 v6, 0xd

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v6, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;->create(Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer/extractor/mp3/VbriSeeker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1
.end method

.method private synchronize(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Z)Z
    .locals 11

    const/4 v10, 0x4

    const v9, -0x1f400

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_b

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Id3Util;->parseId3(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    long-to-int v0, v0

    if-nez p2, :cond_0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    :cond_0
    move v6, v0

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    if-eqz p2, :cond_2

    const/16 v0, 0x1000

    if-ne v4, v0, :cond_2

    :cond_1
    :goto_1
    return v2

    :cond_2
    if-nez p2, :cond_3

    const/high16 v0, 0x20000

    if-ne v4, v0, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "Searched too many bytes."

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v10, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    if-eqz v1, :cond_4

    and-int v7, v0, v9

    and-int v8, v1, v9

    if-ne v7, v8, :cond_5

    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    :cond_5
    add-int/lit8 v0, v4, 0x1

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    add-int v1, v6, v0

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v1, v2

    move v3, v0

    move v0, v2

    :goto_2
    move v4, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_6
    invoke-interface {p1, v5}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    move v1, v2

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_8

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer/util/MpegAudioHeader;)Z

    :goto_3
    add-int/lit8 v1, v7, -0x4

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_8
    if-ne v3, v10, :cond_a

    if-eqz p2, :cond_9

    add-int v0, v6, v4

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    :goto_4
    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    move v2, v5

    goto :goto_1

    :cond_9
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move v6, v2

    move v1, v2

    move v3, v2

    move v4, v2

    goto :goto_0
.end method

.method private synchronizeCatchingEndOfInput(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronize(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 10

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizeCatchingEndOfInput(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->setupSeeker(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v1, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/16 v3, 0x1000

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getDurationUs()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v6, v6, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->channels:I

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move-object v8, v0

    move-object v9, v0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    iget v1, v1, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->encoderDelay:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->gaplessInfo:Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->encoderPadding:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/MediaFormat;->copyWithGaplessInfo(II)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->readSample(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)I

    move-result v2

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor;->synchronize(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
