.class public final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.super Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    }
.end annotation


# instance fields
.field public final durationUs:J

.field public final hasEndTag:Z

.field public final initializationSegment:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

.field public final mediaSequence:I

.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->version:I

    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v2, v4

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    goto :goto_0
.end method


# virtual methods
.method public copyWithSegments(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->version:I

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;-><init>(Ljava/lang/String;IIZLorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/List;)V

    return-object v0
.end method

.method public copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 9

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getStartTimeUs()J

    move-result-wide v0

    sub-long v2, p1, v0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    add-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWithSegments(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    return-object v0
.end method

.method public getEndTimeUs()J
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getStartTimeUs()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartTimeUs()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    goto :goto_0
.end method
