.class public final Lcom/evernote/android/job/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/evernote/android/job/p;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/p;)V
    .locals 0
    .param p1    # Lcom/evernote/android/job/p;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/android/job/c;->a:Lcom/evernote/android/job/p;

    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/p;Lcom/evernote/android/job/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/evernote/android/job/c;-><init>(Lcom/evernote/android/job/p;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/c;->a:Lcom/evernote/android/job/p;

    invoke-virtual {v0}, Lcom/evernote/android/job/p;->c()I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/c;->a:Lcom/evernote/android/job/p;

    invoke-virtual {v0}, Lcom/evernote/android/job/p;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/c;->a:Lcom/evernote/android/job/p;

    invoke-virtual {v0}, Lcom/evernote/android/job/p;->i()Z

    move-result v0

    return v0
.end method

.method d()Lcom/evernote/android/job/p;
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/c;->a:Lcom/evernote/android/job/p;

    return-object v0
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
    check-cast p1, Lcom/evernote/android/job/c;

    iget-object v0, p0, Lcom/evernote/android/job/c;->a:Lcom/evernote/android/job/p;

    iget-object v1, p1, Lcom/evernote/android/job/c;->a:Lcom/evernote/android/job/p;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/evernote/android/job/c;->a:Lcom/evernote/android/job/p;

    invoke-virtual {v0}, Lcom/evernote/android/job/p;->hashCode()I

    move-result v0

    return v0
.end method
