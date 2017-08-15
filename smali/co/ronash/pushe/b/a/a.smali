.class public Lco/ronash/pushe/b/a/a;
.super Lco/ronash/pushe/b/a/b;


# annotations
.annotation runtime Lco/ronash/pushe/task/a/a;
    c = 0xa4cb800L
.end annotation

.annotation runtime Lco/ronash/pushe/task/a/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/task/c;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lco/ronash/pushe/c/a/s;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/s;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/e/f;

    invoke-virtual {v0}, Lco/ronash/pushe/e/f;->b()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v2, "t14"

    invoke-virtual {p0, p1, v0, v2}, Lco/ronash/pushe/b/a/a;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    return-object v0
.end method
