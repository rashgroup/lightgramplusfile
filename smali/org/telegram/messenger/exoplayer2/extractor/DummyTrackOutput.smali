.class public final Lorg/telegram/messenger/exoplayer2/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0

    return-void
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 2

    const/4 v0, -0x1

    invoke-interface {p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    if-eqz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 0

    return-void
.end method
