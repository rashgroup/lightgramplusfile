.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CsdBuffer"
.end annotation


# instance fields
.field public data:[B

.field private isFilling:Z

.field public length:I

.field public sequenceExtensionPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    return-void
.end method


# virtual methods
.method public onData([BII)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v0, p3, p2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    array-length v1, v1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    goto :goto_0
.end method

.method public onStartCode(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    if-nez v2, :cond_1

    const/16 v2, 0xb5

    if-ne p1, v2, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    sub-int/2addr v2, p2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    goto :goto_1

    :cond_2
    const/16 v2, 0xb3

    if-ne p1, v2, :cond_0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    return-void
.end method
