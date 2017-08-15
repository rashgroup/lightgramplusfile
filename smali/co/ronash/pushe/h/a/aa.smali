.class public Lco/ronash/pushe/h/a/aa;
.super Lco/ronash/pushe/h/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/i;
    .locals 4

    const/16 v3, 0x64

    new-instance v0, Lco/ronash/pushe/h/a/z;

    invoke-direct {v0}, Lco/ronash/pushe/h/a/z;-><init>()V

    const-string/jumbo v1, "user_dsn"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "user_percent"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;I)I

    invoke-static {v0}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;)I

    move-result v1

    if-gt v1, v3, :cond_0

    invoke-static {v0}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    invoke-static {v0, v3}, Lco/ronash/pushe/h/a/z;->a(Lco/ronash/pushe/h/a/z;I)I

    :cond_1
    return-object v0
.end method
