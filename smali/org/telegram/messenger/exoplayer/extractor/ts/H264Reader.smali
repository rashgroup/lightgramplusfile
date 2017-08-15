.class final Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7


# instance fields
.field private hasOutputFormat:Z

.field private pesTimeUs:J

.field private final pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private final sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

.field private final sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private final seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

.field private final seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;ZZ)V
    .locals 3

    const/16 v2, 0x80

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-direct {v0, p1, p3, p4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;ZZ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parsePpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "video/avc"

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    iget v10, v15, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->width:I

    iget v11, v15, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->height:I

    const/4 v13, -0x1

    iget v14, v15, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    invoke-static/range {v4 .. v14}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4, v15}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->putSps(Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->putPps(Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiReader:Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1, v5}, Lorg/telegram/messenger/exoplayer/extractor/ts/SeiReader;->consume(JLorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->endNalUnit(JI)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->putSps(Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parsePpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->putPps(Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$PpsData;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto/16 :goto_0
.end method

.method private nalUnitData([BII)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    return-void
.end method

.method private startNalUnit(JIJ)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJ)V

    return-void
.end method

.method private static unescape(Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;)Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([BI)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    return-object v1
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 12

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v8

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v9, v0, v8, v1}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v10

    if-ne v10, v8, :cond_1

    invoke-direct {p0, v9, v0, v8}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->nalUnitData([BII)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v9, v10}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v11

    sub-int v1, v10, v0

    if-lez v1, :cond_2

    invoke-direct {p0, v9, v0, v10}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->nalUnitData([BII)V

    :cond_2
    sub-int v4, v8, v10

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    if-gez v1, :cond_3

    neg-int v5, v1

    :goto_1
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    iget-wide v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v1, p0

    move v4, v11

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    add-int/lit8 v0, v10, 0x3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader$SampleReader;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/H264Reader;->totalBytesWritten:J

    return-void
.end method
