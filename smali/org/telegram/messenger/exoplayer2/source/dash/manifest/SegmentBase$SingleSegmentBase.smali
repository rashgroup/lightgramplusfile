.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
.super Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentBase"
.end annotation


# instance fields
.field final indexLength:J

.field final indexStart:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    move-object v0, p0

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJ)V

    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    iput-wide p8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    return-void
.end method


# virtual methods
.method public getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    move-object v1, v0

    goto :goto_0
.end method
