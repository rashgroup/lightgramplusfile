.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# static fields
.field private static final AC3_SYNC_WORD:I = 0xb77

.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final ID3_TAG:I

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final MAX_SYNC_FRAME_SIZE:I = 0xae2


# instance fields
.field private final firstSampleTimestampUs:J

.field private reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

.field private final sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v3, 0xae2

    invoke-interface {p1, v2, v1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->firstSampleTimestampUs:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->packetStarted(JZ)V

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->sampleData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    move v0, v1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(J)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->startedPacket:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Reader;->seek()V

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 7

    const/16 v5, 0xa

    const/4 v1, 0x0

    new-instance v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    move v0, v1

    :goto_0
    iget-object v2, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;->ID3_TAG:I

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v2, v1

    move v3, v0

    :goto_1
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x5

    invoke-interface {p1, v5, v1, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_3

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v5, 0x2000

    if-lt v2, v5, :cond_2

    :cond_0
    :goto_2
    return v1

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v0, v3

    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v2, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x4

    if-lt v2, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/audio/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    add-int/lit8 v5, v5, -0x5

    invoke-interface {p1, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1
.end method
