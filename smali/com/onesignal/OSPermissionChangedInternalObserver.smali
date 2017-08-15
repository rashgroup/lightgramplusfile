.class Lcom/onesignal/OSPermissionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSPermissionChangedInternalObserver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V
    .locals 2

    new-instance v1, Lcom/onesignal/OSPermissionStateChanges;

    invoke-direct {v1}, Lcom/onesignal/OSPermissionStateChanges;-><init>()V

    sget-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    iput-object v0, v1, Lcom/onesignal/OSPermissionStateChanges;->from:Lcom/onesignal/OSPermissionState;

    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSPermissionState;

    iput-object v0, v1, Lcom/onesignal/OSPermissionStateChanges;->to:Lcom/onesignal/OSPermissionState;

    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSPermissionState;

    sput-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    sget-object v0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionState;->persistAsFrom()V

    :cond_0
    return-void
.end method

.method static handleInternalChanges(Lcom/onesignal/OSPermissionState;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result v0

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->setPermission(Z)V

    return-void
.end method


# virtual methods
.method changed(Lcom/onesignal/OSPermissionState;)V
    .locals 0

    invoke-static {p1}, Lcom/onesignal/OSPermissionChangedInternalObserver;->handleInternalChanges(Lcom/onesignal/OSPermissionState;)V

    invoke-static {p1}, Lcom/onesignal/OSPermissionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V

    return-void
.end method
