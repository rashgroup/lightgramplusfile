.class public Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public static bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)V

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    invoke-interface {v2, v1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->newSession(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1, v3}, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public warmup(J)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->warmup(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
