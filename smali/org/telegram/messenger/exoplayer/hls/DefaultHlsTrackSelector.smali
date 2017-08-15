.class public final Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;
.super Ljava/lang/Object;
.source "DefaultHlsTrackSelector.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector;


# static fields
.field private static final TYPE_AUDIO:I = 0x1

.field private static final TYPE_DEFAULT:I = 0x0

.field private static final TYPE_SUBTITLE:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private final type:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->context:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    return-void
.end method

.method public static newAudioInstance()Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static newDefaultInstance(Landroid/content/Context;)Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static newSubtitleInstance()Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer/hls/Variant;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public selectTracks(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    if-eq v0, v7, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    if-ne v0, v7, :cond_1

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->audios:Ljava/util/List;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/Variant;

    invoke-interface {p2, p1, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/Variant;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    move-object v2, v0

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->context:Landroid/content/Context;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v2

    move v0, v1

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_3

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget v5, v2, v0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/Variant;

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    iget v6, v6, Lorg/telegram/messenger/exoplayer/chunk/Format;->height:I

    if-gtz v6, :cond_4

    const-string/jumbo v6, "avc"

    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    const-string/jumbo v6, "mp4a"

    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer/hls/DefaultHlsTrackSelector;->variantHasExplicitCodecWithPrefix(Lorg/telegram/messenger/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v2, v3

    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer/hls/Variant;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;->adaptiveTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;[Lorg/telegram/messenger/exoplayer/hls/Variant;)V

    :cond_8
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/Variant;

    invoke-interface {p2, p1, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/hls/HlsMasterPlaylist;Lorg/telegram/messenger/exoplayer/hls/Variant;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_a
    move-object v2, v4

    goto :goto_5

    :cond_b
    return-void
.end method
