.class public Lnet/hockeyapp/android/utils/AsyncTaskUtils;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# static fields
.field private static sCustomExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Landroid/os/AsyncTask;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "**>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->sCustomExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->sCustomExecutor:Ljava/util/concurrent/Executor;

    :goto_1
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    goto :goto_1
.end method

.method public static getCustomExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->sCustomExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static setCustomExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p0, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->sCustomExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
