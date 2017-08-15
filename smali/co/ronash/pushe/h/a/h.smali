.class public Lco/ronash/pushe/h/a/h;
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

    new-instance v0, Lco/ronash/pushe/h/a/g;

    invoke-direct {v0}, Lco/ronash/pushe/h/a/g;-><init>()V

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/h/a/h;->a(Lco/ronash/pushe/h/a/i;Lco/ronash/pushe/k/l;)V

    new-instance v1, Lco/ronash/pushe/k/l;

    invoke-direct {v1, p1}, Lco/ronash/pushe/k/l;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Lco/ronash/pushe/h/a/g;->a(Lco/ronash/pushe/h/a/g;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    return-object v0
.end method
