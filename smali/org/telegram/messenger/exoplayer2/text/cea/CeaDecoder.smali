.class abstract Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;


# static fields
.field private static final NUM_INPUT_BUFFERS:I = 0xa

.field private static final NUM_OUTPUT_BUFFERS:I = 0x2


# instance fields
.field private final availableInputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final availableOutputBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

.field private playbackPositionUs:J

.field private final queuedInputBuffers:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/text/cea/CeaOutputBuffer;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaOutputBuffer;-><init>(Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/TreeSet;

    return-void
.end method

.method private releaseInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected abstract createSubtitle()Lorg/telegram/messenger/exoplayer2/text/Subtitle;
.end method

.method protected abstract decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    goto :goto_1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->playbackPositionUs:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->addFlag(I)V

    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->isNewSubtitleDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->createSubtitle()Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    move-result-object v3

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    iget-wide v1, v6, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLorg/telegram/messenger/exoplayer2/text/Subtitle;J)V

    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->playbackPositionUs:J

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->releaseInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    :cond_1
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected abstract isNewSubtitleDataAvailable()Z
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queueInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public queueInputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    if-ne p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->dequeuedInputBuffer:Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method protected releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPositionUs(J)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/text/cea/CeaDecoder;->playbackPositionUs:J

    return-void
.end method
