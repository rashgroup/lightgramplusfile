.class final Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

.field private final scratch:[B

.field private final varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    return-void
.end method

.method private maybeResyncToNextLevel1Element(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-interface {p1, v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v4

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-gt v0, v5, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v1, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    invoke-interface {v2, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->isLevel1Element(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    int-to-long v0, v1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0
.end method

.method private readFloat(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)D
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method private readInteger(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)J
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-interface {p1, v1, v0, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const/16 v1, 0x8

    shl-long/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private readString(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-array v1, p2, [B

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 10

    const-wide/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {v1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->endMasterElement(I)V

    :goto_2
    return v6

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v6, v7, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v0

    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v7, v6, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->getElementType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid element type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v0, v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v5, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    const/4 v9, 0x0

    invoke-direct {v5, v8, v0, v1, v9}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->startMasterElement(IJJ)V

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto :goto_2

    :pswitch_1
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid integer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->integerElement(IJ)V

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_2

    :pswitch_2
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid float size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->readFloat(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->floatElement(ID)V

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_2

    :pswitch_3
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String element size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->readString(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->stringElement(ILjava/lang/String;)V

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v2, v2

    invoke-interface {v0, v1, v2, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;->binaryElement(IILorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_2

    :pswitch_5
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/VarintReader;->reset()V

    return-void
.end method
