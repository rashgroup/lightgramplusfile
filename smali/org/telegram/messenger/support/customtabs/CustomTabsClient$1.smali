.class Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;
.super Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

.field final synthetic val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;->val$callback:Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
