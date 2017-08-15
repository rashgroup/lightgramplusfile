.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;,
        Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;
    }
.end annotation


# static fields
.field private static final AC3_FORMAT_IDENTIFIER:J

.field private static final BUFFER_PACKET_COUNT:I = 0x5

.field private static final BUFFER_SIZE:I = 0x3ac

.field private static final E_AC3_FORMAT_IDENTIFIER:J

.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final HEVC_FORMAT_IDENTIFIER:J

.field private static final MAX_PID_PLUS_ONE:I = 0x2000

.field private static final TS_PACKET_SIZE:I = 0xbc

.field private static final TS_PAT_PID:I = 0x0

.field public static final TS_STREAM_TYPE_AAC:I = 0xf

.field public static final TS_STREAM_TYPE_AC3:I = 0x81

.field public static final TS_STREAM_TYPE_DTS:I = 0x8a

.field public static final TS_STREAM_TYPE_E_AC3:I = 0x87

.field public static final TS_STREAM_TYPE_H262:I = 0x2

.field public static final TS_STREAM_TYPE_H264:I = 0x1b

.field public static final TS_STREAM_TYPE_H265:I = 0x24

.field public static final TS_STREAM_TYPE_HDMV_DTS:I = 0x82

.field public static final TS_STREAM_TYPE_ID3:I = 0x15

.field public static final TS_STREAM_TYPE_MPA:I = 0x3

.field public static final TS_STREAM_TYPE_MPA_LSF:I = 0x4

.field public static final TS_STREAM_TYPE_SPLICE_INFO:I = 0x86

.field private static final TS_SYNC_BYTE:I = 0x47


# instance fields
.field private final continuityCounters:Landroid/util/SparseIntArray;

.field private id3Reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

.field private final mapByType:Z

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private final payloadReaderFactory:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

.field private final timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

.field private final trackIds:Landroid/util/SparseBooleanArray;

.field private tracksEnded:Z

.field private final tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field

.field private final tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    const-string/jumbo v0, "AC-3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J

    const-string/jumbo v0, "EAC3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J

    const-string/jumbo v0, "HEVC"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V
    .locals 2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->mapByType:Z

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x3ac

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->resetPayloadReaders()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->mapByType:Z

    return v0
.end method

.method static synthetic access$1000()J
    .locals 2

    sget-wide v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tracksEnded:Z

    return p1
.end method

.method static synthetic access$800()J
    .locals 2

    sget-wide v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method static synthetic access$900()J
    .locals 2

    sget-wide v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method private resetPayloadReaders()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->payloadReaderFactory:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)V

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->id3Reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->output:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 11

    const/16 v7, 0xbc

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    rsub-int v4, v4, 0x3ac

    if-ge v4, v7, :cond_1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-static {v3, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-ge v4, v7, :cond_4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    rsub-int v5, v4, 0x3ac

    invoke-interface {p1, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v5

    if-ne v5, v0, :cond_3

    move v2, v0

    :cond_2
    :goto_1
    return v2

    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    add-int/2addr v4, v5

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_2
    if-ge v0, v4, :cond_5

    aget-byte v5, v3, v0

    const/16 v6, 0x47

    if-eq v5, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit16 v5, v0, 0xbc

    if-gt v5, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v0, v3, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v8

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v9, v0, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v9, v3, :cond_7

    if-eqz v8, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0x10

    if-eq v3, v9, :cond_c

    move v3, v1

    :goto_3
    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v9, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_8
    if-eqz v8, :cond_a

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;

    if-eqz v0, :cond_a

    if-eqz v3, :cond_9

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;->seek()V

    :cond_9
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v3, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-gt v0, v5, :cond_b

    move v0, v1

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    move v3, v2

    goto :goto_3
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->resetPayloadReaders()V

    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0x3ac

    invoke-interface {p1, v3, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    move v2, v0

    :goto_0
    const/16 v1, 0xbc

    if-ge v2, v1, :cond_0

    move v1, v0

    :goto_1
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    mul-int/lit16 v4, v1, 0xbc

    add-int/2addr v4, v2

    aget-byte v4, v3, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
