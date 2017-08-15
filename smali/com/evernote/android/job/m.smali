.class public final Lcom/evernote/android/job/m;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/evernote/android/job/k;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/k;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/evernote/android/job/m;->a:Lcom/evernote/android/job/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/evernote/android/job/m;->b:Z

    iput-boolean v0, p0, Lcom/evernote/android/job/m;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evernote/android/job/m;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/k;Lcom/evernote/android/job/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evernote/android/job/m;-><init>(Lcom/evernote/android/job/k;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/m;->b:Z

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/evernote/android/job/k;->j()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/evernote/android/job/m;->b:Z

    invoke-static {}, Lcom/evernote/android/job/k;->j()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, La/a/a/a/b;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evernote/android/job/m;->c:Z

    return v0
.end method

.method public b()Z
    .locals 2

    iget-boolean v0, p0, Lcom/evernote/android/job/m;->d:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
