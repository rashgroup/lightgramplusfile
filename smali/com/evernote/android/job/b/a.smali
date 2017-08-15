.class public Lcom/evernote/android/job/b/a;
.super Lcom/evernote/android/job/v14/a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "JobProxy19"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/evernote/android/job/p;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 8

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/evernote/android/job/o;->a(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {p1}, Lcom/evernote/android/job/o;->b(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/evernote/android/job/o;->a(Lcom/evernote/android/job/p;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object v0, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/evernote/android/job/b/a;->b:La/a/a/a/c;

    const-string/jumbo v2, "Schedule alarm, %s, start %s, end %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p1}, Lcom/evernote/android/job/o;->a(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/evernote/android/job/o;->b(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected c(Lcom/evernote/android/job/p;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 8

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/evernote/android/job/o;->d(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {p1}, Lcom/evernote/android/job/o;->e(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/evernote/android/job/o;->d(Lcom/evernote/android/job/p;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object v0, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/evernote/android/job/b/a;->b:La/a/a/a/c;

    const-string/jumbo v2, "Scheduled repeating alarm (flex support), %s, start %s, end %s, flex %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p1}, Lcom/evernote/android/job/o;->d(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/evernote/android/job/o;->e(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
