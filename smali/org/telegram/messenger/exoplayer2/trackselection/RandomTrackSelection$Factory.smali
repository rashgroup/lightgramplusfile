.class public final Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection$Factory;
.super Ljava/lang/Object;
.source "RandomTrackSelection.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public varargs createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;-><init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V

    return-object v0
.end method

.method public bridge synthetic createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection$Factory;->createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/RandomTrackSelection;

    move-result-object v0

    return-object v0
.end method
