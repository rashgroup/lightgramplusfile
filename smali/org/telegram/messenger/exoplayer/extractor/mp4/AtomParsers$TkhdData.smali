.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TkhdData"
.end annotation


# instance fields
.field private final duration:J

.field private final id:I

.field private final rotationDegrees:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->duration:J

    iput p4, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->duration:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->id:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/AtomParsers$TkhdData;->rotationDegrees:I

    return v0
.end method
