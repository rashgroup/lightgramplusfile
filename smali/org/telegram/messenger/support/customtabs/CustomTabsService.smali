.class public abstract Lorg/telegram/messenger/support/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# static fields
.field public static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field public static final KEY_URL:Ljava/lang/String; = "android.support.customtabs.otherurls.URL"


# instance fields
.field private mBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;

.field private final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected cleanUpSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v2

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;

    return-object v0
.end method

.method protected abstract updateVisuals(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z
.end method

.method protected abstract warmup(J)Z
.end method
