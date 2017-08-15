.class public final Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->length:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAll()[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-virtual {v0}, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->trackSelections:[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;->hashCode:I

    return v0
.end method
