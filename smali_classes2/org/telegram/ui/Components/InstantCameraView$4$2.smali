.class Lorg/telegram/ui/Components/InstantCameraView$4$2;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView$4;->onCameraInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$4;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$4$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$4$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # setter for: Lorg/telegram/ui/Components/InstantCameraView;->recording:Z
    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$002(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$4$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lorg/telegram/ui/Components/InstantCameraView;->recordStartTime:J
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$102(Lorg/telegram/ui/Components/InstantCameraView;J)J

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$4$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->timerRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$4$2;->this$1:Lorg/telegram/ui/Components/InstantCameraView$4;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$4;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/InstantCameraView;->startAnimation(Z)V

    return-void
.end method
