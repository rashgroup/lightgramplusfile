.class public interface abstract Lorg/telegram/messenger/exoplayer/drm/MediaDrmCallback;
.super Ljava/lang/Object;
.source "MediaDrmCallback.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# virtual methods
.method public abstract executeKeyRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B
.end method

.method public abstract executeProvisionRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B
.end method
