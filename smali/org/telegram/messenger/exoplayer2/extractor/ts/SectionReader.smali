.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;


# static fields
.field private static final SECTION_HEADER_LENGTH:I = 0x3


# instance fields
.field private final headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private final reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

.field private sectionBytesRead:I

.field private final sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private sectionLength:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V
    .locals 4

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->headerScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionBytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    if-ge v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionLength:I

    const/4 v2, -0x1

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->crc([BIII)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;->init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public seek()V
    .locals 0

    return-void
.end method
