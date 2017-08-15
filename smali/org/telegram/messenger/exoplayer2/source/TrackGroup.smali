.class public final Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"


# instance fields
.field private final formats:[Lorg/telegram/messenger/exoplayer2/Format;

.field private hashCode:I

.field public final length:I


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->hashCode:I

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->hashCode:I

    return v0
.end method

.method public indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
