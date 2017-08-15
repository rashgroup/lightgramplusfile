.class public final Lorg/telegram/messenger/exoplayer2/Timeline$Period;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# instance fields
.field private durationUs:J

.field public id:Ljava/lang/Object;

.field private positionInWindowUs:J

.field public uid:Ljava/lang/Object;

.field public windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->durationUs:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->durationUs:J

    return-wide v0
.end method

.method public getPositionInWindowMs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->positionInWindowUs:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInWindowUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->positionInWindowUs:J

    return-wide v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->durationUs:J

    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->positionInWindowUs:J

    return-object p0
.end method
