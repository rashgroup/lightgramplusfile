.class Lcom/onesignal/PushRegistratorGPS$1$2;
.super Ljava/lang/Object;
.source "PushRegistratorGPS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PushRegistratorGPS$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onesignal/PushRegistratorGPS$1;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/onesignal/PushRegistratorGPS$1;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/PushRegistratorGPS$1$2;->this$1:Lcom/onesignal/PushRegistratorGPS$1;

    iput-object p2, p0, Lcom/onesignal/PushRegistratorGPS$1$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS$1$2;->this$1:Lcom/onesignal/PushRegistratorGPS$1;

    iget-object v0, v0, Lcom/onesignal/PushRegistratorGPS$1;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/onesignal/PushRegistratorGPS;->access$000(Lcom/onesignal/PushRegistratorGPS;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/onesignal/PushRegistratorGPS$1$2;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
