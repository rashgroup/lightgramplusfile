.class Lcom/onesignal/PushRegistratorGPS$2;
.super Ljava/lang/Object;
.source "PushRegistratorGPS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/PushRegistratorGPS;->registerInBackground(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/PushRegistratorGPS;

.field final synthetic val$googleProjectNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/PushRegistratorGPS;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    iput-object p2, p0, Lcom/onesignal/PushRegistratorGPS$2;->val$googleProjectNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    # getter for: Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I
    invoke-static {}, Lcom/onesignal/PushRegistratorGPS;->access$100()I

    move-result v2

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->appContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/onesignal/PushRegistratorGPS;->access$000(Lcom/onesignal/PushRegistratorGPS;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/onesignal/PushRegistratorGPS$2;->val$googleProjectNumber:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Device registered, Google Registration ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;
    invoke-static {v4}, Lcom/onesignal/PushRegistratorGPS;->access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v2, v5}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string/jumbo v3, "Error Getting Google Registration ID"

    invoke-static {v0, v3, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;
    invoke-static {v0}, Lcom/onesignal/PushRegistratorGPS;->access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;

    move-result-object v0

    const/16 v1, -0xb

    invoke-interface {v0, v7, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    # getter for: Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I
    invoke-static {}, Lcom/onesignal/PushRegistratorGPS;->access$100()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_2

    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "GCM_RETRY_COUNT of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/onesignal/PushRegistratorGPS;->GCM_RETRY_COUNT:I
    invoke-static {}, Lcom/onesignal/PushRegistratorGPS;->access$100()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " exceed! Could not get a Google Registration Id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Google Play services returned SERVICE_NOT_AVAILABLE error. Current retry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;
    invoke-static {v1}, Lcom/onesignal/PushRegistratorGPS;->access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;

    move-result-object v1

    const/16 v2, -0x9

    invoke-interface {v1, v7, v2}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    move v1, v3

    :cond_3
    add-int/lit8 v2, v0, 0x1

    mul-int/lit16 v2, v2, 0x2710

    int-to-long v4, v2

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string/jumbo v2, "Error Getting Google Registration ID"

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/onesignal/PushRegistratorGPS$2;->this$0:Lcom/onesignal/PushRegistratorGPS;

    # getter for: Lcom/onesignal/PushRegistratorGPS;->registeredHandler:Lcom/onesignal/PushRegistrator$RegisteredHandler;
    invoke-static {v0}, Lcom/onesignal/PushRegistratorGPS;->access$200(Lcom/onesignal/PushRegistratorGPS;)Lcom/onesignal/PushRegistrator$RegisteredHandler;

    move-result-object v0

    const/16 v1, -0xc

    invoke-interface {v0, v7, v1}, Lcom/onesignal/PushRegistrator$RegisteredHandler;->complete(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method
