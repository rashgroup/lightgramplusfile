.class public abstract Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;
.super Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;,
        Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private static findRenderer([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I
    .locals 7

    const/4 v1, 0x0

    array-length v0, p0

    move v2, v1

    move v3, v0

    move v0, v1

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    aget-object v6, p0, v0

    move v4, v1

    :goto_1
    iget v5, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v5, :cond_1

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v5

    if-le v5, v2, :cond_3

    const/4 v2, 0x3

    if-ne v5, v2, :cond_0

    :goto_2
    return v0

    :cond_0
    move v3, v5

    move v5, v0

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    move v3, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v5, v3

    move v3, v2

    goto :goto_3
.end method

.method private static getFormatSupport(Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)[I
    .locals 3

    iget v0, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    iget v2, p1, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->supportsFormat(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getMixedMimeTypeAdaptationSupport([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;)[I
    .locals 3

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final clearSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final clearSelectionOverrides(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final getCurrentMappedTrackInfo()Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public final getSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method public final selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/telegram/messenger/exoplayer2/RendererCapabilities;",
            "Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v8, v0, [I

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v9, v0, [[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [[[I

    move v0, v6

    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_0

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    aput-object v1, v9, v0

    iget v1, p2, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    new-array v1, v1, [[I

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupport([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;)[I

    move-result-object v3

    move v0, v6

    :goto_1
    iget v1, p2, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I

    move-result v5

    array-length v1, p1

    if-ne v5, v1, :cond_1

    iget v1, v2, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    new-array v1, v1, [I

    :goto_2
    aget v10, v8, v5

    aget-object v11, v9, v5

    aput-object v2, v11, v10

    aget-object v2, v4, v5

    aput-object v1, v2, v10

    aget v1, v8, v5

    add-int/lit8 v1, v1, 0x1

    aput v1, v8, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-object v1, p1, v5

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lorg/telegram/messenger/exoplayer2/RendererCapabilities;Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)[I

    move-result-object v1

    goto :goto_2

    :cond_2
    array-length v0, p1

    new-array v2, v0, [Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    array-length v0, p1

    new-array v1, v0, [I

    move v5, v6

    :goto_3
    array-length v0, p1

    if-ge v5, v0, :cond_3

    aget v10, v8, v5

    new-instance v11, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    aget-object v0, v9, v5

    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v11, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    aput-object v11, v2, v5

    aget-object v0, v4, v5

    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v4, v5

    aget-object v0, p1, v5

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v0

    aput v0, v1, v5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_3
    array-length v0, p1

    aget v0, v8, v0

    new-instance v5, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    array-length v8, p1

    aget-object v8, v9, v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v5, v0}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    invoke-virtual {p0, p1, v2, v4}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[[[I)[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v8

    :goto_4
    array-length v0, p1

    if-ge v6, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    aput-object v7, v8, v6

    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    aget-object v9, v2, v6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_6

    move-object v0, v7

    :goto_6
    if-eqz v0, :cond_4

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v8, v6

    goto :goto_5

    :cond_6
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    goto :goto_6

    :cond_7
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[I[[[ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    invoke-direct {v1, v8}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;)V

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected abstract selectTracks([Lorg/telegram/messenger/exoplayer2/RendererCapabilities;[Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;[[[I)[Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method

.method public final setSelectionOverride(ILorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/telegram/messenger/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    goto :goto_0
.end method
