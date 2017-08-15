.class Lcom/onesignal/ActivityLifecycleHandler;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;,
        Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;,
        Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;
    }
.end annotation


# static fields
.field static curActivity:Landroid/app/Activity;

.field static focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

.field private static mActivityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

.field static nextResumeIsFirstActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-direct {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;-><init>()V

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleFocus()V
    .locals 1

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->hasBackgrounded()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/ActivityLifecycleHandler;->nextResumeIsFirstActivity:Z

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->resetBackgroundState()V

    invoke-static {}, Lcom/onesignal/OneSignal;->onAppFocus()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->stopScheduledRunnable()V

    goto :goto_0
.end method

.method private static handleLostFocus()V
    .locals 3

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->focusHandlerThread:Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;

    new-instance v1, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$FocusHandlerThread;->runRunnable(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)V

    return-void
.end method

.method private static logCurActivity()V
    .locals 4

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "curActivity is NOW: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method static onActivityCreated(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    :cond_0
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    return-void
.end method

.method static onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    :cond_0
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    return-void
.end method

.method static onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/onesignal/ActivityLifecycleHandler;->setCurActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleFocus()V

    return-void
.end method

.method static onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V

    :cond_0
    invoke-static {}, Lcom/onesignal/ActivityLifecycleHandler;->logCurActivity()V

    return-void
.end method

.method public static removeActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/ActivityLifecycleHandler;->mActivityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    return-void
.end method

.method static setActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V
    .locals 1

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-interface {p0, v0}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    sput-object p0, Lcom/onesignal/ActivityLifecycleHandler;->mActivityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/onesignal/ActivityLifecycleHandler;->mActivityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    goto :goto_0
.end method

.method private static setCurActivity(Landroid/app/Activity;)V
    .locals 2

    sput-object p0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->mActivityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->mActivityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;->available(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
