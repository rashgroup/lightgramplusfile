.class Lnet/hockeyapp/android/metrics/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"

.field protected static mMaxBatchCount:I

.field protected static mMaxBatchInterval:I


# instance fields
.field private final mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

.field protected final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

.field protected final mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/Channel;->LOCK:Ljava/lang/Object;

    const/16 v0, 0x32

    sput v0, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchCount:I

    const/16 v0, 0x3a98

    sput v0, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchInterval:I

    return-void
.end method

.method public constructor <init>(Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Persistence;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    iput-object p2, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "HockeyApp User Metrics Sender Queue"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mTimer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method protected createEnvelope(Lnet/hockeyapp/android/metrics/model/Data;)Lnet/hockeyapp/android/metrics/model/Envelope;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/metrics/model/Data",
            "<",
            "Lnet/hockeyapp/android/metrics/model/Domain;",
            ">;)",
            "Lnet/hockeyapp/android/metrics/model/Envelope;"
        }
    .end annotation

    new-instance v1, Lnet/hockeyapp/android/metrics/model/Envelope;

    invoke-direct {v1}, Lnet/hockeyapp/android/metrics/model/Envelope;-><init>()V

    invoke-virtual {v1, p1}, Lnet/hockeyapp/android/metrics/model/Envelope;->setData(Lnet/hockeyapp/android/metrics/model/Base;)V

    invoke-virtual {p1}, Lnet/hockeyapp/android/metrics/model/Data;->getBaseData()Lnet/hockeyapp/android/metrics/model/Domain;

    move-result-object v0

    instance-of v2, v0, Lnet/hockeyapp/android/metrics/model/TelemetryData;

    if-eqz v2, :cond_0

    check-cast v0, Lnet/hockeyapp/android/metrics/model/TelemetryData;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getEnvelopeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Envelope;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->updateScreenResolution()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/Util;->dateToISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Envelope;->setTime(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->getInstrumentationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Envelope;->setIKey(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->getContextTags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/model/Envelope;->setTags(Ljava/util/Map;)V

    :cond_1
    return-object v1
.end method

.method protected enqueue(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lnet/hockeyapp/android/metrics/Channel;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchCount:I

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Channel;->synchronize()V

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Channel;->scheduleSynchronizeTask()V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "HockeyApp-Metrics"

    const-string/jumbo v2, "Unable to add item to queue"

    invoke-static {v0, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public enqueueData(Lnet/hockeyapp/android/metrics/model/Base;)V
    .locals 4

    instance-of v0, p1, Lnet/hockeyapp/android/metrics/model/Data;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Lnet/hockeyapp/android/metrics/model/Data;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Channel;->createEnvelope(Lnet/hockeyapp/android/metrics/model/Data;)Lnet/hockeyapp/android/metrics/model/Envelope;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/Channel;->serializeEnvelope(Lnet/hockeyapp/android/metrics/model/Envelope;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/metrics/Channel;->enqueue(Ljava/lang/String;)V

    const-string/jumbo v1, "HockeyApp-Metrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enqueued telemetry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/model/Envelope;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "HockeyApp-Metrics"

    const-string/jumbo v2, "Telemetry not enqueued, could not create envelope, must be of type ITelemetry"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "HockeyApp-Metrics"

    const-string/jumbo v1, "Telemetry not enqueued, must be of type ITelemetry"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected scheduleSynchronizeTask()V
    .locals 4

    new-instance v0, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;-><init>(Lnet/hockeyapp/android/metrics/Channel;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    sget v2, Lnet/hockeyapp/android/metrics/Channel;->mMaxBatchInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method protected serializeEnvelope(Lnet/hockeyapp/android/metrics/model/Envelope;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p1, v1}, Lnet/hockeyapp/android/metrics/model/Envelope;->serialize(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "HockeyApp-Metrics"

    const-string/jumbo v2, "Envelope wasn\'t empty but failed to serialize anything, returning null"

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "HockeyApp-Metrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to save data with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synchronize()V
    .locals 2

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mSynchronizeTask:Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Channel$SynchronizeChannelTask;->cancel()Z

    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Channel;->mPersistence:Lnet/hockeyapp/android/metrics/Persistence;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/Persistence;->persist([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
