.class Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm$1;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm;->setOnEventListener(Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm;

.field final synthetic val$listener:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$OnEventListener;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm;Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm$1;->this$0:Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm$1;->val$listener:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$OnEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm$1;->val$listener:Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$OnEventListener;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm$1;->this$0:Lorg/telegram/messenger/exoplayer/drm/FrameworkMediaDrm;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm$OnEventListener;->onEvent(Lorg/telegram/messenger/exoplayer/drm/ExoMediaDrm;[BII[B)V

    return-void
.end method
