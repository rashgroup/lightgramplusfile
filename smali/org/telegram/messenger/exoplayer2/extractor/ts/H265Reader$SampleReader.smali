.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation


# static fields
.field private static final FIRST_SLICE_FLAG_OFFSET:I = 0x2


# instance fields
.field private isFirstParameterSet:Z

.field private isFirstSlice:Z

.field private lookingForFirstSliceFlag:Z

.field private nalUnitBytesRead:I

.field private nalUnitHasKeyframeData:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private final output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private writingParameterSets:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method private outputSample(I)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public endNalUnit(JI)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    :cond_3
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    goto :goto_0
.end method

.method public readNalUnitData([BII)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int/2addr v0, v2

    if-ge v0, p3, :cond_2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    return-void
.end method

.method public startNalUnit(JIIJ)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstSlice:Z

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitTimeUs:J

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitBytesRead:I

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitStartPosition:J

    const/16 v0, 0x20

    if-lt p4, v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->outputSample(I)V

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->readingSample:Z

    :cond_0
    const/16 v0, 0x22

    if-gt p4, v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->isFirstParameterSet:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->writingParameterSets:Z

    :cond_1
    const/16 v0, 0x10

    if-lt p4, v0, :cond_5

    const/16 v0, 0x15

    if-gt p4, v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->nalUnitHasKeyframeData:Z

    if-nez v0, :cond_2

    const/16 v0, 0x9

    if-gt p4, v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H265Reader$SampleReader;->lookingForFirstSliceFlag:Z

    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
