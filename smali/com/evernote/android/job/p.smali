.class public final Lcom/evernote/android/job/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/evernote/android/job/r;

.field public static final b:Lcom/evernote/android/job/t;

.field public static final c:J

.field public static final d:J

.field private static final e:La/a/a/a/c;


# instance fields
.field private final f:Lcom/evernote/android/job/s;

.field private final g:Lcom/evernote/android/job/a/c;

.field private h:I

.field private i:J

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/evernote/android/job/r;->b:Lcom/evernote/android/job/r;

    sput-object v0, Lcom/evernote/android/job/p;->a:Lcom/evernote/android/job/r;

    sget-object v0, Lcom/evernote/android/job/t;->a:Lcom/evernote/android/job/t;

    sput-object v0, Lcom/evernote/android/job/p;->b:Lcom/evernote/android/job/t;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/p;->c:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/p;->d:J

    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string/jumbo v1, "JobRequest"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/p;->e:La/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {p1}, Lcom/evernote/android/job/s;->a(Lcom/evernote/android/job/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    :goto_0
    iput-object v0, p0, Lcom/evernote/android/job/p;->g:Lcom/evernote/android/job/a/c;

    return-void

    :cond_0
    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/k;->d()Lcom/evernote/android/job/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/s;Lcom/evernote/android/job/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evernote/android/job/p;-><init>(Lcom/evernote/android/job/s;)V

    return-void
.end method

.method static synthetic C()La/a/a/a/c;
    .locals 1

    sget-object v0, Lcom/evernote/android/job/p;->e:La/a/a/a/c;

    return-object v0
.end method

.method static a()J
    .locals 4

    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/k;->b()Lcom/evernote/android/job/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/evernote/android/job/p;->c:J

    goto :goto_0
.end method

.method static a(Landroid/database/Cursor;)Lcom/evernote/android/job/p;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/evernote/android/job/s;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/evernote/android/job/s;-><init>(Landroid/database/Cursor;Lcom/evernote/android/job/q;)V

    invoke-virtual {v0}, Lcom/evernote/android/job/s;->a()Lcom/evernote/android/job/p;

    move-result-object v3

    const-string/jumbo v0, "numFailures"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/evernote/android/job/p;->h:I

    const-string/jumbo v0, "scheduledAt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/evernote/android/job/p;->i:J

    const-string/jumbo v0, "isTransient"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/evernote/android/job/p;->j:Z

    const-string/jumbo v0, "flexSupport"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, v3, Lcom/evernote/android/job/p;->k:Z

    iget v0, v3, Lcom/evernote/android/job/p;->h:I

    const-string/jumbo v1, "failure count can\'t be negative"

    invoke-static {v0, v1}, Lcom/evernote/android/job/a/f;->a(ILjava/lang/String;)I

    iget-wide v0, v3, Lcom/evernote/android/job/p;->i:J

    const-string/jumbo v2, "scheduled at can\'t be negative"

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/a/f;->a(JLjava/lang/String;)J

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/evernote/android/job/p;)Lcom/evernote/android/job/s;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    return-object v0
.end method

.method static b()J
    .locals 4

    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/k;->b()Lcom/evernote/android/job/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/evernote/android/job/p;->d:J

    goto :goto_0
.end method


# virtual methods
.method A()V
    .locals 3

    iget v0, p0, Lcom/evernote/android/job/p;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/evernote/android/job/p;->h:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "numFailures"

    iget v2, p0, Lcom/evernote/android/job/p;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/evernote/android/job/u;->a(Lcom/evernote/android/job/p;Landroid/content/ContentValues;)V

    return-void
.end method

.method B()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v1, v0}, Lcom/evernote/android/job/s;->a(Lcom/evernote/android/job/s;Landroid/content/ContentValues;)V

    const-string/jumbo v1, "numFailures"

    iget v2, p0, Lcom/evernote/android/job/p;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "scheduledAt"

    iget-wide v2, p0, Lcom/evernote/android/job/p;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "isTransient"

    iget-boolean v2, p0, Lcom/evernote/android/job/p;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "flexSupport"

    iget-boolean v2, p0, Lcom/evernote/android/job/p;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method a(ZZ)I
    .locals 2

    new-instance v0, Lcom/evernote/android/job/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/evernote/android/job/s;-><init>(Lcom/evernote/android/job/p;ZLcom/evernote/android/job/q;)V

    invoke-virtual {v0}, Lcom/evernote/android/job/s;->a()Lcom/evernote/android/job/p;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/evernote/android/job/p;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/evernote/android/job/p;->h:I

    :cond_0
    invoke-virtual {v0}, Lcom/evernote/android/job/p;->y()I

    move-result v0

    return v0
.end method

.method a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/evernote/android/job/p;->i:J

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/android/job/p;->k:Z

    return-void
.end method

.method b(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/evernote/android/job/p;->j:Z

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "isTransient"

    iget-boolean v2, p0, Lcom/evernote/android/job/p;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/evernote/android/job/u;->a(Lcom/evernote/android/job/p;Landroid/content/ContentValues;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->b(Lcom/evernote/android/job/s;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->c(Lcom/evernote/android/job/s;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->d(Lcom/evernote/android/job/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/evernote/android/job/p;

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    iget-object v1, p1, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->e(Lcom/evernote/android/job/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lcom/evernote/android/job/r;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->f(Lcom/evernote/android/job/s;)Lcom/evernote/android/job/r;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->g(Lcom/evernote/android/job/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-virtual {v0}, Lcom/evernote/android/job/s;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 4

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->h(Lcom/evernote/android/job/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public k()J
    .locals 2

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->i(Lcom/evernote/android/job/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->j(Lcom/evernote/android/job/s;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->k(Lcom/evernote/android/job/s;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->l(Lcom/evernote/android/job/s;)Z

    move-result v0

    return v0
.end method

.method public o()Lcom/evernote/android/job/t;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->m(Lcom/evernote/android/job/s;)Lcom/evernote/android/job/t;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->n(Lcom/evernote/android/job/s;)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->o(Lcom/evernote/android/job/s;)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->f:Lcom/evernote/android/job/s;

    invoke-static {v0}, Lcom/evernote/android/job/s;->a(Lcom/evernote/android/job/s;)Z

    move-result v0

    return v0
.end method

.method s()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v2, Lcom/evernote/android/job/q;->a:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->g()Lcom/evernote/android/job/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/r;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lcom/evernote/android/job/p;->h:I

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->h()J

    move-result-wide v2

    mul-long/2addr v0, v2

    :cond_1
    :goto_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/evernote/android/job/p;->h:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->h()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v4, p0, Lcom/evernote/android/job/p;->h:I

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method t()Lcom/evernote/android/job/a/c;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/p;->g:Lcom/evernote/android/job/a/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/p;->i:J

    return-wide v0
.end method

.method v()I
    .locals 1

    iget v0, p0, Lcom/evernote/android/job/p;->h:I

    return v0
.end method

.method w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/p;->j:Z

    return v0
.end method

.method x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/p;->k:Z

    return v0
.end method

.method public y()I
    .locals 1

    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/k;->a(Lcom/evernote/android/job/p;)V

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->c()I

    move-result v0

    return v0
.end method

.method public z()Lcom/evernote/android/job/s;
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/k;->b(I)Z

    new-instance v0, Lcom/evernote/android/job/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/evernote/android/job/s;-><init>(Lcom/evernote/android/job/p;ZLcom/evernote/android/job/q;)V

    iput-boolean v2, p0, Lcom/evernote/android/job/p;->j:Z

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->i()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/p;->i:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->e()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/evernote/android/job/p;->f()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/evernote/android/job/s;->a(JJ)Lcom/evernote/android/job/s;

    :cond_0
    return-object v0
.end method
