.class Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource$1;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->scheduleManifestRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;

    # invokes: Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;->access$000(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    return-void
.end method
