.class public final Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceInfo"
.end annotation


# instance fields
.field public final manifest:Ljava/lang/Object;

.field public final playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field public final seekAcks:I

.field public final timeline:Lorg/telegram/messenger/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->timeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->manifest:Ljava/lang/Object;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->playbackInfo:Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$SourceInfo;->seekAcks:I

    return-void
.end method
