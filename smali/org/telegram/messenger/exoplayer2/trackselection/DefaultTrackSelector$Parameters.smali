.class public final Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public final allowMixedMimeAdaptiveness:Z

.field public final allowNonSeamlessAdaptiveness:Z

.field public final exceedVideoConstraintsIfNecessary:Z

.field public final maxVideoHeight:I

.field public final maxVideoWidth:I

.field public final orientationMayChange:Z

.field public final preferredAudioLanguage:Ljava/lang/String;

.field public final preferredTextLanguage:Ljava/lang/String;

.field public final viewportHeight:I

.field public final viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move v6, v5

    move v7, v4

    move v8, v5

    move v9, v5

    move v10, v4

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iput p5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iput p6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iput-boolean p7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iput p8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iput p9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iput-boolean p10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    return-void
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
    check-cast p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget-boolean v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    iget-boolean v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public withAllowMixedMimeAdaptiveness(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v3, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withAllowNonSeamlessAdaptiveness(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v4, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withExceedVideoConstraintsIfNecessary(Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v7, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMaxVideoSize(II)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMaxVideoSizeSd()Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    const/16 v0, 0x4ff

    const/16 v1, 0x2cf

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withMaxVideoSize(II)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public withPreferredAudioLanguage(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withPreferredTextLanguage(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v10, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withViewportSize(IIZ)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 11

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    if-ne p3, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, p0, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    move v8, p1

    move v9, p2

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZIIZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withViewportSizeFromContext(Landroid/content/Context;Z)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Util;->getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withViewportSize(IIZ)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public withoutVideoSizeConstraints()Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withMaxVideoSize(II)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public withoutViewportSizeConstraints()Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    const v1, 0x7fffffff

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->withViewportSize(IIZ)Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method
