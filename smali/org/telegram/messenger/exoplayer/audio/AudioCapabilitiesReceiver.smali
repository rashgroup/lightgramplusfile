.class public final Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
    }
.end annotation


# instance fields
.field audioCapabilities:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

.field private final context:Landroid/content/Context;

.field private final listener:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$1;)V

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;)Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    return-object v0
.end method


# virtual methods
.method public register()Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Intent;)Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
