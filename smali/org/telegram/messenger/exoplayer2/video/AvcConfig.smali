.class public final Lorg/telegram/messenger/exoplayer2/video/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


# instance fields
.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthAspectRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;IIIF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->width:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->height:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    return-void
.end method

.method private static buildNalUnitForChild(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)[B
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/video/AvcConfig;
    .locals 7

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v2, "Error parsing AVC config"

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v6, v3, 0x1f

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;->buildNalUnitForChild(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v6, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v0, v0

    invoke-static {v3, v2, v0}, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil;->parseSpsNalUnit([BII)Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;

    move-result-object v0

    iget v3, v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    iget v5, v0, Lorg/telegram/messenger/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    :goto_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/video/AvcConfig;-><init>(Ljava/util/List;IIIF)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_3
    move v3, v4

    goto :goto_2
.end method
