.class public Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
.super Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentBase"
.end annotation


# instance fields
.field final indexLength:J

.field final indexStart:J

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v6, p1

    move-wide v7, v4

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase;-><init>(Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;JJ)V

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->uri:Ljava/lang/String;

    iput-wide p7, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexStart:J

    iput-wide p9, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    return-void
.end method


# virtual methods
.method public getIndex()Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;
    .locals 8

    const/4 v3, 0x0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->uri:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexStart:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object v3, v1

    goto :goto_0
.end method
