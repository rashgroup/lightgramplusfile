.class Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;
.super Landroid/os/HandlerThread;
.source "OneSignalStateSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalStateSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkHandlerThread"
.end annotation


# static fields
.field static final MAX_RETRIES:I = 0x3

.field private static final NETWORK_HANDLER_USERSTATE:I


# instance fields
.field currentRetry:I

.field mHandler:Landroid/os/Handler;

.field mType:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    const-string/jumbo v0, "OSH_NetworkHandlerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->mType:I

    invoke-virtual {p0}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getNewRunnable()Ljava/lang/Runnable;
    .locals 1

    iget v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->mType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread$1;-><init>(Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method doRetry()V
    .locals 4

    iget v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->getNewRunnable()Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    mul-int/lit16 v2, v2, 0x3a98

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method runNewJob()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->currentRetry:I

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->getNewRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method stopScheduledRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/onesignal/OneSignalStateSynchronizer$NetworkHandlerThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
