.class public Lcom/evernote/android/job/c/a;
.super Lcom/evernote/android/job/v21/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "JobProxy24"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v21/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/evernote/android/job/t;)I
    .locals 2
    .param p1    # Lcom/evernote/android/job/t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/evernote/android/job/c/b;->a:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/evernote/android/job/v21/a;->a(Lcom/evernote/android/job/t;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 2

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/evernote/android/job/p;)V
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/c/a;->b:La/a/a/a/c;

    const-string/jumbo v1, "plantPeriodicFlexSupport called although flex is supported"

    invoke-virtual {v0, v1}, La/a/a/a/c;->b(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/evernote/android/job/v21/a;->c(Lcom/evernote/android/job/p;)V

    return-void
.end method

.method public d(Lcom/evernote/android/job/p;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/c/a;->a()Landroid/app/job/JobScheduler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/evernote/android/job/c/a;->b:La/a/a/a/c;

    invoke-virtual {v2, v1}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
