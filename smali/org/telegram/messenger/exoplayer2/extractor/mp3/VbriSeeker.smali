.class final Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final positions:[J

.field private final timesUs:[J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    return-void
.end method

.method public static create(Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;
    .locals 18

    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    int-to-long v2, v2

    const-wide/32 v8, 0xf4240

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_1

    const/16 v4, 0x480

    :goto_1
    int-to-long v4, v4

    mul-long/2addr v4, v8

    int-to-long v6, v6

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    int-to-long v2, v2

    add-long v4, p2, v2

    add-int/lit8 v2, v10, 0x1

    new-array v13, v2, [J

    add-int/lit8 v2, v10, 0x1

    new-array v14, v2, [J

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v13, v2

    const/4 v2, 0x0

    aput-wide v4, v14, v2

    const/4 v2, 0x1

    :goto_2
    array-length v3, v13

    if-ge v2, v3, :cond_3

    packed-switch v12, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v4, 0x240

    goto :goto_1

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    :goto_3
    mul-int/2addr v3, v11

    int-to-long v6, v3

    add-long/2addr v4, v6

    int-to-long v6, v2

    mul-long/2addr v6, v8

    int-to-long v0, v10

    move-wide/from16 v16, v0

    div-long v6, v6, v16

    aput-wide v6, v13, v2

    const-wide/16 v6, -0x1

    cmp-long v3, p4, v6

    if-nez v3, :cond_2

    move-wide v6, v4

    :goto_4
    aput-wide v6, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    goto :goto_3

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    goto :goto_3

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    goto :goto_3

    :cond_2
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_4

    :cond_3
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;

    invoke-direct {v2, v13, v14, v8, v9}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;-><init>([J[JJ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    invoke-static {v1, p1, p2, v2, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->positions:[J

    invoke-static {v1, p1, p2, v2, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
