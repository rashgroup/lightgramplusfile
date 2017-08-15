.class public Lorg/telegram/ui/tools/a/b;
.super Ljava/lang/Object;
.source "GhostPorotocol.java"


# direct methods
.method public static a()V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->g()Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/tools/a/b;->a(Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/g;->a(Ljava/lang/Boolean;)V

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/telegram/ui/tools/c/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/tools/a/c;->a()V

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->reRunUpdateTimerProc()V

    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/ui/tools/a/c;->b()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/ui/tools/a/c;->b()V

    goto :goto_0
.end method
