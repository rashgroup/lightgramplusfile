.class public final Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
.super Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;
    }
.end annotation


# static fields
.field public static final ENCRYPTION_METHOD_AES_128:Ljava/lang/String; = "AES-128"

.field public static final ENCRYPTION_METHOD_NONE:Ljava/lang/String; = "NONE"


# instance fields
.field public final durationUs:J

.field public final live:Z

.field public final mediaSequence:I

.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public final targetDurationSecs:I

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->mediaSequence:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->targetDurationSecs:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->version:I

    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->live:Z

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->startTimeUs:J

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist$Segment;->durationSecs:D

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;->durationUs:J

    goto :goto_0
.end method
