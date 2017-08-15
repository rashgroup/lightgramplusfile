.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;
.super Ljava/lang/Object;
.source "SeiReader.java"


# instance fields
.field private final output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const-string/jumbo v1, "application/cea-608"

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v2, v0

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    return-void
.end method


# virtual methods
.method public consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 15

    const/16 v13, 0xff

    const/4 v12, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-le v2, v6, :cond_4

    move v2, v8

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    add-int/2addr v2, v3

    if-eq v3, v13, :cond_0

    move v3, v8

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    add-int v10, v3, v4

    if-eq v4, v13, :cond_5

    move-object/from16 v0, p3

    invoke-static {v2, v10, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->isSeiMessageCea608(IILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v11, v2, 0x1f

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v2, v8

    move v7, v8

    :goto_2
    if-ge v2, v11, :cond_2

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p3

    invoke-interface {v3, v0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    mul-int/lit8 v2, v11, 0x3

    add-int/lit8 v2, v2, 0xa

    sub-int v2, v10, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    move v3, v10

    goto :goto_1
.end method
