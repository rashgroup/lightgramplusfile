.class final Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;
.super Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.source "AdtsReader.java"


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x2

.field private static final STATE_READING_ID3_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AdtsReader"


# instance fields
.field private final adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

.field private bytesRead:I

.field private currentOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final id3Output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

.field private matchState:I

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-static {}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createId3Format()Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->setFindingSampleState()V

    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findNextSample(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 7

    const/16 v6, 0x200

    const/16 v5, 0x100

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->limit()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->matchState:I

    if-ne v4, v6, :cond_1

    const/16 v4, 0xf0

    if-lt v0, v4, :cond_1

    const/16 v4, 0xff

    if-eq v0, v4, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->hasCrc:Z

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->matchState:I

    if-eq v0, v5, :cond_3

    iput v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->matchState:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :sswitch_0
    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->matchState:I

    move v0, v1

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x300

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->matchState:I

    move v0, v1

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x400

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->matchState:I

    move v0, v1

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x149 -> :sswitch_1
        0x1ff -> :sswitch_0
        0x344 -> :sswitch_2
        0x433 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseAdtsHeader()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->hasOutputFormat:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_2

    const-string/jumbo v3, "AdtsReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Detected audio object type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", but assuming AAC LC."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v3, v11}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v7

    const/4 v0, 0x0

    const-string/jumbo v1, "audio/mp4a-latm"

    const-wide/16 v4, -0x1

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    move v3, v2

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    const-wide/32 v2, 0x3d090000

    iget v1, v0, Lorg/telegram/messenger/exoplayer/MediaFormat;->sampleRate:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->sampleDurationUs:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    iput-boolean v11, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->hasOutputFormat:Z

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v5, v0, -0x5

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_0

    add-int/lit8 v5, v5, -0x2

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->sampleDurationUs:J

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->setReadingSampleState(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;JII)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private parseId3Header()V
    .locals 6

    const/16 v4, 0xa

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-interface {v0, v1, v4}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->id3Output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->setReadingSampleState(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;JII)V

    return-void
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 8

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->currentOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->currentOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->timeUs:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->setFindingSampleState()V

    :cond_0
    return-void
.end method

.method private setFindingSampleState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->state:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    const/16 v0, 0x100

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->matchState:I

    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method private setReadingId3HeaderState()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->state:I

    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private setReadingSampleState(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;JII)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->state:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->bytesRead:I

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->currentOutput:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->currentSampleDuration:J

    iput p5, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->sampleSize:I

    return-void
.end method


# virtual methods
.method public consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->findNextSample(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->id3HeaderBuffer:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->adtsScratch:Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->continueRead(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->readSample(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JZ)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->timeUs:J

    return-void
.end method

.method public seek()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/AdtsReader;->setFindingSampleState()V

    return-void
.end method
