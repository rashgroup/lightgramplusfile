.class public final enum Lcom/evernote/android/job/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/evernote/android/job/a/c;

.field public static final enum b:Lcom/evernote/android/job/a/c;

.field public static final enum c:Lcom/evernote/android/job/a/c;

.field public static final enum d:Lcom/evernote/android/job/a/c;

.field public static final enum e:Lcom/evernote/android/job/a/c;

.field private static final synthetic i:[Lcom/evernote/android/job/a/c;


# instance fields
.field private f:Lcom/evernote/android/job/n;

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "V_24"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->a:Lcom/evernote/android/job/a/c;

    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "V_21"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->b:Lcom/evernote/android/job/a/c;

    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "V_19"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "V_14"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    new-instance v0, Lcom/evernote/android/job/a/c;

    const-string/jumbo v1, "GCM"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/evernote/android/job/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/evernote/android/job/a/c;

    sget-object v1, Lcom/evernote/android/job/a/c;->a:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evernote/android/job/a/c;->b:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evernote/android/job/a/c;->i:[Lcom/evernote/android/job/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/evernote/android/job/a/c;->g:Z

    iput-boolean p4, p0, Lcom/evernote/android/job/a/c;->h:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Lcom/evernote/android/job/a/c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/evernote/android/job/a/c;->a:Lcom/evernote/android/job/a/c;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/android/job/a/c;->a:Lcom/evernote/android/job/a/c;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/evernote/android/job/a/c;->b:Lcom/evernote/android/job/a/c;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/android/job/a/c;->b:Lcom/evernote/android/job/a/c;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/android/job/a/c;->e:Lcom/evernote/android/job/a/c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/android/job/a/c;->c:Lcom/evernote/android/job/a/c;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/evernote/android/job/a/c;->d:Lcom/evernote/android/job/a/c;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/android/job/a/c;
    .locals 1

    const-class v0, Lcom/evernote/android/job/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a/c;

    return-object v0
.end method

.method public static values()[Lcom/evernote/android/job/a/c;
    .locals 1

    sget-object v0, Lcom/evernote/android/job/a/c;->i:[Lcom/evernote/android/job/a/c;

    invoke-virtual {v0}, [Lcom/evernote/android/job/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/android/job/a/c;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/a/c;->g:Z

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/evernote/android/job/a/d;->a:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/a/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/evernote/android/job/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public b(Landroid/content/Context;)Lcom/evernote/android/job/n;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/evernote/android/job/a/d;->a:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/a/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/evernote/android/job/c/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/c/a;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/evernote/android/job/v21/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/v21/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/evernote/android/job/b/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/b/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/evernote/android/job/v14/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/v14/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/evernote/android/job/gcm/a;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/gcm/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/a/c;->h:Z

    return v0
.end method

.method public declared-synchronized c(Landroid/content/Context;)Lcom/evernote/android/job/n;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/a/c;->f:Lcom/evernote/android/job/n;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/a/c;->b(Landroid/content/Context;)Lcom/evernote/android/job/n;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/a/c;->f:Lcom/evernote/android/job/n;

    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/a/c;->f:Lcom/evernote/android/job/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
