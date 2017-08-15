.class final Lco/ronash/pushe/h;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Lco/ronash/pushe/c/a;

.field final synthetic b:Lco/ronash/pushe/h/a/i;


# direct methods
.method constructor <init>(Lco/ronash/pushe/c/a;Lco/ronash/pushe/h/a/i;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/h;->a:Lco/ronash/pushe/c/a;

    iput-object p2, p0, Lco/ronash/pushe/h;->b:Lco/ronash/pushe/h/a/i;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lco/ronash/pushe/h;->a:Lco/ronash/pushe/c/a;

    iget-object v1, p0, Lco/ronash/pushe/h;->b:Lco/ronash/pushe/h/a/i;

    invoke-interface {v0, v1}, Lco/ronash/pushe/c/a;->a(Lco/ronash/pushe/h/a/i;)V

    return-void
.end method
