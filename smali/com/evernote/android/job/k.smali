.class public final Lcom/evernote/android/job/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Package;

.field private static final b:La/a/a/a/c;

.field private static volatile c:Lcom/evernote/android/job/k;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/evernote/android/job/g;

.field private final f:Lcom/evernote/android/job/u;

.field private final g:Lcom/evernote/android/job/h;

.field private final h:Lcom/evernote/android/job/m;

.field private i:Lcom/evernote/android/job/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/evernote/android/job/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    sput-object v0, Lcom/evernote/android/job/k;->a:Ljava/lang/Package;

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "JobManager"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/k;->b:La/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/k;->d:Landroid/content/Context;

    new-instance v0, Lcom/evernote/android/job/g;

    invoke-direct {v0}, Lcom/evernote/android/job/g;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/k;->e:Lcom/evernote/android/job/g;

    new-instance v0, Lcom/evernote/android/job/u;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/evernote/android/job/k;->f:Lcom/evernote/android/job/u;

    new-instance v0, Lcom/evernote/android/job/h;

    invoke-direct {v0}, Lcom/evernote/android/job/h;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/k;->g:Lcom/evernote/android/job/h;

    new-instance v0, Lcom/evernote/android/job/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/m;-><init>(Lcom/evernote/android/job/k;Lcom/evernote/android/job/l;)V

    iput-object v0, p0, Lcom/evernote/android/job/k;->h:Lcom/evernote/android/job/m;

    iget-object v0, p0, Lcom/evernote/android/job/k;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/evernote/android/job/k;->h:Lcom/evernote/android/job/m;

    invoke-virtual {v1}, Lcom/evernote/android/job/m;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;Z)Lcom/evernote/android/job/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/k;->a(Lcom/evernote/android/job/a/c;)V

    invoke-direct {p0}, Lcom/evernote/android/job/k;->k()V

    return-void
.end method

.method public static a()Lcom/evernote/android/job/k;
    .locals 3

    sget-object v0, Lcom/evernote/android/job/k;->c:Lcom/evernote/android/job/k;

    if-nez v0, :cond_1

    const-class v1, Lcom/evernote/android/job/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/evernote/android/job/k;->c:Lcom/evernote/android/job/k;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "You need to call create() at least once to create the singleton"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v0, Lcom/evernote/android/job/k;->c:Lcom/evernote/android/job/k;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/evernote/android/job/k;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/evernote/android/job/k;->c:Lcom/evernote/android/job/k;

    if-nez v0, :cond_5

    const-class v1, Lcom/evernote/android/job/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/evernote/android/job/k;->c:Lcom/evernote/android/job/k;

    if-nez v0, :cond_4

    const-string/jumbo v0, "Context cannot be null"

    invoke-static {p0, v0}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/evernote/android/job/k;->a:Ljava/lang/Package;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/android/job/k;->a:Ljava/lang/Package;

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/evernote/android/job/a/e;

    invoke-direct {v2}, Lcom/evernote/android/job/a/e;-><init>()V

    invoke-static {v0, v2}, La/a/a/a/b;->a(Ljava/lang/String;La/a/a/a/c;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_1
    new-instance v0, Lcom/evernote/android/job/k;

    invoke-direct {v0, p0}, Lcom/evernote/android/job/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/evernote/android/job/k;->c:Lcom/evernote/android/job/k;

    invoke-static {p0}, Lcom/evernote/android/job/a/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "No wake lock permission"

    invoke-static {v0}, La/a/a/a/a;->b(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/evernote/android/job/a/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "No boot permission"

    invoke-static {v0}, La/a/a/a/a;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {p0}, Lcom/evernote/android/job/k;->b(Landroid/content/Context;)V

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    sget-object v0, Lcom/evernote/android/job/k;->c:Lcom/evernote/android/job/k;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/evernote/android/job/k;Lcom/evernote/android/job/p;)Lcom/evernote/android/job/n;
    .locals 1

    invoke-direct {p0, p1}, Lcom/evernote/android/job/k;->c(Lcom/evernote/android/job/p;)Lcom/evernote/android/job/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/evernote/android/job/k;)Lcom/evernote/android/job/u;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->f:Lcom/evernote/android/job/u;

    return-object v0
.end method

.method private a(Lcom/evernote/android/job/a;)Z
    .locals 5
    .param p1    # Lcom/evernote/android/job/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/evernote/android/job/a;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/evernote/android/job/a;->h()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/evernote/android/job/k;->b:La/a/a/a/c;

    const-string/jumbo v3, "Cancel running %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, La/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/evernote/android/job/a;->g()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/evernote/android/job/a/c;)Lcom/evernote/android/job/n;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/a/c;->c(Landroid/content/Context;)Lcom/evernote/android/job/n;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.evernote.android.job.ADD_JOB_CREATOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/f;

    sget-object v3, Lcom/evernote/android/job/k;->c:Lcom/evernote/android/job/k;

    invoke-virtual {v0, p0, v3}, Lcom/evernote/android/job/f;->a(Landroid/content/Context;Lcom/evernote/android/job/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcom/evernote/android/job/p;)Z
    .locals 5
    .param p1    # Lcom/evernote/android/job/p;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/evernote/android/job/k;->b:La/a/a/a/c;

    const-string/jumbo v3, "Found pending job %s, canceling"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, La/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/evernote/android/job/k;->c(Lcom/evernote/android/job/p;)Lcom/evernote/android/job/n;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->c()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/evernote/android/job/n;->a(I)V

    invoke-virtual {p0}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/evernote/android/job/u;->b(Lcom/evernote/android/job/p;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/evernote/android/job/k;->f:Lcom/evernote/android/job/u;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/evernote/android/job/u;->a(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/p;

    invoke-direct {p0, v0}, Lcom/evernote/android/job/k;->b(Lcom/evernote/android/job/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/android/job/k;->c()Ljava/util/Set;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;

    invoke-direct {p0, v0}, Lcom/evernote/android/job/k;->a(Lcom/evernote/android/job/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/k;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private c(Lcom/evernote/android/job/p;)Lcom/evernote/android/job/n;
    .locals 1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->t()Lcom/evernote/android/job/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evernote/android/job/k;->b(Lcom/evernote/android/job/a/c;)Lcom/evernote/android/job/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i()La/a/a/a/c;
    .locals 1

    sget-object v0, Lcom/evernote/android/job/k;->b:La/a/a/a/c;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/Package;
    .locals 1

    sget-object v0, Lcom/evernote/android/job/k;->a:Ljava/lang/Package;

    return-object v0
.end method

.method private k()V
    .locals 6

    iget-object v0, p0, Lcom/evernote/android/job/k;->d:Landroid/content/Context;

    const-class v1, Lcom/evernote/android/job/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/x;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    new-instance v1, Lcom/evernote/android/job/l;

    invoke-direct {v1, p0, v0}, Lcom/evernote/android/job/l;-><init>(Lcom/evernote/android/job/k;Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v1}, Lcom/evernote/android/job/l;->start()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/evernote/android/job/a;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->g:Lcom/evernote/android/job/h;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/h;->a(I)Lcom/evernote/android/job/a;

    move-result-object v0

    return-object v0
.end method

.method a(IZ)Lcom/evernote/android/job/p;
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/k;->f:Lcom/evernote/android/job/u;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/u;->a(I)Lcom/evernote/android/job/p;

    move-result-object v0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/evernote/android/job/p;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/k;->g:Lcom/evernote/android/job/h;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/h;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/evernote/android/job/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/android/job/k;->i:Lcom/evernote/android/job/a/c;

    return-void
.end method

.method public a(Lcom/evernote/android/job/e;)V
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->e:Lcom/evernote/android/job/g;

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/g;->a(Lcom/evernote/android/job/e;)V

    return-void
.end method

.method public a(Lcom/evernote/android/job/p;)V
    .locals 8
    .param p1    # Lcom/evernote/android/job/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evernote/android/job/k;->e:Lcom/evernote/android/job/g;

    invoke-virtual {v0}, Lcom/evernote/android/job/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/android/job/k;->b:La/a/a/a/c;

    const-string/jumbo v1, "you haven\'t registered a JobCreator with addJobCreator(), it\'s likely that your job never will be executed"

    invoke-virtual {v0, v1}, La/a/a/a/c;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/evernote/android/job/p;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/android/job/k;->b(Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/k;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/evernote/android/job/o;->a(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->t()Lcom/evernote/android/job/a/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/evernote/android/job/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    sget-object v3, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/evernote/android/job/k;->h:Lcom/evernote/android/job/m;

    invoke-virtual {v3}, Lcom/evernote/android/job/m;->a()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/evernote/android/job/k;->b:La/a/a/a/c;

    const-string/jumbo v4, "GCM API disabled, but used nonetheless"

    invoke-virtual {v3, v4}, La/a/a/a/c;->b(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/evernote/android/job/p;->a(J)V

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/p;->a(Z)V

    iget-object v3, p0, Lcom/evernote/android/job/k;->f:Lcom/evernote/android/job/u;

    invoke-virtual {v3, p1}, Lcom/evernote/android/job/u;->a(Lcom/evernote/android/job/p;)V

    invoke-direct {p0, v1}, Lcom/evernote/android/job/k;->b(Lcom/evernote/android/job/a/c;)Lcom/evernote/android/job/n;

    move-result-object v1

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    invoke-interface {v1, p1}, Lcom/evernote/android/job/n;->c(Lcom/evernote/android/job/p;)V

    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v1, p1}, Lcom/evernote/android/job/n;->b(Lcom/evernote/android/job/p;)V

    goto :goto_1

    :cond_5
    invoke-interface {v1, p1}, Lcom/evernote/android/job/n;->a(Lcom/evernote/android/job/p;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/evernote/android/job/k;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Lcom/evernote/android/job/m;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->h:Lcom/evernote/android/job/m;

    return-object v0
.end method

.method public b(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/k;->a(IZ)Lcom/evernote/android/job/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/evernote/android/job/k;->b(Lcom/evernote/android/job/p;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/k;->a(I)Lcom/evernote/android/job/a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/evernote/android/job/k;->a(Lcom/evernote/android/job/a;)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/evernote/android/job/k;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/evernote/android/job/o;->a(Landroid/content/Context;I)V

    return v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/k;->g:Lcom/evernote/android/job/h;

    invoke-virtual {v0}, Lcom/evernote/android/job/h;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/evernote/android/job/a/c;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->i:Lcom/evernote/android/job/a/c;

    return-object v0
.end method

.method e()Lcom/evernote/android/job/u;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->f:Lcom/evernote/android/job/u;

    return-object v0
.end method

.method f()Lcom/evernote/android/job/h;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->g:Lcom/evernote/android/job/h;

    return-object v0
.end method

.method g()Lcom/evernote/android/job/g;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->e:Lcom/evernote/android/job/g;

    return-object v0
.end method

.method h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/k;->d:Landroid/content/Context;

    return-object v0
.end method
