.class public interface abstract Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
.super Ljava/lang/Object;
.source "MediaPeriod.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/SequenceableLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;
    }
.end annotation


# virtual methods
.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getTrackGroups()Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
.end method

.method public abstract maybeThrowPrepareError()V
.end method

.method public abstract prepare(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod$Callback;)V
.end method

.method public abstract readDiscontinuity()J
.end method

.method public abstract seekToUs(J)J
.end method

.method public abstract selectTracks([Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;[Z[Lorg/telegram/messenger/exoplayer2/source/SampleStream;[ZJ)J
.end method
