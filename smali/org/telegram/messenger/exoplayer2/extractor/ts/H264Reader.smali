.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final NAL_UNIT_TYPE_PPS:I = 0x8

.field private static final NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final NAL_UNIT_TYPE_SPS:I = 0x7


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final detectAccessUnits:Z

.field private hasOutputFormat:Z

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private final prefixFlags:[Z

.field private sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

.field private final sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

.field private final seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private final sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(ZZ)V
    .locals 3

    const/16 v2, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    iput-boolean p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->detectAccessUnits:Z

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private endNalUnit(JIIJ)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    const-string/jumbo v4, "video/avc"

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v15, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    iget v9, v15, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v12, -0x1

    iget v13, v15, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    const/4 v14, 0x0

    invoke-static/range {v3 .. v14}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v3, v15}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->putSps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->putPps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v4, v4, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiWrapper:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->endNalUnit(JI)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->putSps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parsePpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->putPps(Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$PpsData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    goto/16 :goto_0
.end method

.method private nalUnitData([BII)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->appendToNalUnit([BII)V

    return-void
.end method

.method private startNalUnit(JIJ)V
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->hasOutputFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->needsSpsPps()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->startNalUnit(JIJ)V

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 12

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v8

    iget-object v9, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v9, v0, v8, v1}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v10

    if-ne v10, v8, :cond_0

    invoke-direct {p0, v9, v0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->nalUnitData([BII)V

    return-void

    :cond_0
    invoke-static {v9, v10}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->getNalUnitType([BI)I

    move-result v11

    sub-int v1, v10, v0

    if-lez v1, :cond_1

    invoke-direct {p0, v9, v0, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->nalUnitData([BII)V

    :cond_1
    sub-int v4, v8, v10

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    if-gez v1, :cond_2

    neg-int v5, v1

    :goto_1
    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->endNalUnit(JIIJ)V

    iget-wide v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    move-object v1, p0

    move v4, v11

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->startNalUnit(JIJ)V

    add-int/lit8 v0, v10, 0x3

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->allowNonIdrKeyframes:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->detectAccessUnits:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;ZZ)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getNextId()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->seiReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->prefixFlags:[Z

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->pps:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sei:Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/NalUnitTargetBuffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->sampleReader:Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader$SampleReader;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H264Reader;->totalBytesWritten:J

    return-void
.end method
