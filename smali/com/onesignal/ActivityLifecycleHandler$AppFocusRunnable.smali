.class Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppFocusRunnable"
.end annotation


# instance fields
.field private backgrounded:Z

.field private completed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->onAppLostFocus(Z)Z

    iput-boolean v1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    goto :goto_0
.end method
