.class public Lco/ronash/pushe/h/b/f;
.super Lco/ronash/pushe/h/b/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/b/q;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/o;
    .locals 1

    invoke-virtual {p0, p1}, Lco/ronash/pushe/h/b/f;->b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/b/e;
    .locals 3

    new-instance v0, Lco/ronash/pushe/h/b/e;

    invoke-direct {v0}, Lco/ronash/pushe/h/b/e;-><init>()V

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/h/b/f;->a(Lco/ronash/pushe/h/a;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v1, "t11"

    const-string/jumbo v2, "false"

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/e;->a(Lco/ronash/pushe/h/b/e;Z)Z

    const-string/jumbo v1, "ip"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/e;->a(Lco/ronash/pushe/h/b/e;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "network_type"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/b/e;->b(Lco/ronash/pushe/h/b/e;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method
