.class public Lorg/telegram/messenger/StatsController;
.super Ljava/lang/Object;
.source "StatsController.java"


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/StatsController; = null

.field private static final TYPES_COUNT:I = 0x7

.field public static final TYPE_AUDIOS:I = 0x3

.field public static final TYPE_CALLS:I = 0x0

.field public static final TYPE_FILES:I = 0x5

.field public static final TYPE_MESSAGES:I = 0x1

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_PHOTOS:I = 0x4

.field public static final TYPE_ROAMING:I = 0x2

.field public static final TYPE_TOTAL:I = 0x6

.field public static final TYPE_VIDEOS:I = 0x2

.field public static final TYPE_WIFI:I = 0x1

.field private static final lastStatsSaveTime:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callsTotalTime:[I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private receivedBytes:[[J

.field private receivedItems:[[I

.field private resetStatsDate:[J

.field private sentBytes:[[J

.field private sentItems:[[I

.field private statsSaveQueue:Lorg/telegram/messenger/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/StatsController$1;

    invoke-direct {v0}, Lorg/telegram/messenger/StatsController$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/StatsController;->lastStatsSaveTime:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/StatsController;->Instance:Lorg/telegram/messenger/StatsController;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v8, v9}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    filled-new-array {v8, v9}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    filled-new-array {v8, v9}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    filled-new-array {v8, v9}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    new-array v0, v8, [J

    iput-object v0, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    new-array v0, v8, [I

    iput-object v0, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v1, "statsSaveQueue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/StatsController;->statsSaveQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v8, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callsTotalTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v3

    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetStatsDate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    aput-wide v6, v1, v3

    move v1, v2

    :goto_1
    if-ge v1, v9, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v5, v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sentBytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    aput-wide v6, v5, v1

    iget-object v5, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v5, v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "receivedBytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    aput-wide v6, v5, v1

    iget-object v5, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    aget-object v5, v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sentItems"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v1

    iget-object v5, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    aget-object v5, v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "receivedItems"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    aget-wide v6, v1, v3

    cmp-long v1, v6, v10

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    aput-wide v6, v1, v3

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/StatsController;)[[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/StatsController;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/StatsController;)[[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/StatsController;)[[J
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/StatsController;)[[J
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/StatsController;)[I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/StatsController;)[J
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/StatsController;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/StatsController;->Instance:Lorg/telegram/messenger/StatsController;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/StatsController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/StatsController;->Instance:Lorg/telegram/messenger/StatsController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/StatsController;

    invoke-direct {v0}, Lorg/telegram/messenger/StatsController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/StatsController;->Instance:Lorg/telegram/messenger/StatsController;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveStats()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lorg/telegram/messenger/StatsController;->lastStatsSaveTime:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/StatsController;->lastStatsSaveTime:Ljava/lang/ThreadLocal;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->statsSaveQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/StatsController$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/StatsController$2;-><init>(Lorg/telegram/messenger/StatsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCallsTotalTime(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedBytesCount(II)J
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v0, v0, p1

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    goto :goto_0
.end method

.method public getRecivedItemsCount(II)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getResetStatsDate(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getSentBytesCount(II)J
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v0, v0, p1

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x5

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v2, v2, p1

    const/4 v3, 0x4

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    goto :goto_0
.end method

.method public getSentItemsCount(II)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public incrementReceivedBytesCount(IIJ)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v0, v0, p1

    aget-wide v2, v0, p2

    add-long/2addr v2, p3

    aput-wide v2, v0, p2

    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    return-void
.end method

.method public incrementReceivedItemsCount(III)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    aget-object v0, v0, p1

    aget v1, v0, p2

    add-int/2addr v1, p3

    aput v1, v0, p2

    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    return-void
.end method

.method public incrementSentBytesCount(IIJ)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v0, v0, p1

    aget-wide v2, v0, p2

    add-long/2addr v2, p3

    aput-wide v2, v0, p2

    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    return-void
.end method

.method public incrementSentItemsCount(III)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    aget-object v0, v0, p1

    aget v1, v0, p2

    add-int/2addr v1, p3

    aput v1, v0, p2

    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    return-void
.end method

.method public incrementTotalCallsTime(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1

    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    return-void
.end method

.method public resetStats(I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->resetStatsDate:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, p1

    move v0, v1

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentBytes:[[J

    aget-object v2, v2, p1

    aput-wide v4, v2, v0

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedBytes:[[J

    aget-object v2, v2, p1

    aput-wide v4, v2, v0

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->sentItems:[[I

    aget-object v2, v2, p1

    aput v1, v2, v0

    iget-object v2, p0, Lorg/telegram/messenger/StatsController;->receivedItems:[[I

    aget-object v2, v2, p1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/StatsController;->callsTotalTime:[I

    aput v1, v0, p1

    invoke-direct {p0}, Lorg/telegram/messenger/StatsController;->saveStats()V

    return-void
.end method
