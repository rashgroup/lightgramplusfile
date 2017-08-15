.class final Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;
.super Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;
    }
.end annotation


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private final nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    sget-object v1, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    return-void
.end method

.method private parseAvcCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;
    .locals 8

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v6, v0, 0x1f

    move v0, v3

    :goto_1
    if-ge v0, v6, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    move v0, v3

    :goto_2
    if-ge v0, v5, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v6, :cond_3

    new-instance v4, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v4, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;-><init>([B)V

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;->setPosition(I)V

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lorg/telegram/messenger/exoplayer/util/ParsableBitArray;)Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v0

    iget v3, v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->width:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->height:I

    iget v5, v0, Lorg/telegram/messenger/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    :goto_3
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;-><init>(Ljava/util/List;IIIF)V

    return-object v0

    :cond_3
    move v3, v4

    goto :goto_3
.end method


# virtual methods
.method protected parseHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Video format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parsePayload(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V
    .locals 12

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v11, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    add-long v8, p2, v4

    if-nez v1, :cond_1

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v3, :cond_1

    new-instance v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v1, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([B)V

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p1, v3, v6, v4}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->parseAvcCodecPrivate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;

    move-result-object v3

    iget v1, v3, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->nalUnitLengthFieldLength:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const-string/jumbo v1, "video/avc"

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->getDurationUs()J

    move-result-wide v4

    iget v6, v3, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->width:I

    iget v7, v3, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->height:I

    iget-object v8, v3, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->initializationData:Ljava/util/List;

    iget v10, v3, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader$AvcSequenceHeaderData;->pixelWidthAspectRatio:F

    move v3, v2

    move v9, v2

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lorg/telegram/messenger/exoplayer/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    iput-boolean v11, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v11, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    aput-byte v6, v1, v6

    aput-byte v6, v1, v11

    const/4 v2, 0x2

    aput-byte v6, v1, v2

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v1, v1, 0x4

    move v5, v6

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p1, v2, v1, v3}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalLength:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/4 v7, 0x4

    invoke-interface {v3, v4, v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    add-int/lit8 v3, v5, 0x4

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    invoke-interface {v4, p1, v2}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V

    add-int v5, v3, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v2, v11, :cond_3

    move v4, v11

    :goto_2
    move-wide v2, v8

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_2
.end method

.method public seek()V
    .locals 0

    return-void
.end method
