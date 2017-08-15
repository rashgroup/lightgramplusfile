.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field private currentSegmentIndex:I

.field private final packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

.field private populated:Z

.field private segmentCount:I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    return-void
.end method

.method private calculatePacketSize(I)I
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method


# virtual methods
.method public getPageHeader()Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    return-object v0
.end method

.method public getPayload()Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-object v0
.end method

.method public populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset()V

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_8

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    if-nez v3, :cond_8

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, v2

    :goto_3
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, v4

    if-lez v0, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-interface {p1, v4, v5, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v4, v3, -0x1

    aget v0, v0, v4

    const/16 v4, 0xff

    if-eq v0, v4, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ne v3, v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_5

    :cond_7
    move v2, v1

    goto :goto_2

    :cond_8
    move v3, v2

    goto :goto_3
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    return-void
.end method
