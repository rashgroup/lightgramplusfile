.class Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;
.super Ljava/util/TimerTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;
    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D

    move-result-wide v2

    sub-double v2, v0, v2

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I
    invoke-static {v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v5

    int-to-double v6, v5

    sub-double v2, v6, v2

    double-to-int v2, v2

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I
    invoke-static {v4, v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4002(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)I

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3902(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
