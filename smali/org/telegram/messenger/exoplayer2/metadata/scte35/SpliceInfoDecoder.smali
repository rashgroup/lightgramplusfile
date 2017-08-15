.class public final Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;
.super Ljava/lang/Object;
.source "SpliceInfoDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public canDecode(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "application/x-scte35"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .locals 9

    const/16 v3, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->reset([BI)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v0, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sparse-switch v4, :sswitch_data_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    new-array v1, v7, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>([Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;)V

    :goto_1
    return-object v0

    :sswitch_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)Lorg/telegram/messenger/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/metadata/scte35/SpliceInfoDecoder;->sectionData:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;->parseFromSection(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;IJ)Lorg/telegram/messenger/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    new-array v2, v8, [Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;

    aput-object v1, v2, v7

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/metadata/Metadata;-><init>([Lorg/telegram/messenger/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method
