.class public Lco/ronash/pushe/h/a/ae;
.super Lco/ronash/pushe/h/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/i;
    .locals 2

    new-instance v0, Lco/ronash/pushe/h/a/ad;

    invoke-direct {v0}, Lco/ronash/pushe/h/a/ad;-><init>()V

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/h/a/ae;->a(Lco/ronash/pushe/h/a/i;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/a/ad;->a(Lco/ronash/pushe/h/a/ad;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "message_id"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/a/ad;->b(Lco/ronash/pushe/h/a/ad;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method
