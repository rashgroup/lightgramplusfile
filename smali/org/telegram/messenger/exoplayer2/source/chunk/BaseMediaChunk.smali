.class public abstract Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
.source "BaseMediaChunk.java"


# instance fields
.field private firstSampleIndex:I

.field private trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    return-void
.end method


# virtual methods
.method public final getFirstSampleIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndex:I

    return v0
.end method

.method protected final getTrackOutput()Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    return-object v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->getWriteIndex()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndex:I

    return-void
.end method
