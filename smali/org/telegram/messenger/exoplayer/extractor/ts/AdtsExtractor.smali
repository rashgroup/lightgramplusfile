.class public final Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# static fields
.field private static final ID3_TAG:I

.field private static final MAX_PACKET_SIZE:I = 0xc8

.field private static final MAX_SNIFF_BYTES:I = 0x2000


# instance fields
.field private adtsReader:Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;

.field private final firstSampleTimestampUs:J

.field private final packetBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 3

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v3, 0xc8

    invoke-interface {p1, v2, v1, v3}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->read([BII)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->packetStarted(JZ)V

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->startedPacket:Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->packetBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    move v0, v1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->startedPacket:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->adtsReader:Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->seek()V

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 11

    const/16 v7, 0xa

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v1, 0x0

    new-instance v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v5, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    new-instance v6, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v0, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {v6, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    move v0, v1

    :goto_0
    iget-object v2, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v2, v1, v7}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    sget v3, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsExtractor;->ID3_TAG:I

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v2, v1

    move v3, v1

    move v4, v0

    :goto_1
    iget-object v7, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v8, 0x2

    invoke-interface {p1, v7, v1, v8}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const v8, 0xfff6

    and-int/2addr v7, v8

    const v8, 0xfff0

    if-eq v7, v8, :cond_3

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v4, v4, 0x1

    sub-int v2, v4, v0

    const/16 v3, 0x2000

    if-lt v2, v3, :cond_2

    :cond_0
    :goto_2
    return v1

    :cond_1
    iget-object v2, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v10

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x15

    iget-object v3, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    iget-object v3, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    iget-object v3, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v2, v3

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v0, v3

    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v2, v1

    move v3, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v9, :cond_4

    const/16 v7, 0xbc

    if-le v3, v7, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v7, v5, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v7, v1, v9}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v7

    if-le v7, v10, :cond_0

    add-int/lit8 v8, v7, -0x6

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    add-int/2addr v3, v7

    goto :goto_1
.end method
