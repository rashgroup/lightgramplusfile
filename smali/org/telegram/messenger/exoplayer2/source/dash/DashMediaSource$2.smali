.class Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$2;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;IJLandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$2;->this$0:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$2;->this$0:Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->processManifest(Z)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;->access$200(Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;Z)V

    return-void
.end method
