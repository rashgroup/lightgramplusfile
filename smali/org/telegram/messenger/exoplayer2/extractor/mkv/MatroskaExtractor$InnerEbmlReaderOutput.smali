.class final Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/mkv/EbmlReaderOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerEbmlReaderOutput"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;)V

    return-void
.end method


# virtual methods
.method public binaryElement(IILorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->binaryElement(IILorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    return-void
.end method

.method public endMasterElement(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->endMasterElement(I)V

    return-void
.end method

.method public floatElement(ID)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->floatElement(ID)V

    return-void
.end method

.method public getElementType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->getElementType(I)I

    move-result v0

    return v0
.end method

.method public integerElement(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->integerElement(IJ)V

    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->isLevel1Element(I)Z

    move-result v0

    return v0
.end method

.method public startMasterElement(IJJ)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->startMasterElement(IJJ)V

    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/mkv/MatroskaExtractor;->stringElement(ILjava/lang/String;)V

    return-void
.end method
