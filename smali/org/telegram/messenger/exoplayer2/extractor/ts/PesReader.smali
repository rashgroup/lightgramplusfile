.class public final Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader;


# static fields
.field private static final HEADER_SIZE:I = 0x9

.field private static final MAX_HEADER_EXTENSION_SIZE:I = 0xa

.field private static final PES_SCRATCH_SIZE:I = 0xa

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_HEADER_EXTENSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PesReader"


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0xa

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    return-void
.end method

.method private continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    if-eq v1, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    goto :goto_1
.end method

.method private parseHeader()Z
    .locals 6

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    const-string/jumbo v1, "PesReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected start code prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v0, :cond_1

    iput v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, -0x9

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    goto :goto_1
.end method

.method private parseHeaderExtension()V
    .locals 9

    const/16 v8, 0x1e

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timeUs:J

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v8

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->adjustTsTimestamp(J)J

    iput-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timeUs:J

    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    return-void
.end method


# virtual methods
.method public final consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    if-eqz p2, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->setState(I)V

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "PesReader"

    const-string/jumbo v2, "Unexpected start indicator reading extended header"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v5, :cond_1

    const-string/jumbo v0, "PesReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected start indicator: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " more bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_2
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_5
    const/16 v0, 0xa

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->pesScratch:Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-direct {p0, p1, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->continueRead(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->parseHeaderExtension()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timeUs:J

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    invoke-interface {v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->packetStarted(JZ)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-ne v2, v5, :cond_4

    move v2, v1

    :goto_3
    if-lez v2, :cond_3

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v2, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->consume(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    sub-int v0, v2, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->packetFinished()V

    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_1

    :cond_4
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->payloadSize:I

    sub-int v2, v0, v2

    goto :goto_3

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->createTracks(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->state:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->bytesRead:I

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->seenFirstDts:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/PesReader;->reader:Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
