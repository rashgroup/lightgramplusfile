.class public Lco/ronash/pushe/h/a/x;
.super Lco/ronash/pushe/h/a/i;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/a/x;->a:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h/a/x;->b:Ljava/util/List;

    return-void
.end method

.method public d()Lco/ronash/pushe/h/a/j;
    .locals 1

    sget-object v0, Lco/ronash/pushe/h/a/j;->b:Lco/ronash/pushe/h/a/j;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/h/a/x;->a:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/h/a/x;->b:Ljava/util/List;

    return-object v0
.end method
