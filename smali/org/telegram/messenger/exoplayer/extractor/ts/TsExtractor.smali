.class public final Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PesReader;,
        Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PmtReader;,
        Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;,
        Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
    }
.end annotation


# static fields
.field private static final AC3_FORMAT_IDENTIFIER:J

.field private static final E_AC3_FORMAT_IDENTIFIER:J

.field private static final HEVC_FORMAT_IDENTIFIER:J

.field private static final TAG:Ljava/lang/String; = "TsExtractor"

.field private static final TS_PACKET_SIZE:I = 0xbc

.field private static final TS_PAT_PID:I = 0x0

.field private static final TS_STREAM_TYPE_AAC:I = 0xf

.field private static final TS_STREAM_TYPE_AC3:I = 0x81

.field private static final TS_STREAM_TYPE_DTS:I = 0x8a

.field private static final TS_STREAM_TYPE_EIA608:I = 0x100

.field private static final TS_STREAM_TYPE_E_AC3:I = 0x87

.field private static final TS_STREAM_TYPE_H262:I = 0x2

.field private static final TS_STREAM_TYPE_H264:I = 0x1b

.field private static final TS_STREAM_TYPE_H265:I = 0x24

.field private static final TS_STREAM_TYPE_HDMV_DTS:I = 0x82

.field private static final TS_STREAM_TYPE_ID3:I = 0x15

.field private static final TS_STREAM_TYPE_MPA:I = 0x3

.field private static final TS_STREAM_TYPE_MPA_LSF:I = 0x4

.field private static final TS_SYNC_BYTE:I = 0x47

.field public static final WORKAROUND_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final WORKAROUND_DETECT_ACCESS_UNITS:I = 0x8

.field public static final WORKAROUND_IGNORE_AAC_STREAM:I = 0x2

.field public static final WORKAROUND_IGNORE_H264_STREAM:I = 0x4


# instance fields
.field id3Reader:Lorg/telegram/messenger/exoplayer/extractor/ts/Id3Reader;

.field private output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

.field private final ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

.field final streamTypes:Landroid/util/SparseBooleanArray;

.field private final tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field final tsPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;",
            ">;"
        }
    .end annotation
.end field

.field private final tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

.field private final workaroundFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "AC-3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J

    const-string/jumbo v0, "EAC3"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J

    const-string/jumbo v0, "HEVC"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->workaroundFlags:I

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xbc

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->streamTypes:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->workaroundFlags:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;)Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    sget-wide v0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->AC3_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method static synthetic access$400()J
    .locals 2

    sget-wide v0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->E_AC3_FORMAT_IDENTIFIER:J

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    sget-wide v0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->HEVC_FORMAT_IDENTIFIER:J

    return-wide v0
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 6

    const/16 v2, 0xbc

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v1, v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setLimit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0x47

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v3

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    if-eqz v4, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPacketBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->output:Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    invoke-virtual {v0, v3, v2, v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;->consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ZLorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->ptsTimestampAdjuster:Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->reset()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;->seek()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v3, v1, [B

    move v2, v0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    invoke-interface {p1, v3, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    :goto_1
    return v0

    :cond_0
    const/16 v4, 0xbb

    invoke-interface {p1, v4}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
