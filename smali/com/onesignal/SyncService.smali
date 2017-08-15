.class public Lcom/onesignal/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field static final TASK_APP_STARTUP:I = 0x0

.field static final TASK_SYNC:I = 0x1

.field private static startedFromActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/onesignal/SyncService;->checkOnFocusSync()V

    return-void
.end method

.method private static checkOnFocusSync()V
    .locals 4

    invoke-static {}, Lcom/onesignal/OneSignal;->GetUnsentActiveTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->sendOnFocus(JZ)V

    goto :goto_0
.end method

.method private doBackgroundSync()V
    .locals 3

    invoke-virtual {p0}, Lcom/onesignal/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/SyncService$2;

    invoke-direct {v1, p0}, Lcom/onesignal/SyncService$2;-><init>(Lcom/onesignal/SyncService;)V

    const-string/jumbo v2, "OS_SYNCSRV_BG_SYNC"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private doForegroundSync()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/onesignal/SyncService$1;

    invoke-direct {v1, p0}, Lcom/onesignal/SyncService$1;-><init>(Lcom/onesignal/SyncService;)V

    invoke-static {p0, v0, v1}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    return-void
.end method

.method private doSync()V
    .locals 1

    sget-boolean v0, Lcom/onesignal/SyncService;->startedFromActivity:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/onesignal/SyncService;->doForegroundSync()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/onesignal/SyncService;->doBackgroundSync()V

    goto :goto_0
.end method

.method static onTaskRemoved(Landroid/app/Service;)V
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string/jumbo v2, "Starting SyncService:onTaskRemoved."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v1}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->stopScheduledRunnable()V

    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->stopAndPersist()Z

    move-result v1

    invoke-static {v0}, Lcom/onesignal/OneSignal;->onAppLostFocus(Z)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string/jumbo v2, "Completed SyncService:onTaskRemoved."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/onesignal/SyncService;->scheduleServiceSyncTask(Landroid/content/Context;J)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->scheduleUpdate(Landroid/content/Context;)V

    goto :goto_1
.end method

.method static scheduleServiceSyncTask(Landroid/content/Context;J)V
    .locals 5

    const/4 v3, 0x0

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleServiceSyncTask:atTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onesignal/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "task"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string/jumbo v1, "task"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    sput-boolean v0, Lcom/onesignal/SyncService;->startedFromActivity:Z

    :cond_0
    :goto_1
    sget-boolean v1, Lcom/onesignal/SyncService;->startedFromActivity:Z

    if-eqz v1, :cond_3

    :goto_2
    return v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/onesignal/SyncService;->doSync()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/onesignal/SyncService;->onTaskRemoved(Landroid/app/Service;)V

    return-void
.end method
