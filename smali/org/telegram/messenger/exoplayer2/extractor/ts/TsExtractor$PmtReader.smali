.class Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PmtReader"
.end annotation


# static fields
.field private static final TS_PMT_DESC_AC3:I = 0x6a

.field private static final TS_PMT_DESC_DTS:I = 0x7b

.field private static final TS_PMT_DESC_EAC3:I = 0x7a

.field private static final TS_PMT_DESC_ISO639_LANG:I = 0xa

.field private static final TS_PMT_DESC_REGISTRATION:I = 0x5


# instance fields
.field private final pid:I

.field private final pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;I)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    return-void
.end method

.method private readEsInfo(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;
    .locals 12

    const/16 v3, 0x87

    const/16 v2, 0x81

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    add-int v5, v4, p2

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, v5, :cond_7

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x5

    if-ne v6, v8, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$800()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_1

    move v1, v2

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v6

    sub-int v6, v7, v6

    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$900()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J
    invoke-static {}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$1000()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_0

    const/16 v1, 0x24

    goto :goto_1

    :cond_3
    const/16 v8, 0x6a

    if-ne v6, v8, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    const/16 v8, 0x7a

    if-ne v6, v8, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    const/16 v8, 0x7b

    if-ne v6, v8, :cond_6

    const/16 v1, 0x8a

    goto :goto_1

    :cond_6
    const/16 v8, 0xa

    if-ne v6, v8, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    const/4 v9, 0x3

    invoke-direct {v0, v6, v8, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;[B)V

    return-object v2
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 13

    const/16 v12, 0xc

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x15

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->mapByType:Z
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    const/4 v1, 0x0

    new-array v2, v9, [B

    invoke-direct {v0, v8, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;[B)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v2

    invoke-interface {v2, v8, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v0

    # setter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    invoke-static {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$202(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$400(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v4, 0x2000

    invoke-direct {v3, v8, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;->init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pmtScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->readEsInfo(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v0, v5, :cond_1

    iget v0, v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->streamType:I

    :cond_1
    add-int/lit8 v3, v3, 0x5

    sub-int v3, v1, v3

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->mapByType:Z
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_1
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$600(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$600(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, v1, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->mapByType:Z
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v0

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createPayloadReader(ILorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$400(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v7, 0x2000

    invoke-direct {v6, v1, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-interface {v0, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;->init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->mapByType:Z
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$700(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    :cond_8
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # setter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z
    invoke-static {v0, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$702(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;Z)Z

    return-void

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->pid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto :goto_3
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    return-void
.end method
