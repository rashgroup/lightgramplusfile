.class final Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final firstFramePosition:J

.field private final headerSize:I

.field private final inputLength:J

.field private final sizeBytes:J

.field private final tableOfContents:[J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 13

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ[JJI)V

    return-void
.end method

.method private constructor <init>(JJJ[JJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    iput-object p7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    iput-wide p8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    iput p10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->headerSize:I

    return-void
.end method

.method public static create(Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;
    .locals 12

    iget v2, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v0, v0

    add-long v6, p2, v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    and-int/lit8 v0, v8, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    int-to-long v0, v0

    int-to-long v2, v2

    const-wide/32 v10, 0xf4240

    mul-long/2addr v2, v10

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    and-int/lit8 v0, v8, 0x6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;

    move-wide v2, v6

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    int-to-long v9, v0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    const/16 v0, 0x63

    new-array v8, v0, [J

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x63

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    int-to-long v2, v1

    aput-wide v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;

    iget v11, p0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    move-wide v2, v6

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ[JJI)V

    goto :goto_0
.end method

.method private getTimeUsForTocPosition(I)J
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 11

    const-wide/16 v8, 0x1

    const/high16 v0, 0x43800000    # 256.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    :goto_0
    return-wide v0

    :cond_0
    long-to-float v2, p1

    mul-float/2addr v2, v6

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    cmpg-float v3, v2, v1

    if-gtz v3, :cond_2

    move v0, v1

    :cond_1
    :goto_1
    const-wide/high16 v2, 0x3f70000000000000L    # 0.00390625

    float-to-double v0, v0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    add-long/2addr v2, v0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    sub-long/2addr v0, v8

    :goto_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    cmpl-float v3, v2, v6

    if-gez v3, :cond_1

    float-to-int v3, v2

    if-nez v3, :cond_4

    :goto_3
    const/16 v4, 0x63

    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v4, v0, v3

    long-to-float v0, v4

    :cond_3
    sub-float/2addr v0, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v4, v3, -0x1

    aget-wide v4, v1, v4

    long-to-float v1, v4

    goto :goto_3

    :cond_5
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->headerSize:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    add-long/2addr v0, v4

    sub-long/2addr v0, v8

    goto :goto_2
.end method

.method public getTimeUs(J)J
    .locals 13

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    long-to-double v4, v4

    div-double v6, v0, v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    double-to-long v4, v6

    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v4, v5, v1, v8}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocPosition(I)J

    move-result-wide v10

    if-nez v8, :cond_2

    move-wide v4, v2

    :goto_1
    const/16 v0, 0x63

    if-ne v8, v0, :cond_3

    const-wide/16 v0, 0x100

    :goto_2
    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocPosition(I)J

    move-result-wide v8

    cmp-long v12, v0, v4

    if-nez v12, :cond_4

    move-wide v0, v2

    :goto_3
    add-long v2, v10, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v1, v8, -0x1

    aget-wide v0, v0, v1

    move-wide v4, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v0, v0, v8

    goto :goto_2

    :cond_4
    sub-long v2, v8, v10

    long-to-double v2, v2

    long-to-double v8, v4

    sub-double/2addr v6, v8

    mul-double/2addr v2, v6

    sub-long/2addr v0, v4

    long-to-double v0, v0

    div-double v0, v2, v0

    double-to-long v0, v0

    goto :goto_3
.end method

.method public isSeekable()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
