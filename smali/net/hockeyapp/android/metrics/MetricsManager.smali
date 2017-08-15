.class public Lnet/hockeyapp/android/metrics/MetricsManager;
.super Ljava/lang/Object;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;
    }
.end annotation


# static fields
.field protected static final ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static final LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final LOCK:Ljava/lang/Object;

.field private static final SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "HA-MetricsManager"

.field private static volatile instance:Lnet/hockeyapp/android/metrics/MetricsManager;

.field private static sChannel:Lnet/hockeyapp/android/metrics/Channel;

.field private static sSender:Lnet/hockeyapp/android/metrics/Sender;

.field private static sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

.field private static sUserMetricsEnabled:Z

.field private static sWeakApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mSessionTrackingDisabled:Z

.field private mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x4e20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p2, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    if-nez p3, :cond_0

    new-instance p3, Lnet/hockeyapp/android/metrics/Sender;

    invoke-direct {p3}, Lnet/hockeyapp/android/metrics/Sender;-><init>()V

    :cond_0
    sput-object p3, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    if-nez p4, :cond_2

    new-instance p4, Lnet/hockeyapp/android/metrics/Persistence;

    invoke-direct {p4, p1, p3}, Lnet/hockeyapp/android/metrics/Persistence;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/Sender;)V

    :goto_0
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {v0, p4}, Lnet/hockeyapp/android/metrics/Sender;->setPersistence(Lnet/hockeyapp/android/metrics/Persistence;)V

    if-nez p5, :cond_3

    new-instance v0, Lnet/hockeyapp/android/metrics/Channel;

    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-direct {v0, v1, p4}, Lnet/hockeyapp/android/metrics/Channel;-><init>(Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Persistence;)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    :goto_1
    invoke-virtual {p4}, Lnet/hockeyapp/android/metrics/Persistence;->hasFilesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lnet/hockeyapp/android/metrics/Persistence;->getSender()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p4, p3}, Lnet/hockeyapp/android/metrics/Persistence;->setSender(Lnet/hockeyapp/android/metrics/Sender;)V

    goto :goto_0

    :cond_3
    sput-object p5, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    goto :goto_1
.end method

.method static synthetic access$000()Lnet/hockeyapp/android/metrics/Channel;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-object v0
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/metrics/MetricsManager;)V
    .locals 0

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->updateSession()V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected static createData(Lnet/hockeyapp/android/metrics/model/TelemetryData;)Lnet/hockeyapp/android/metrics/model/Data;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/metrics/model/TelemetryData;",
            ")",
            "Lnet/hockeyapp/android/metrics/model/Data",
            "<",
            "Lnet/hockeyapp/android/metrics/model/Domain;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/hockeyapp/android/metrics/model/Data;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Data;-><init>()V

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseData(Lnet/hockeyapp/android/metrics/model/Domain;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getEnvelopeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/hockeyapp/android/metrics/model/Data;->QualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public static disableUserMetrics()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->setUserMetricsEnabled(Z)V

    return-void
.end method

.method public static enableUserMetrics()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->setUserMetricsEnabled(Z)V

    return-void
.end method

.method private static getApplication()Landroid/app/Application;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    :cond_0
    return-object v0
.end method

.method protected static getChannel()Lnet/hockeyapp/android/metrics/Channel;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-object v0
.end method

.method protected static getInstance()Lnet/hockeyapp/android/metrics/MetricsManager;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    return-object v0
.end method

.method protected static getSender()Lnet/hockeyapp/android/metrics/Sender;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    return-object v0
.end method

.method private static getTime()J
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isUserMetricsEnabled()Z
    .locals 1

    sget-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    return v0
.end method

.method public static register(Landroid/app/Application;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static register(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V

    return-void
.end method

.method protected static register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    .locals 8

    const/4 v6, 0x0

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v0, :cond_1

    sget-object v7, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/metrics/MetricsManager;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    move-object v1, v0

    :goto_0
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    sput-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    iget-boolean v0, v1, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->setSessionTrackingDisabled(Ljava/lang/Boolean;)V

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$1;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager$1;-><init>()V

    invoke-static {v0}, Lnet/hockeyapp/android/PrivateEventManager;->addEventListener(Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;)V

    :cond_1
    return-void

    :cond_2
    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V

    return-void
.end method

.method private registerTelemetryLifecycleCallbacks()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    if-nez v0, :cond_0

    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/MetricsManager$1;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    :cond_0
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static sessionTrackingEnabled()Z
    .locals 1

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    iget-boolean v0, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCustomServerURL(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/Sender;->setCustomServerURL(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "HA-MetricsManager"

    const-string/jumbo v1, "HockeyApp couldn\'t set the custom server url. Please register(...) the MetricsManager before setting the server URL."

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static setSender(Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 0

    sput-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    return-void
.end method

.method public static setSessionTrackingDisabled(Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "HA-MetricsManager"

    const-string/jumbo v1, "MetricsManager hasn\'t been registered or User Metrics has been disabled. No User Metrics will be collected!"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->registerTelemetryLifecycleCallbacks()V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->unregisterTelemetryLifecycleCallbacks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static setUserMetricsEnabled(Z)V
    .locals 1

    sput-boolean p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    sget-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->registerTelemetryLifecycleCallbacks()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->unregisterTelemetryLifecycleCallbacks()V

    goto :goto_0
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "HA-MetricsManager"

    const-string/jumbo v1, "MetricsManager hasn\'t been registered or User Metrics has been disabled. No User Metrics will be collected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "User Metrics is disabled. Will not track event."

    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$3;

    invoke-direct {v0, p0, p1, p2}, Lnet/hockeyapp/android/metrics/MetricsManager$3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not track custom event. Executor rejected async task."

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private trackSessionState(Lnet/hockeyapp/android/metrics/model/SessionState;)V
    .locals 2

    :try_start_0
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$2;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/metrics/MetricsManager$2;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/model/SessionState;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Could not track session state. Executor rejected async task."

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unregisterTelemetryLifecycleCallbacks()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    goto :goto_0
.end method

.method private updateSession()V
    .locals 8

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "HA-MetricsManager"

    const-string/jumbo v1, "Starting & tracking session"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HA-MetricsManager"

    const-string/jumbo v1, "Session management disabled by the developer"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v2

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    sub-long v0, v2, v4

    sget-object v6, Lnet/hockeyapp/android/metrics/MetricsManager;->SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "HA-MetricsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Checking if we have to renew a session, time difference is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HA-MetricsManager"

    const-string/jumbo v1, "Renewing session"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected renewSession()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->renewSessionContext(Ljava/lang/String;)V

    sget-object v0, Lnet/hockeyapp/android/metrics/model/SessionState;->START:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackSessionState(Lnet/hockeyapp/android/metrics/model/SessionState;)V

    return-void
.end method

.method protected setChannel(Lnet/hockeyapp/android/metrics/Channel;)V
    .locals 0

    sput-object p1, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-void
.end method
