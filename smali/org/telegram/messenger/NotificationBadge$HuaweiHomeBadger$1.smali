.class Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger$1;
.super Ljava/lang/Object;
.source "NotificationBadge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger;->executeBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger;

.field final synthetic val$localBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger$1;->this$0:Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger;

    iput-object p2, p0, Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger$1;->val$localBundle:Landroid/os/Bundle;

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

    const-string/jumbo v1, "content://com.huawei.android.launcher.settings/badge/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "change_badge"

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger$1;->val$localBundle:Landroid/os/Bundle;

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
