.class public final Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;
.super Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;
.source "SubtitleInputBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public subsampleOffsetUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->compareTo(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer2/text/SubtitleInputBuffer;->timeUs:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
