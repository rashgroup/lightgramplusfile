.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "H265Reader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final BLA_W_LP:I = 0x10

.field private static final CRA_NUT:I = 0x15

.field private static final PPS_NUT:I = 0x22

.field private static final PREFIX_SEI_NUT:I = 0x27

.field private static final RASL_R:I = 0x9

.field private static final SPS_NUT:I = 0x21

.field private static final SUFFIX_SEI_NUT:I = 0x28

.field private static final TAG:Ljava/lang/String; = "H265Reader"

.field private static final VPS_NUT:I = 0x20


# instance fields
.field private hasOutputFormat:Z

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final prefixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;

.field private seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

.field private final seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final suffixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J

.field private final vps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 5

    const/4 v4, 0x5

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->endNalUnit(JI)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p5, p6, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p5, p6, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->parseMediaFormat(Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    goto/16 :goto_0
.end method

.method private nalUnitData([BII)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readNalUnitData([BII)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_0
.end method

.method private static parseMediaFormat(Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 13

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v1

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v0, v1

    new-array v8, v0, [B

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    add-int/2addr v2, v3

    iget v3, p2, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v1, 0x0

    iget v2, p1, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/16 v0, 0x58

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v12, v0

    move v0, v2

    move v2, v12

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x59

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x8

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    if-lez v1, :cond_3

    rsub-int/lit8 v0, v1, 0x8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_3
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    const/4 v0, 0x3

    if-ne v4, v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_4
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    const/4 v0, 0x1

    if-eq v4, v0, :cond_5

    const/4 v0, 0x2

    if-ne v4, v0, :cond_7

    :cond_5
    const/4 v0, 0x2

    move v2, v0

    :goto_1
    const/4 v0, 0x1

    if-ne v4, v0, :cond_8

    const/4 v0, 0x2

    :goto_2
    add-int v4, v7, v9

    mul-int/2addr v2, v4

    sub-int/2addr v5, v2

    add-int v2, v10, v11

    mul-int/2addr v0, v2

    sub-int/2addr v6, v0

    :cond_6
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_3
    if-gt v0, v1, :cond_a

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    move v2, v0

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->skipScalingList(Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;)V

    :cond_b
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_c
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->skipShortTermRefPicSets(Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;)V

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    if-ge v0, v1, :cond_d

    add-int/lit8 v1, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_f

    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    :cond_e
    move v10, v0

    :goto_5
    const/4 v0, 0x0

    const-string/jumbo v1, "video/hevc"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_f
    sget-object v2, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v2

    if-ge v1, v2, :cond_10

    sget-object v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v0, v0, v1

    move v10, v0

    goto :goto_5

    :cond_10
    const-string/jumbo v2, "H265Reader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v10, v0

    goto :goto_5
.end method

.method private static skipScalingList(Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 7

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    const/4 v0, 0x4

    if-ge v5, v0, :cond_5

    move v4, v3

    :goto_1
    const/4 v0, 0x6

    if-ge v4, v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    :cond_0
    if-ne v5, v1, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    shl-int/lit8 v6, v5, 0x1

    add-int/lit8 v6, v6, 0x4

    shl-int v6, v2, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-le v5, v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_2
    move v0, v3

    :goto_3
    if-ge v0, v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static skipShortTermRefPicSets(Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    move v4, v2

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v4, v5, :cond_4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move v1, v2

    :goto_2
    if-gt v1, v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v7

    add-int v0, v6, v7

    move v1, v2

    :goto_3
    if-ge v1, v6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_4
    if-ge v1, v7, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    move v3, v1

    goto :goto_1
.end method

.method private startNalUnit(JIIJ)V
    .locals 9

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->startNalUnit(JIIJ)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    goto :goto_0
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 12

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v8

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    :goto_0
    if-ge v0, v8, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v9, v0, v8, v1}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v10

    if-ne v10, v8, :cond_2

    invoke-direct {p0, v9, v0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v9, v10}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->getH265NalUnitType([BI)I

    move-result v11

    sub-int v1, v10, v0

    if-lez v1, :cond_3

    invoke-direct {p0, v9, v0, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->nalUnitData([BII)V

    :cond_3
    sub-int v4, v8, v10

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    if-gez v1, :cond_4

    neg-int v5, v1

    :goto_1
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->endNalUnit(JIIJ)V

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->startNalUnit(JIIJ)V

    add-int/lit8 v0, v10, 0x3

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixFlags:[Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->vps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->prefixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->suffixSei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;->totalBytesWritten:J

    return-void
.end method
