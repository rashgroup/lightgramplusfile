.class final Lorg/telegram/messenger/exoplayer/text/TtmlRegion;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# instance fields
.field public final line:F

.field public final position:F

.field public final width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0}, Lorg/telegram/messenger/exoplayer/text/TtmlRegion;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlRegion;->position:F

    iput p2, p0, Lorg/telegram/messenger/exoplayer/text/TtmlRegion;->line:F

    iput p3, p0, Lorg/telegram/messenger/exoplayer/text/TtmlRegion;->width:F

    return-void
.end method
