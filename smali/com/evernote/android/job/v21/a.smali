.class public Lcom/evernote/android/job/v21/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/evernote/android/job/n;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:La/a/a/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "JobProxy21"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v21/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/v21/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/evernote/android/job/a/e;

    invoke-direct {v0, p2}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/android/job/v21/a;->b:La/a/a/a/c;

    return-void
.end method

.method protected static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "success"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "failure"

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/job/JobInfo;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/evernote/android/job/t;)I
    .locals 3
    .param p1    # Lcom/evernote/android/job/t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    sget-object v1, Lcom/evernote/android/job/v21/b;->a:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/t;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x1

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

.method protected a(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 2

    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Landroid/app/job/JobScheduler;
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/v21/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/evernote/android/job/p;)V
    .locals 9

    invoke-static {p1}, Lcom/evernote/android/job/o;->a(Lcom/evernote/android/job/p;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/evernote/android/job/o;->b(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v21/a;->e(Lcom/evernote/android/job/p;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:La/a/a/a/c;

    const-string/jumbo v6, "Schedule one-off jobInfo %s, %s, start %s, end %s, reschedule count %d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Lcom/evernote/android/job/v21/a;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object p1, v7, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x4

    invoke-static {p1}, Lcom/evernote/android/job/o;->g(Lcom/evernote/android/job/p;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-virtual {v1, v6, v7}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 2

    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/evernote/android/job/p;)V
    .locals 9

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v4

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v21/a;->e(Lcom/evernote/android/job/p;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/a;->b(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:La/a/a/a/c;

    const-string/jumbo v6, "Schedule periodic jobInfo %s, %s, interval %s, flex %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Lcom/evernote/android/job/v21/a;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object p1, v7, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-virtual {v1, v6, v7}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/evernote/android/job/p;)V
    .locals 9

    invoke-static {p1}, Lcom/evernote/android/job/o;->d(Lcom/evernote/android/job/p;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/evernote/android/job/o;->e(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v21/a;->e(Lcom/evernote/android/job/p;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/v21/a;->a(Landroid/app/job/JobInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/evernote/android/job/v21/a;->b:La/a/a/a/c;

    const-string/jumbo v6, "Schedule periodic (flex support) jobInfo %s, %s, start %s, end %s, flex %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Lcom/evernote/android/job/v21/a;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object p1, v7, v0

    const/4 v0, 0x2

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-virtual {v1, v6, v7}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/evernote/android/job/p;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/evernote/android/job/v21/a;->b:La/a/a/a/c;

    invoke-virtual {v2, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/evernote/android/job/p;->c()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected e(Lcom/evernote/android/job/p;)Landroid/app/job/JobInfo$Builder;
    .locals 5

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->c()I

    move-result v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/evernote/android/job/v21/a;->a:Landroid/content/Context;

    const-class v4, Lcom/evernote/android/job/v21/PlatformJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->o()Lcom/evernote/android/job/t;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/t;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method
