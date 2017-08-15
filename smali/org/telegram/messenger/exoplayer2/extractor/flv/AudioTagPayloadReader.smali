.class final Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;
.super Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x157c
        0x2af8
        0x55f0
        0xabe0
    .end array-data
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    return-void
.end method


# virtual methods
.method protected parseHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    if-ltz v0, :cond_0

    sget-object v2, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid sample rate index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    :goto_0
    return v3

    :cond_3
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0
.end method

.method protected parsePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)V
    .locals 14

    const/4 v4, -0x1

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v5, v2, [B

    array-length v2, v5

    invoke-virtual {p1, v5, v10, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v5}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v7

    const-string/jumbo v2, "audio/mp4a-latm"

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v3, v1

    move v5, v4

    move-object v9, v1

    move-object v11, v1

    invoke-static/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    iput-boolean v12, p0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v2, v12, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, p1, v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-wide/from16 v6, p2

    move v8, v12

    move-object v11, v1

    invoke-interface/range {v5 .. v11}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0
.end method

.method public seek()V
    .locals 0

    return-void
.end method
