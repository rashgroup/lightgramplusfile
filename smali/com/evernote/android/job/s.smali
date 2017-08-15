.class public final Lcom/evernote/android/job/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:Lcom/evernote/android/job/r;

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/evernote/android/job/t;

.field private n:Lcom/evernote/android/job/a/a/b;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/evernote/android/job/s;->a:I

    const-string/jumbo v0, "tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/s;->b:Ljava/lang/String;

    const-string/jumbo v0, "startMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/s;->c:J

    const-string/jumbo v0, "endMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/s;->d:J

    const-string/jumbo v0, "backoffMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/s;->e:J

    :try_start_0
    const-string/jumbo v0, "backoffPolicy"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/r;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/r;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/s;->f:Lcom/evernote/android/job/r;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "intervalMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/s;->g:J

    const-string/jumbo v0, "flexMs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/s;->h:J

    const-string/jumbo v0, "requirementsEnforced"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/evernote/android/job/s;->i:Z

    const-string/jumbo v0, "requiresCharging"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/evernote/android/job/s;->j:Z

    const-string/jumbo v0, "requiresDeviceIdle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/evernote/android/job/s;->k:Z

    const-string/jumbo v0, "exact"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/evernote/android/job/s;->l:Z

    :try_start_1
    const-string/jumbo v0, "networkType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/t;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/t;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/s;->m:Lcom/evernote/android/job/t;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    const-string/jumbo v0, "extras"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/s;->o:Ljava/lang/String;

    const-string/jumbo v0, "persisted"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4

    :goto_6
    iput-boolean v1, p0, Lcom/evernote/android/job/s;->p:Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/evernote/android/job/p;->C()La/a/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/evernote/android/job/p;->a:Lcom/evernote/android/job/r;

    iput-object v0, p0, Lcom/evernote/android/job/s;->f:Lcom/evernote/android/job/r;

    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/evernote/android/job/p;->C()La/a/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, La/a/a/a/c;->b(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/evernote/android/job/p;->b:Lcom/evernote/android/job/t;

    iput-object v0, p0, Lcom/evernote/android/job/s;->m:Lcom/evernote/android/job/t;

    goto :goto_5

    :cond_4
    move v1, v2

    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/evernote/android/job/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evernote/android/job/s;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/p;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/u;->a()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/evernote/android/job/s;->a:I

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/s;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/s;->c:J

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/s;->d:J

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/s;->e:J

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->g()Lcom/evernote/android/job/r;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/s;->f:Lcom/evernote/android/job/r;

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/s;->h:J

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/s;->i:Z

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/s;->j:Z

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/s;->k:Z

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/s;->l:Z

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->o()Lcom/evernote/android/job/t;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/s;->m:Lcom/evernote/android/job/t;

    invoke-static {p1}, Lcom/evernote/android/job/p;->a(Lcom/evernote/android/job/p;)Lcom/evernote/android/job/s;

    move-result-object v0

    iget-object v0, v0, Lcom/evernote/android/job/s;->n:Lcom/evernote/android/job/a/a/b;

    iput-object v0, p0, Lcom/evernote/android/job/s;->n:Lcom/evernote/android/job/a/a/b;

    invoke-static {p1}, Lcom/evernote/android/job/p;->a(Lcom/evernote/android/job/p;)Lcom/evernote/android/job/s;

    move-result-object v0

    iget-object v0, v0, Lcom/evernote/android/job/s;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/s;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/evernote/android/job/p;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/s;->p:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/evernote/android/job/p;->c()I

    move-result v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/p;ZLcom/evernote/android/job/q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/s;-><init>(Lcom/evernote/android/job/p;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/s;->b:Ljava/lang/String;

    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/k;->e()Lcom/evernote/android/job/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/u;->a()I

    move-result v0

    iput v0, p0, Lcom/evernote/android/job/s;->a:I

    iput-wide v2, p0, Lcom/evernote/android/job/s;->c:J

    iput-wide v2, p0, Lcom/evernote/android/job/s;->d:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/evernote/android/job/s;->e:J

    sget-object v0, Lcom/evernote/android/job/p;->a:Lcom/evernote/android/job/r;

    iput-object v0, p0, Lcom/evernote/android/job/s;->f:Lcom/evernote/android/job/r;

    sget-object v0, Lcom/evernote/android/job/p;->b:Lcom/evernote/android/job/t;

    iput-object v0, p0, Lcom/evernote/android/job/s;->m:Lcom/evernote/android/job/t;

    return-void
.end method

.method private a(Landroid/content/ContentValues;)V
    .locals 4

    const-string/jumbo v0, "_id"

    iget v1, p0, Lcom/evernote/android/job/s;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "tag"

    iget-object v1, p0, Lcom/evernote/android/job/s;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "startMs"

    iget-wide v2, p0, Lcom/evernote/android/job/s;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "endMs"

    iget-wide v2, p0, Lcom/evernote/android/job/s;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "backoffMs"

    iget-wide v2, p0, Lcom/evernote/android/job/s;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "backoffPolicy"

    iget-object v1, p0, Lcom/evernote/android/job/s;->f:Lcom/evernote/android/job/r;

    invoke-virtual {v1}, Lcom/evernote/android/job/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "intervalMs"

    iget-wide v2, p0, Lcom/evernote/android/job/s;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "flexMs"

    iget-wide v2, p0, Lcom/evernote/android/job/s;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "requirementsEnforced"

    iget-boolean v1, p0, Lcom/evernote/android/job/s;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "requiresCharging"

    iget-boolean v1, p0, Lcom/evernote/android/job/s;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "requiresDeviceIdle"

    iget-boolean v1, p0, Lcom/evernote/android/job/s;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "exact"

    iget-boolean v1, p0, Lcom/evernote/android/job/s;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "networkType"

    iget-object v1, p0, Lcom/evernote/android/job/s;->m:Lcom/evernote/android/job/t;

    invoke-virtual {v1}, Lcom/evernote/android/job/t;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/evernote/android/job/s;->n:Lcom/evernote/android/job/a/a/b;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "extras"

    iget-object v1, p0, Lcom/evernote/android/job/s;->n:Lcom/evernote/android/job/a/a/b;

    invoke-virtual {v1}, Lcom/evernote/android/job/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "persisted"

    iget-boolean v1, p0, Lcom/evernote/android/job/s;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/s;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "extras"

    iget-object v1, p0, Lcom/evernote/android/job/s;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/evernote/android/job/s;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evernote/android/job/s;->a(Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic a(Lcom/evernote/android/job/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/s;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/evernote/android/job/s;)I
    .locals 1

    iget v0, p0, Lcom/evernote/android/job/s;->a:I

    return v0
.end method

.method static synthetic c(Lcom/evernote/android/job/s;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/evernote/android/job/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/s;->c:J

    return-wide v0
.end method

.method static synthetic e(Lcom/evernote/android/job/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/s;->d:J

    return-wide v0
.end method

.method static synthetic f(Lcom/evernote/android/job/s;)Lcom/evernote/android/job/r;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/s;->f:Lcom/evernote/android/job/r;

    return-object v0
.end method

.method static synthetic g(Lcom/evernote/android/job/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/s;->e:J

    return-wide v0
.end method

.method static synthetic h(Lcom/evernote/android/job/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    return-wide v0
.end method

.method static synthetic i(Lcom/evernote/android/job/s;)J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/android/job/s;->h:J

    return-wide v0
.end method

.method static synthetic j(Lcom/evernote/android/job/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/s;->i:Z

    return v0
.end method

.method static synthetic k(Lcom/evernote/android/job/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/s;->j:Z

    return v0
.end method

.method static synthetic l(Lcom/evernote/android/job/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/s;->k:Z

    return v0
.end method

.method static synthetic m(Lcom/evernote/android/job/s;)Lcom/evernote/android/job/t;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/s;->m:Lcom/evernote/android/job/t;

    return-object v0
.end method

.method static synthetic n(Lcom/evernote/android/job/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/s;->p:Z

    return v0
.end method

.method static synthetic o(Lcom/evernote/android/job/s;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/s;->q:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/evernote/android/job/p;
    .locals 14

    const-wide v12, 0x2aaaaaaaaaaaaaaaL

    const-wide/16 v10, -0x1

    const-wide/16 v8, 0x0

    iget v0, p0, Lcom/evernote/android/job/s;->a:I

    const-string/jumbo v1, "id can\'t be negative"

    invoke-static {v0, v1}, Lcom/evernote/android/job/a/f;->a(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/evernote/android/job/s;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-wide v0, p0, Lcom/evernote/android/job/s;->e:J

    const-string/jumbo v2, "backoffMs must be > 0"

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/a/f;->b(JLjava/lang/String;)J

    iget-object v0, p0, Lcom/evernote/android/job/s;->f:Lcom/evernote/android/job/r;

    invoke-static {v0}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/evernote/android/job/s;->m:Lcom/evernote/android/job/t;

    invoke-static {v0}, Lcom/evernote/android/job/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    invoke-static {}, Lcom/evernote/android/job/p;->a()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const-string/jumbo v6, "intervalMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/f;->a(JJJLjava/lang/String;)J

    iget-wide v0, p0, Lcom/evernote/android/job/s;->h:J

    invoke-static {}, Lcom/evernote/android/job/p;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/s;->g:J

    const-string/jumbo v6, "flexMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/f;->a(JJJLjava/lang/String;)J

    iget-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    sget-wide v2, Lcom/evernote/android/job/p;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/evernote/android/job/s;->h:J

    sget-wide v2, Lcom/evernote/android/job/p;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/evernote/android/job/p;->C()La/a/a/a/c;

    move-result-object v0

    const-string/jumbo v1, "AllowSmallerIntervals enabled, this will crash on Android N and later, interval %d (minimum is %d), flex %d (minimum is %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/evernote/android/job/s;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-wide v4, Lcom/evernote/android/job/p;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/evernote/android/job/s;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-wide v4, Lcom/evernote/android/job/p;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, La/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/evernote/android/job/s;->l:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t call setExact() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/evernote/android/job/s;->l:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/evernote/android/job/s;->c:J

    iget-wide v2, p0, Lcom/evernote/android/job/s;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t call setExecutionWindow() for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-boolean v0, p0, Lcom/evernote/android/job/s;->l:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/evernote/android/job/s;->i:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/android/job/s;->k:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/android/job/s;->j:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/evernote/android/job/p;->b:Lcom/evernote/android/job/t;

    iget-object v1, p0, Lcom/evernote/android/job/s;->m:Lcom/evernote/android/job/t;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t require any condition for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_7

    iget-wide v0, p0, Lcom/evernote/android/job/s;->c:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/evernote/android/job/s;->d:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_9

    iget-wide v0, p0, Lcom/evernote/android/job/s;->c:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/evernote/android/job/s;->d:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t call setExecutionWindow() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_b

    iget-wide v0, p0, Lcom/evernote/android/job/s;->e:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    sget-object v0, Lcom/evernote/android/job/p;->a:Lcom/evernote/android/job/r;

    iget-object v1, p0, Lcom/evernote/android/job/s;->f:Lcom/evernote/android/job/r;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A periodic job will not respect any back-off policy, so calling setBackoffCriteria() with setPeriodic() is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_d

    iget-wide v0, p0, Lcom/evernote/android/job/s;->c:J

    cmp-long v0, v0, v12

    if-gtz v0, :cond_c

    iget-wide v0, p0, Lcom/evernote/android/job/s;->d:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_d

    :cond_c
    const-string/jumbo v0, "Attention: your execution window is too large. This could result in undesired behavior, see https://github.com/evernote/android-job/blob/master/FAQ.md"

    invoke-static {v0}, La/a/a/a/a;->b(Ljava/lang/String;)V

    :cond_d
    new-instance v0, Lcom/evernote/android/job/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/p;-><init>(Lcom/evernote/android/job/s;Lcom/evernote/android/job/q;)V

    return-object v0
.end method

.method public a(J)Lcom/evernote/android/job/s;
    .locals 1

    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/evernote/android/job/s;->b(JJ)Lcom/evernote/android/job/s;

    move-result-object v0

    return-object v0
.end method

.method public a(JJ)Lcom/evernote/android/job/s;
    .locals 7

    const-string/jumbo v0, "startMs must be greater than 0"

    invoke-static {p1, p2, v0}, Lcom/evernote/android/job/a/f;->b(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/s;->c:J

    const-wide v4, 0x7fffffffffffffffL

    const-string/jumbo v6, "endMs"

    move-wide v0, p3

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/f;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/s;->d:J

    iget-wide v0, p0, Lcom/evernote/android/job/s;->c:J

    const-wide v2, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "startMs reduced from %d days to %d days"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/evernote/android/job/s;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v4, 0x5555555555555554L    # 1.1945305291614953E103

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide v0, 0x5555555555555554L    # 1.1945305291614953E103

    iput-wide v0, p0, Lcom/evernote/android/job/s;->c:J

    :cond_0
    iget-wide v0, p0, Lcom/evernote/android/job/s;->d:J

    const-wide v2, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string/jumbo v0, "endMs reduced from %d days to %d days"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/evernote/android/job/s;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v4, 0x5555555555555554L    # 1.1945305291614953E103

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide v0, 0x5555555555555554L    # 1.1945305291614953E103

    iput-wide v0, p0, Lcom/evernote/android/job/s;->d:J

    :cond_1
    return-object p0
.end method

.method public a(Lcom/evernote/android/job/t;)Lcom/evernote/android/job/s;
    .locals 0
    .param p1    # Lcom/evernote/android/job/t;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/evernote/android/job/s;->m:Lcom/evernote/android/job/t;

    return-object p0
.end method

.method public a(Z)Lcom/evernote/android/job/s;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/evernote/android/job/k;->a()Lcom/evernote/android/job/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/k;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/a/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Does not have RECEIVE_BOOT_COMPLETED permission, which is mandatory for this feature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lcom/evernote/android/job/s;->p:Z

    return-object p0
.end method

.method public b(JJ)Lcom/evernote/android/job/s;
    .locals 7

    invoke-static {}, Lcom/evernote/android/job/p;->a()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const-string/jumbo v6, "intervalMs"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/f;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/s;->g:J

    invoke-static {}, Lcom/evernote/android/job/p;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/s;->g:J

    const-string/jumbo v6, "flexMs"

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/f;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/s;->h:J

    return-object p0
.end method

.method public b(Z)Lcom/evernote/android/job/s;
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/android/job/s;->q:Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/evernote/android/job/s;

    iget v2, p0, Lcom/evernote/android/job/s;->a:I

    iget v3, p1, Lcom/evernote/android/job/s;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/evernote/android/job/s;->a:I

    return v0
.end method
