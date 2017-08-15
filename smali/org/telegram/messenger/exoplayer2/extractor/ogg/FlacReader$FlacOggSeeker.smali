.class Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
.implements Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlacOggSeeker"
.end annotation


# static fields
.field private static final METADATA_LENGTH_OFFSET:I = 0x1

.field private static final SEEK_POINT_SIZE:I = 0x12


# instance fields
.field private currentGranule:J

.field private firstFrameOffset:J

.field private offsets:[J

.field private volatile queriedGranule:J

.field private sampleNumbers:[J

.field private volatile seekedGranule:J

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;)V

    return-void
.end method


# virtual methods
.method public createSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    .locals 0

    return-object p0
.end method

.method public getDurationUs()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;)Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->durationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getPosition(J)J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->queriedGranule:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->sampleNumbers:[J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->queriedGranule:J

    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->sampleNumbers:[J

    aget-wide v2, v1, v0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekedGranule:J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->offsets:[J

    aget-wide v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseSeekTable(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    div-int/lit8 v1, v0, 0x12

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->sampleNumbers:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->offsets:[J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->sampleNumbers:[J

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->offsets:[J

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    neg-long v0, v0

    const-wide/16 v2, 0x2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setFirstFrameOffset(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    return-void
.end method

.method public declared-synchronized startSeek()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekedGranule:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->queriedGranule:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
