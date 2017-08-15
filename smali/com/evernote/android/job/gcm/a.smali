.class public Lcom/evernote/android/job/gcm/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/evernote/android/job/n;


# static fields
.field private static final a:La/a/a/a/c;


# instance fields
.field private final b:Lcom/google/android/gms/gcm/GcmNetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "JobProxyGcm"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/gcm/a;->a:La/a/a/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    return-void
.end method


# virtual methods
.method protected a(Lcom/evernote/android/job/t;)I
    .locals 3
    .param p1    # Lcom/evernote/android/job/t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    sget-object v1, Lcom/evernote/android/job/gcm/b;->a:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/t;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/p;)Lcom/google/android/gms/gcm/Task$Builder;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/evernote/android/job/gcm/a;->e(Lcom/evernote/android/job/p;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/gcm/Task$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    const-class v1, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/evernote/android/job/p;->o()Lcom/evernote/android/job/t;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/gcm/a;->a(Lcom/evernote/android/job/t;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/evernote/android/job/p;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/evernote/android/job/p;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/Task$Builder;->setRequiresCharging(Z)Lcom/google/android/gms/gcm/Task$Builder;

    return-object p1
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/gcm/a;->b(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public a(Lcom/evernote/android/job/p;)V
    .locals 10

    const-wide/16 v0, 0x3e8

    invoke-static {p1}, Lcom/evernote/android/job/o;->a(Lcom/evernote/android/job/p;)J

    move-result-wide v2

    div-long v4, v2, v0

    invoke-static {p1}, Lcom/evernote/android/job/o;->b(Lcom/evernote/android/job/p;)J

    move-result-wide v6

    div-long v0, v6, v0

    const-wide/16 v8, 0x1

    add-long/2addr v8, v4

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/android/job/gcm/a;->a(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/p;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-virtual {v0, v4, v5, v8, v9}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:La/a/a/a/c;

    const-string/jumbo v1, "Scheduled OneoffTask, %s, start %s, end %s, reschedule count %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    invoke-static {p1}, Lcom/evernote/android/job/o;->g(Lcom/evernote/android/job/p;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v1, v4}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected b(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/evernote/android/job/p;)V
    .locals 6

    const-wide/16 v4, 0x3e8

    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/android/job/gcm/a;->a(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/p;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setFlex(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:La/a/a/a/c;

    const-string/jumbo v1, "Scheduled PeriodicTask, %s, interval %s, flex %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/evernote/android/job/p;)V
    .locals 10

    const-wide/16 v8, 0x3e8

    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:La/a/a/a/c;

    const-string/jumbo v1, "plantPeriodicFlexSupport called although flex is supported"

    invoke-virtual {v0, v1}, La/a/a/a/c;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/evernote/android/job/o;->d(Lcom/evernote/android/job/p;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/evernote/android/job/o;->e(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/android/job/gcm/a;->a(Lcom/google/android/gms/gcm/Task$Builder;Lcom/evernote/android/job/p;)Lcom/google/android/gms/gcm/Task$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/OneoffTask$Builder;

    div-long v6, v2, v8

    div-long v8, v4, v8

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->setExecutionWindow(JJ)Lcom/google/android/gms/gcm/OneoffTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/OneoffTask$Builder;->build()Lcom/google/android/gms/gcm/OneoffTask;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/gcm/a;->b:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V

    sget-object v0, Lcom/evernote/android/job/gcm/a;->a:La/a/a/a/c;

    const-string/jumbo v1, "Scheduled periodic (flex support), %s, start %s, end %s, flex %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v0, v1, v6}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/evernote/android/job/p;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e(Lcom/evernote/android/job/p;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/gcm/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
