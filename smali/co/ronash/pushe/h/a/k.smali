.class public abstract Lco/ronash/pushe/h/a/k;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/i;
.end method

.method public a(Lco/ronash/pushe/h/a/i;Lco/ronash/pushe/k/l;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "message_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/i;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "request_delivery"

    invoke-virtual {p2, v0}, Lco/ronash/pushe/k/l;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "request_delivery"

    invoke-virtual {p2, v0, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/i;->a(Z)V

    :cond_0
    instance-of v0, p1, Lco/ronash/pushe/h/a/u;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "otk"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lco/ronash/pushe/h/a/u;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "welcome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/u;->h(Z)V

    :goto_0
    const-string/jumbo v0, "av_code"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/u;->e(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v2}, Lco/ronash/pushe/h/a/u;->h(Z)V

    goto :goto_0
.end method
