.class Lco/ronash/pushe/c/a/e;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a/d;


# direct methods
.method constructor <init>(Lco/ronash/pushe/c/a/d;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/c/a/e;->a:Lco/ronash/pushe/c/a/d;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lco/ronash/pushe/c/a/o;

    invoke-direct {v0, p1}, Lco/ronash/pushe/c/a/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lco/ronash/pushe/c/a/o;->a()V

    return-void
.end method
