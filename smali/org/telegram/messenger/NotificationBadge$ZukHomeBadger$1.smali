.class Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger$1;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;->executeBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;

.field final synthetic val$extra:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger$1;->this$0:Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger$1;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger$1;->this$0:Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;

    # getter for: Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {v1}, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;->access$200(Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "setAppBadgeCount"

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger$1;->val$extra:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
