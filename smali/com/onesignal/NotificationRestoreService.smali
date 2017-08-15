.class public Lcom/onesignal/NotificationRestoreService;
.super Landroid/app/IntentService;
.source "NotificationRestoreService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "NotificationRestoreService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onesignal/NotificationRestoreService;->setIntentRedelivery(Z)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/onesignal/NotificationRestorer;->restore(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void
.end method
