.class Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;
.super Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public newSession(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    :try_start_0
    new-instance v2, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)V

    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    # getter for: Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;
    invoke-static {v3}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    # getter for: Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;
    invoke-static {v4}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->updateVisuals(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public warmup(J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->warmup(J)Z

    move-result v0

    return v0
.end method
