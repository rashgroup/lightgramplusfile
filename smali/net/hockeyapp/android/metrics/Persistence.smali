.class Lnet/hockeyapp/android/metrics/Persistence;
.super Ljava/lang/Object;
.source "Persistence.java"


# static fields
.field private static final BIT_TELEMETRY_DIRECTORY:Ljava/lang/String; = "/net.hockeyapp.android/telemetry/"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_FILE_COUNT:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "HA-MetricsPersistence"


# instance fields
.field protected mServedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTelemetryDirectory:Ljava/io/File;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mWeakSender:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/hockeyapp/android/metrics/Sender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/metrics/Persistence;->MAX_FILE_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/io/File;Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakContext:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    iput-object p2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->createDirectoriesIfNecessary()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/net.hockeyapp.android/telemetry/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/metrics/Persistence;-><init>(Landroid/content/Context;Ljava/io/File;Lnet/hockeyapp/android/metrics/Sender;)V

    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Persistence;->setSender(Lnet/hockeyapp/android/metrics/Sender;)V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createDirectoriesIfNecessary()V
    .locals 3

    const-string/jumbo v0, "Successfully created directory"

    const-string/jumbo v1, "Error creating directory"

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "HA-MetricsPersistence"

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "HA-MetricsPersistence"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deleteFile(Ljava/io/File;)V
    .locals 4

    if-eqz p1, :cond_1

    sget-object v1, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HA-MetricsPersistence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error deleting telemetry file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "HA-MetricsPersistence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Successfully deleted telemetry file at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string/jumbo v0, "HA-MetricsPersistence"

    const-string/jumbo v1, "Couldn\'t delete file, the reference to the file was null"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getSender()Lnet/hockeyapp/android/metrics/Sender;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/metrics/Sender;

    :cond_0
    return-object v0
.end method

.method protected hasFilesAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->nextAvailableFileInDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFreeSpaceAvailable()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/Persistence;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/net.hockeyapp.android/telemetry/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v2, v2

    sget-object v3, Lnet/hockeyapp/android/metrics/Persistence;->MAX_FILE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected load(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_4
    const-string/jumbo v1, "HA-MetricsPersistence"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error reading telemetry data from file with exception message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_0
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string/jumbo v1, "HA-MetricsPersistence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error closing stream."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string/jumbo v1, "HA-MetricsPersistence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error closing stream."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_2
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    const-string/jumbo v2, "HA-MetricsPersistence"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error closing stream."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method

.method protected makeAvailable(Ljava/io/File;)V
    .locals 2

    sget-object v1, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected nextAvailableFileInDirectory()Ljava/io/File;
    .locals 7

    sget-object v2, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v0, v3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_1

    aget-object v0, v3, v1

    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v1, "HA-MetricsPersistence"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (ADDING TO SERVED AND RETURN)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v4, "HA-MetricsPersistence"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " (WAS ALREADY SERVED)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "HA-MetricsPersistence"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The directory "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " did not contain any unserved files"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected persist([Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->isFreeSpaceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "HA-MetricsPersistence"

    const-string/jumbo v1, "Failed to persist file: Too many files on disk."

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->getSender()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/Persistence;->writeToDisk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->getSender()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    goto :goto_0
.end method

.method protected setSender(Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected writeToDisk(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v2, v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    const-string/jumbo v1, "HA-MetricsPersistence"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Saving data to: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v1

    :goto_2
    :try_start_7
    const-string/jumbo v3, "HA-MetricsPersistence"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to save data with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catchall_3
    move-exception v1

    goto :goto_1
.end method
