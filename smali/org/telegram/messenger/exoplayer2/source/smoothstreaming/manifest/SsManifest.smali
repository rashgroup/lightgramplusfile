.class public Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;
.super Ljava/lang/Object;
.source "SsManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;,
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;
    }
.end annotation


# static fields
.field public static final UNSET_LOOKAHEAD:I = -0x1


# instance fields
.field public final durationUs:J

.field public final dvrWindowLengthUs:J

.field public final isLive:Z

.field public final lookAheadCount:I

.field public final majorVersion:I

.field public final minorVersion:I

.field public final protectionElement:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

.field public final streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;


# direct methods
.method public constructor <init>(IIJJJIZLorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->majorVersion:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->minorVersion:I

    move/from16 v0, p9

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->lookAheadCount:I

    move/from16 v0, p10

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->protectionElement:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    return-void

    :cond_0
    const-wide/32 v4, 0xf4240

    move-wide/from16 v2, p7

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0xf4240

    move-wide v2, p5

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    goto :goto_1
.end method
