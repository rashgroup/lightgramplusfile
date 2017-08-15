.class public final Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;)Lorg/telegram/messenger/exoplayer2/ExoPlayer;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newInstance([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/ExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/ExoPlayer;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImpl;-><init>([Lorg/telegram/messenger/exoplayer2/Renderer;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)V

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;",
            "Lorg/telegram/messenger/exoplayer2/LoadControl;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;I)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;I)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;",
            "Lorg/telegram/messenger/exoplayer2/LoadControl;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I)",
            "Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    const-wide/16 v6, 0x1388

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJ)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJ)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;",
            "Lorg/telegram/messenger/exoplayer2/LoadControl;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)",
            "Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;IJ)V

    return-object v0
.end method
