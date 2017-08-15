.class public final Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSession"


# instance fields
.field private final mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    iput-object p3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
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

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->setToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.support.customtabs.customaction.ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, v2, v1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
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
