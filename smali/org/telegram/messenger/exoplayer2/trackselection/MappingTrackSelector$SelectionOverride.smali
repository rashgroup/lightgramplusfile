.class public final Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# instance fields
.field public final factory:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;

.field public final groupIndex:I

.field public final length:I

.field public final tracks:[I


# direct methods
.method public varargs constructor <init>(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;I[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->factory:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    array-length v0, p3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->length:I

    return-void
.end method


# virtual methods
.method public containsTrack(I)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->factory:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    return-object v0
.end method
