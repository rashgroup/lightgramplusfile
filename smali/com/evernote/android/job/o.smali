.class public final Lcom/evernote/android/job/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:La/a/a/a/c;

.field private final d:Lcom/evernote/android/job/k;


# direct methods
.method public constructor <init>(Landroid/app/Service;I)V
    .locals 1
    .param p1    # Landroid/app/Service;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/evernote/android/job/o;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/o;->a:Landroid/content/Context;

    iput p3, p0, Lcom/evernote/android/job/o;->b:I

    new-instance v0, Lcom/evernote/android/job/a/e;

    invoke-direct {v0, p2}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    invoke-static {p1}, Lcom/evernote/android/job/k;->a(Landroid/content/Context;)Lcom/evernote/android/job/k;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    return-void
.end method

.method private static a(JJ)J
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-long v4, p0, p2

    xor-long v2, p0, p2

    cmp-long v2, v2, v8

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    xor-long v6, p0, v4

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1

    :goto_1
    or-int/2addr v0, v2

    invoke-static {v4, v5, v0}, Lcom/evernote/android/job/o;->a(JZ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static a(JZ)J
    .locals 0

    if-eqz p2, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public static a(Lcom/evernote/android/job/p;)J
    .locals 2

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->v()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->s()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/android/job/p;->e()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5

    invoke-static {}, Lcom/evernote/android/job/a/c;->values()[Lcom/evernote/android/job/a/c;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v3, p0}, Lcom/evernote/android/job/a/c;->c(Landroid/content/Context;)Lcom/evernote/android/job/n;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/evernote/android/job/n;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static b(Lcom/evernote/android/job/p;)J
    .locals 2

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->v()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->s()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/android/job/p;->f()J

    move-result-wide v0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/evernote/android/job/o;->a:Landroid/content/Context;

    iget v1, p0, Lcom/evernote/android/job/o;->b:I

    invoke-static {v0, v1}, Lcom/evernote/android/job/o;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/evernote/android/job/p;)J
    .locals 6

    invoke-static {p0}, Lcom/evernote/android/job/o;->a(Lcom/evernote/android/job/p;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/evernote/android/job/o;->b(Lcom/evernote/android/job/p;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/evernote/android/job/o;->a(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/o;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Lcom/evernote/android/job/p;)J
    .locals 6

    const-wide/16 v0, 0x1

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Lcom/evernote/android/job/p;)J
    .locals 2

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Lcom/evernote/android/job/p;)J
    .locals 6

    invoke-static {p0}, Lcom/evernote/android/job/o;->d(Lcom/evernote/android/job/p;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/evernote/android/job/o;->e(Lcom/evernote/android/job/p;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/evernote/android/job/o;->d(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/o;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g(Lcom/evernote/android/job/p;)I
    .locals 1

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->v()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Z)Lcom/evernote/android/job/p;
    .locals 11

    const/4 v10, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    iget v2, p0, Lcom/evernote/android/job/o;->b:I

    invoke-virtual {v1, v2, v3}, Lcom/evernote/android/job/k;->a(IZ)Lcom/evernote/android/job/p;

    move-result-object v1

    iget-object v2, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    iget v5, p0, Lcom/evernote/android/job/o;->b:I

    invoke-virtual {v2, v5}, Lcom/evernote/android/job/k;->a(I)Lcom/evernote/android/job/a;

    move-result-object v5

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/evernote/android/job/p;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/evernote/android/job/a;->i()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v2, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    const-string/jumbo v5, "Job %d is already running, %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/evernote/android/job/o;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    invoke-virtual {v2, v5, v6}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    const-string/jumbo v5, "Job %d already finished, %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/evernote/android/job/o;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    invoke-virtual {v2, v5, v6}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/evernote/android/job/o;->b(Z)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/evernote/android/job/a;->j()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v2, v6, v8

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    const-string/jumbo v5, "Job %d is periodic and just finished, %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/evernote/android/job/o;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    invoke-virtual {v2, v5, v6}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/evernote/android/job/p;->w()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    const-string/jumbo v5, "Request %d is transient, %s"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/evernote/android/job/o;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v1, v6, v3

    invoke-virtual {v2, v5, v6}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    const-string/jumbo v2, "Request for ID %d was null"

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/evernote/android/job/o;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/evernote/android/job/o;->b(Z)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public h(Lcom/evernote/android/job/p;)Lcom/evernote/android/job/d;
    .locals 11
    .param p1    # Lcom/evernote/android/job/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->u()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "interval %s, flex %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    const-string/jumbo v4, "Running JobRequest on a main thread, this could cause stutter or ANR in your app."

    invoke-virtual {v1, v4}, La/a/a/a/c;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    const-string/jumbo v4, "Run job, %s, waited %s, %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v2, v3}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    aput-object v0, v5, v10

    invoke-virtual {v1, v4, v5}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v0}, Lcom/evernote/android/job/k;->f()Lcom/evernote/android/job/h;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v2}, Lcom/evernote/android/job/k;->g()Lcom/evernote/android/job/g;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evernote/android/job/g;->a(Ljava/lang/String;)Lcom/evernote/android/job/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->i()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/evernote/android/job/p;->b(Z)V

    :cond_1
    iget-object v2, p0, Lcom/evernote/android/job/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, v1}, Lcom/evernote/android/job/h;->a(Landroid/content/Context;Lcom/evernote/android/job/p;Lcom/evernote/android/job/a;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/evernote/android/job/d;->b:Lcom/evernote/android/job/d;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->i()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/u;->b(Lcom/evernote/android/job/p;)V

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {p1}, Lcom/evernote/android/job/p;->t()Lcom/evernote/android/job/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "start %s, end %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/evernote/android/job/o;->a(Lcom/evernote/android/job/p;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p1}, Lcom/evernote/android/job/o;->b(Lcom/evernote/android/job/p;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "delay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/evernote/android/job/o;->c(Lcom/evernote/android/job/p;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/a/g;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/evernote/android/job/p;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/u;->b(Lcom/evernote/android/job/p;)V

    invoke-virtual {p1, v8, v8}, Lcom/evernote/android/job/p;->a(ZZ)I

    goto :goto_1

    :cond_6
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/d;

    iget-object v2, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    const-string/jumbo v3, "Finished job, %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, La/a/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->i()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/u;->b(Lcom/evernote/android/job/p;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/evernote/android/job/p;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/u;->b(Lcom/evernote/android/job/p;)V

    invoke-virtual {p1, v8, v8}, Lcom/evernote/android/job/p;->a(ZZ)I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    invoke-virtual {v2, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/evernote/android/job/a;->g()V

    iget-object v0, p0, Lcom/evernote/android/job/o;->c:La/a/a/a/c;

    const-string/jumbo v1, "Canceled %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    sget-object v0, Lcom/evernote/android/job/d;->b:Lcom/evernote/android/job/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->i()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/u;->b(Lcom/evernote/android/job/p;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/evernote/android/job/p;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/u;->b(Lcom/evernote/android/job/p;)V

    invoke-virtual {p1, v8, v8}, Lcom/evernote/android/job/p;->a(ZZ)I

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->i()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/u;->b(Lcom/evernote/android/job/p;)V

    :cond_a
    :goto_3
    throw v0

    :cond_b
    invoke-virtual {p1}, Lcom/evernote/android/job/p;->x()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/evernote/android/job/o;->d:Lcom/evernote/android/job/k;

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/u;->b(Lcom/evernote/android/job/p;)V

    invoke-virtual {p1, v8, v8}, Lcom/evernote/android/job/p;->a(ZZ)I

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method
