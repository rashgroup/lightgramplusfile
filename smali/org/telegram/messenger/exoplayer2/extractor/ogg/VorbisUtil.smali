.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iLog(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .locals 6

    long-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private static readBook(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v8, 0x5

    const/4 v12, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    if-eq v1, v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    new-array v3, v2, [J

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v4

    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_5

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    aput-wide v6, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    aput-wide v6, v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    aput-wide v6, v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    move v4, v0

    :goto_2
    array-length v7, v3

    if-ge v4, v7, :cond_5

    sub-int v7, v2, v4

    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    move v7, v0

    :goto_3
    if-ge v7, v9, :cond_4

    array-length v8, v3

    if-ge v4, v8, :cond_4

    int-to-long v10, v6

    aput-wide v10, v3, v4

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v8

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v14}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    if-le v4, v13, :cond_6

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lookup type greater than 2 not decodable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eq v4, v12, :cond_7

    if-ne v4, v13, :cond_8

    :cond_7
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v14}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    if-ne v4, v12, :cond_a

    if-eqz v1, :cond_9

    int-to-long v6, v2

    int-to-long v8, v1

    invoke-static {v6, v7, v8, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v6

    :goto_4
    int-to-long v8, v0

    mul-long/2addr v6, v8

    long-to-int v0, v6

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_8
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object v0

    :cond_9
    const-wide/16 v6, 0x0

    goto :goto_4

    :cond_a
    mul-int v6, v2, v1

    int-to-long v6, v6

    goto :goto_4
.end method

.method private static readFloors(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 15

    const/4 v14, 0x2

    const/16 v13, 0x10

    const/4 v12, 0x4

    const/16 v11, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_7

    invoke-virtual {p0, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "floor type greater than 1 not decodable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v13}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_6

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v0, -0x1

    new-array v7, v6, [I

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_1

    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    aput v3, v7, v2

    aget v3, v7, v2

    if-le v3, v0, :cond_0

    aget v0, v7, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [I

    move v0, v1

    :goto_3
    array-length v2, v8

    if-ge v0, v2, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v8, v0

    invoke-virtual {p0, v14}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_2
    move v2, v1

    :goto_4
    const/4 v9, 0x1

    shl-int/2addr v9, v3

    if-ge v2, v9, :cond_3

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v14}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v12}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_5
    if-ge v2, v6, :cond_6

    aget v10, v7, v2

    aget v10, v8, v10

    add-int/2addr v3, v10

    :goto_6
    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static readMappings(ILorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_5

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v2, "VorbisUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mapping type other than 0 not supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move v2, v3

    :goto_2
    if-ge v2, v6, :cond_2

    add-int/lit8 v7, p0, -0x1

    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v7

    invoke-virtual {p1, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v7, p0, -0x1

    invoke-static {v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v7

    invoke-virtual {p1, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-le v0, v1, :cond_4

    move v2, v3

    :goto_3
    if-ge v2, p0, :cond_4

    invoke-virtual {p1, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_4
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static readModes(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .locals 9

    const/16 v8, 0x10

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v2, v1, [Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v3

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    invoke-virtual {p0, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    new-instance v7, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    invoke-direct {v7, v3, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static readResidues(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V
    .locals 12

    const/4 v11, 0x6

    const/16 v10, 0x18

    const/16 v9, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_5

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "residueType greater than 2 is not decodable"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    new-array v6, v5, [I

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    :goto_2
    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v7

    aput v0, v6, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_4

    move v0, v1

    :goto_4
    if-ge v0, v9, :cond_3

    aget v7, v6, v2

    const/4 v8, 0x1

    shl-int/2addr v8, v0

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    invoke-virtual {p0, v9}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public static readVorbisCommentHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v3, v3, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4

    :goto_0
    int-to-long v6, v0

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v6

    long-to-int v6, v6

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "framing bit expected to be set"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    new-instance v1, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v1
.end method

.method public static readVorbisIdentificationHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    and-int/lit8 v9, v0, 0xf

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-double v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v11, 0x1

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v12

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;-><init>(JIJIIIIIZ[B)V

    return-object v0

    :cond_0
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public static readVorbisModes(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v1, p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;-><init>([B)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->skipBits(I)V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readBook(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$CodeBook;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v0, v1, :cond_2

    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readFloors(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readResidues(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V

    invoke-static {p1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readMappings(ILorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)V

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil;->readModes(Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;)[Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisUtil$Mode;

    move-result-object v0

    invoke-virtual {v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "framing bit after modes not set as expected"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public static verifyVorbisHeaderCapturePattern(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "too short header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eq v1, p0, :cond_3

    if-nez p2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected header type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x73

    if-eq v1, v2, :cond_5

    :cond_4
    if-nez p2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "expected characters \'vorbis\'"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
