.class final Lcom/onesignal/OneSignal$2;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator$RegisteredHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->registerForPushToken()V
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
.method public complete(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, -0x6

    const/4 v1, 0x1

    if-ge p2, v1, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    # getter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$600()I

    move-result v0

    if-eq v0, v1, :cond_0

    # getter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$600()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    # setter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$602(I)I

    :cond_1
    :goto_0
    # setter for: Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$702(Ljava/lang/String;)Ljava/lang/String;

    # setter for: Lcom/onesignal/OneSignal;->registerForPushFired:Z
    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$802(Z)Z

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    # invokes: Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$900(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onesignal/OSSubscriptionState;->setPushToken(Ljava/lang/String;)V

    # invokes: Lcom/onesignal/OneSignal;->registerUser()V
    invoke-static {}, Lcom/onesignal/OneSignal;->access$500()V

    return-void

    :cond_2
    # getter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {}, Lcom/onesignal/OneSignal;->access$600()I

    move-result v0

    if-ge v0, v2, :cond_1

    # setter for: Lcom/onesignal/OneSignal;->subscribableStatus:I
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$602(I)I

    goto :goto_0
.end method
