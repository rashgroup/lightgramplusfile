.class public abstract Lorg/telegram/ui/tools/d/Receiver/a;
.super Ljava/lang/Object;
.source "WakeLocker.java"


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static a()V
    .locals 1

    sget-object v0, Lorg/telegram/ui/tools/d/Receiver/a;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/tools/d/Receiver/a;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/tools/d/Receiver/a;->a:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/tools/d/Receiver/a;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/tools/d/Receiver/a;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "MyWakelockTag"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/tools/d/Receiver/a;->a:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lorg/telegram/ui/tools/d/Receiver/a;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method
