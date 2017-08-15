.class public Lcom/evernote/android/job/v14/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/evernote/android/job/n;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:La/a/a/a/c;

.field private c:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "JobProxy14"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/v14/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/evernote/android/job/a/e;

    invoke-direct {v0, p2}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/android/job/v14/a;->b:La/a/a/a/c;

    return-void
.end method

.method private f(Lcom/evernote/android/job/p;)V
    .locals 6

    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:La/a/a/a/c;

    const-string/jumbo v1, "Scheduled alarm, %s, delay %s, exact %b, reschedule count %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/evernote/android/job/o;->c(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->r()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Lcom/evernote/android/job/o;->g(Lcom/evernote/android/job/p;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Z)I
    .locals 1

    const/high16 v0, 0x8000000

    if-nez p1, :cond_0

    const/high16 v0, 0x48000000    # 131072.0f

    :cond_0
    return v0
.end method

.method protected a()Landroid/app/AlarmManager;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:La/a/a/a/c;

    const-string/jumbo v1, "AlarmManager is null"

    invoke-virtual {v0, v1}, La/a/a/a/c;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->c:Landroid/app/AlarmManager;

    return-object v0
.end method

.method protected a(II)Landroid/app/PendingIntent;
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->b:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/evernote/android/job/p;I)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->c()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/evernote/android/job/v14/a;->a(II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/evernote/android/job/p;Z)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/evernote/android/job/v14/a;->a(Z)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/p;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/evernote/android/job/v14/a;->a(Z)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/evernote/android/job/v14/a;->a(II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/v14/a;->a(Z)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/evernote/android/job/v14/a;->a(II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->b:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/evernote/android/job/p;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/p;Z)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/android/job/p;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/android/job/v14/a;->b(Lcom/evernote/android/job/p;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->b:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/p;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected a(Lcom/evernote/android/job/p;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v14/a;->e(Lcom/evernote/android/job/p;)J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/evernote/android/job/v14/a;->f(Lcom/evernote/android/job/p;)V

    return-void
.end method

.method public b(Lcom/evernote/android/job/p;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v7}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/p;Z)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:La/a/a/a/c;

    const-string/jumbo v2, "Scheduled repeating alarm, %s, interval %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Lcom/evernote/android/job/p;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v14/a;->e(Lcom/evernote/android/job/p;)J

    move-result-wide v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    invoke-virtual {p2, v4, v0, v1, p3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/v14/a;->f(Lcom/evernote/android/job/p;)V

    return-void

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    invoke-virtual {p2, v4, v0, v1, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v4, v0, v1, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public c(Lcom/evernote/android/job/p;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/p;Z)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/v14/a;->a()Landroid/app/AlarmManager;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/evernote/android/job/v14/a;->c(Lcom/evernote/android/job/p;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v14/a;->b:La/a/a/a/c;

    invoke-virtual {v1, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected c(Lcom/evernote/android/job/p;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/evernote/android/job/o;->f(Lcom/evernote/android/job/p;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p2, v6, v0, v1, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/evernote/android/job/v14/a;->b:La/a/a/a/c;

    const-string/jumbo v1, "Scheduled repeating alarm (flex support), %s, interval %s, flex %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/evernote/android/job/p;)Z
    .locals 1

    const/high16 v0, 0x20000000

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/a;->a(Lcom/evernote/android/job/p;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Lcom/evernote/android/job/p;)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/evernote/android/job/o;->c(Lcom/evernote/android/job/p;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
