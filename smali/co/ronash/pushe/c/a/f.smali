.class public Lco/ronash/pushe/c/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lco/ronash/pushe/c/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/c/a/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lco/ronash/pushe/h/a/i;)V
    .locals 3

    sget-object v0, Lco/ronash/pushe/h/a/j;->j:Lco/ronash/pushe/h/a/j;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/i;->d()Lco/ronash/pushe/h/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lco/ronash/pushe/c/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lco/ronash/pushe/d/c;->a(Landroid/content/Context;)Lco/ronash/pushe/d/c;

    move-result-object v0

    const-string/jumbo v1, "notif_off"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/d/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lco/ronash/pushe/h/a/g;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/g;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/ronash/pushe/c/a/f;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lco/ronash/pushe/h/a/g;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lco/ronash/pushe/c/a/f;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lco/ronash/pushe/h/a/g;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {}, Lco/ronash/pushe/activities/PopupDialogActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/c/a/f;->a:Landroid/content/Context;

    const-class v2, Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lco/ronash/pushe/h/a/g;->e()Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-static {v1}, Lco/ronash/pushe/k/m;->a(Lco/ronash/pushe/k/l;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "co.ronash.pushe.OPEN_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lco/ronash/pushe/c/a/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
