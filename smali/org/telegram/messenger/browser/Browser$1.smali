.class final Lorg/telegram/messenger/browser/Browser$1;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/browser/Browser;->bindCustomTabsService(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V
    .locals 4

    # setter for: Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    invoke-static {p1}, Lorg/telegram/messenger/browser/Browser;->access$102(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    invoke-static {}, Lorg/telegram/messenger/browser/Browser;->access$100()Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    # getter for: Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    invoke-static {}, Lorg/telegram/messenger/browser/Browser;->access$100()Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->warmup(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->access$102(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    return-void
.end method
