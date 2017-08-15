.class public final Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;
.super Ljava/lang/Object;
.source "DefaultDashTrackSelector.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector;


# instance fields
.field private final adaptationSetType:I

.field private final context:Landroid/content/Context;

.field private final filterProtectedHdContent:Z

.field private final filterVideoRepresentations:Z


# direct methods
.method private constructor <init>(ILandroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->context:Landroid/content/Context;

    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->filterVideoRepresentations:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->filterProtectedHdContent:Z

    return-void
.end method

.method public static newAudioInstance()Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newTextInstance()Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newVideoInstance(Landroid/content/Context;ZZ)Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method


# virtual methods
.method public selectTracks(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;ILorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lorg/telegram/messenger/exoplayer/dash/mpd/Period;

    move-result-object v5

    move v1, v2

    :goto_0
    iget-object v0, v5, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, v5, Lorg/telegram/messenger/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;

    iget v4, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->type:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    if-ne v4, v6, :cond_4

    iget v4, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->filterVideoRepresentations:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->context:Landroid/content/Context;

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lorg/telegram/messenger/exoplayer/dash/DefaultDashTrackSelector;->filterProtectedHdContent:Z

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->hasContentProtection()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-static {v4, v6, v7, v0}, Lorg/telegram/messenger/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v0

    :goto_2
    array-length v6, v0

    if-le v6, v3, :cond_0

    invoke-interface {p3, p1, p2, v1, v0}, Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;->adaptiveTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;II[I)V

    :cond_0
    move v4, v2

    :goto_3
    if-ge v4, v6, :cond_4

    aget v7, v0, v4

    invoke-interface {p3, p1, p2, v1, v7}, Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Util;->firstIntegersArray(I)[I

    move-result-object v0

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_4
    iget-object v6, v0, Lorg/telegram/messenger/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-interface {p3, p1, p2, v1, v4}, Lorg/telegram/messenger/exoplayer/dash/DashTrackSelector$Output;->fixedTrack(Lorg/telegram/messenger/exoplayer/dash/mpd/MediaPresentationDescription;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    return-void
.end method
