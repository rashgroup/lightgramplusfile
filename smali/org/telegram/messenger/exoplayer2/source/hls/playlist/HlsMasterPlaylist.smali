.class public final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
.super Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    }
.end annotation


# instance fields
.field public final audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field public final muxedCaptionFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            "Lorg/telegram/messenger/exoplayer2/Format;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;I)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedAudioFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->muxedCaptionFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-void
.end method

.method public static createSingleVariantMasterPlaylist(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->createMediaPlaylistHlsUrl(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-object v4, v3

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/telegram/messenger/exoplayer2/Format;Lorg/telegram/messenger/exoplayer2/Format;)V

    return-object v0
.end method
