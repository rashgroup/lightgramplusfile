.class Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "TsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$1;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ZLorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 8

    const/16 v7, 0xd

    const/16 v1, 0xc

    const/4 v6, 0x3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {p1, v0, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x9

    div-int/lit8 v1, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->patScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PmtReader;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PatReader;->this$0:Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;

    invoke-direct {v4, v5}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$PmtReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public seek()V
    .locals 0

    return-void
.end method
