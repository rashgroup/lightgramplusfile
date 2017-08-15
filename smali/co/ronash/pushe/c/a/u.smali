.class public Lco/ronash/pushe/c/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/u;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/a/i;)V
    .locals 3

    check-cast p1, Lco/ronash/pushe/h/a/z;

    iget-object v0, p0, Lco/ronash/pushe/c/a/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "user_sentry_report_dsn"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/z;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "user_sentry_report_percent"

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/z;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/u;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/z;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lco/ronash/pushe/c/a/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    return-void
.end method
