.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# static fields
.field public static final EMPTY_PAGE_HEADER_SIZE:I = 0x1b

.field public static final MAX_PAGE_PAYLOAD:I = 0xfe01

.field public static final MAX_PAGE_SIZE:I = 0xff1b

.field public static final MAX_SEGMENT_COUNT:I = 0xff

.field private static final TYPE_OGGS:I


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field private final scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field public streamSerialNumber:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "OggS"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->TYPE_OGGS:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v1, 0xff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1b

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v3, 0x1b

    invoke-interface {p1, v2, v0, v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    if-eqz p2, :cond_4

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    sget v4, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->TYPE_OGGS:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    if-nez p2, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "expected OggS capture pattern at begin of page"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    if-eqz v2, :cond_7

    if-nez p2, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "unsupported bit stream revision"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    add-int/lit8 v2, v2, 0x1b

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset()V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    invoke-interface {p1, v2, v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    :goto_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    aput v3, v2, v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    return-void
.end method
