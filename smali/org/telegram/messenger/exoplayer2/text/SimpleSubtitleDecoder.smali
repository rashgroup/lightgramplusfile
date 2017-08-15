.class public abstract Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.super Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder",
        "<",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoder;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;-><init>([Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;[Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->setInitialInputBufferSize(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->createInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createInputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createOutputBuffer()Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->createOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected final createOutputBuffer()Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleOutputBuffer;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleOutputBuffer;-><init>(Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;)V

    return-object v0
.end method

.method protected bridge synthetic decode(Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;Z)Ljava/lang/Exception;
    .locals 1

    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    check-cast p2, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;Z)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;

    move-result-object v0

    return-object v0
.end method

.method protected abstract decode([BI)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
.end method

.method protected final decode(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;Z)Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException;
    .locals 6

    :try_start_0
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/text/Subtitle;

    move-result-object v3

    iget-wide v1, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;->setContent(JLorg/telegram/messenger/exoplayer2/text/Subtitle;J)V
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V
    .locals 0

    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;->releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method

.method protected final releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/text/SubtitleOutputBuffer;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/decoder/SimpleDecoder;->releaseOutputBuffer(Lorg/telegram/messenger/exoplayer2/decoder/OutputBuffer;)V

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method
