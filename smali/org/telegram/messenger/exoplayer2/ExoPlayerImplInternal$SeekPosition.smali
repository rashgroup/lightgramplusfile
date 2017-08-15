.class final Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekPosition"
.end annotation


# instance fields
.field public final timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field public final windowIndex:I

.field public final windowPositionUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/Timeline;IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    return-void
.end method
