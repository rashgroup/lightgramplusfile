.class public Lco/ronash/pushe/c/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/a/i;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lco/ronash/pushe/c/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/j;->a(Landroid/content/Context;)Lco/ronash/pushe/j;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/c/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/j;->a(Landroid/content/Context;I)V

    const-string/jumbo v0, "Command 23 executed and GCM Token removed, registering again"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lco/ronash/pushe/log/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/c/a/e;

    invoke-direct {v1, p0}, Lco/ronash/pushe/c/a/e;-><init>(Lco/ronash/pushe/c/a/d;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method
