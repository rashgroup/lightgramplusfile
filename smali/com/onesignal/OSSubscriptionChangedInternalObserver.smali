.class Lcom/onesignal/OSSubscriptionChangedInternalObserver;
.super Ljava/lang/Object;
.source "OSSubscriptionChangedInternalObserver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fireChangesToPublicObserver(Lcom/onesignal/OSSubscriptionState;)V
    .locals 2

    new-instance v1, Lcom/onesignal/OSSubscriptionStateChanges;

    invoke-direct {v1}, Lcom/onesignal/OSSubscriptionStateChanges;-><init>()V

    sget-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    iput-object v0, v1, Lcom/onesignal/OSSubscriptionStateChanges;->from:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSSubscriptionState;

    iput-object v0, v1, Lcom/onesignal/OSSubscriptionStateChanges;->to:Lcom/onesignal/OSSubscriptionState;

    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/OSSubscriptionState;

    sput-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    sget-object v0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSSubscriptionState;->persistAsFrom()V

    :cond_0
    return-void
.end method


# virtual methods
.method public changed(Lcom/onesignal/OSSubscriptionState;)V
    .locals 0

    invoke-static {p1}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSSubscriptionState;)V

    return-void
.end method
