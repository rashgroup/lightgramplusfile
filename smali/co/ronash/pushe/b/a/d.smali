.class public Lco/ronash/pushe/b/a/d;
.super Lco/ronash/pushe/b/a/b;


# annotations
.annotation runtime Lco/ronash/pushe/task/a/a;
    c = 0x1499700L
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
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lco/ronash/pushe/c/a/g;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/g;->a()Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "t5"

    invoke-virtual {p0, p1, v0, v1}, Lco/ronash/pushe/b/a/d;->a(Landroid/content/Context;Lco/ronash/pushe/k/l;Ljava/lang/String;)V

    sget-object v0, Lco/ronash/pushe/task/c;->a:Lco/ronash/pushe/task/c;

    return-object v0
.end method
