.class Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;
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
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    const/16 v7, 0xd

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;

    new-instance v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    invoke-direct {v5, v6, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor$PmtReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;I)V

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    return-void
.end method
