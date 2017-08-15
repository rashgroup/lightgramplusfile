.class final Lcom/onesignal/ActivityLifecycleListenerCompat$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleListenerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ActivityLifecycleListenerCompat;->startMonitorThread(Ljava/lang/Class;Ljava/lang/Object;Landroid/app/Instrumentation$ActivityMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityThread:Ljava/lang/Object;

.field final synthetic val$activityThreadClass:Ljava/lang/Class;

.field final synthetic val$allActivitiesMonitor:Landroid/app/Instrumentation$ActivityMonitor;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/app/Instrumentation$ActivityMonitor;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$activityThreadClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$allActivitiesMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    iput-object p3, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$activityThread:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/onesignal/ActivityLifecycleListenerCompat$1$1;

    invoke-direct {v0, p0}, Lcom/onesignal/ActivityLifecycleListenerCompat$1$1;-><init>(Lcom/onesignal/ActivityLifecycleListenerCompat$1;)V

    iget-object v1, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$activityThreadClass:Ljava/lang/Class;

    const-string/jumbo v2, "registerOnActivityPausedListener"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/app/OnActivityPausedListener;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$allActivitiesMonitor:Landroid/app/Instrumentation$ActivityMonitor;

    invoke-virtual {v2}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/onesignal/ActivityLifecycleHandler;->onActivityResumed(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1;->val$activityThread:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
