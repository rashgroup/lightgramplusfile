.class public final Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;
.super Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;
.source "Tx3gDecoder.java"


# instance fields
.field private final parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "Tx3gDecoder"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method protected decode([BI)Lorg/telegram/messenger/exoplayer2/text/Subtitle;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;->EMPTY:Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/text/Cue;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>(Lorg/telegram/messenger/exoplayer2/text/Cue;)V

    goto :goto_0
.end method
