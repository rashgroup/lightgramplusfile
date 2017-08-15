.class Lorg/telegram/ui/tools/g/c$e;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/g/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/g/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/g/c$e;->a:Lorg/telegram/ui/tools/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$e;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->g(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    :goto_0
    if-nez p2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$e;->a:Lorg/telegram/ui/tools/g/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/g/c;->a(Lorg/telegram/ui/tools/g/c;I)I

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$e;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->b(Lorg/telegram/ui/tools/g/c;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$e;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/g/c;->g(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$e;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0, v2}, Lorg/telegram/ui/tools/g/c;->a(Lorg/telegram/ui/tools/g/c;I)I

    goto :goto_1

    :cond_3
    if-ne p2, v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$e;->a:Lorg/telegram/ui/tools/g/c;

    invoke-static {v0, v3}, Lorg/telegram/ui/tools/g/c;->a(Lorg/telegram/ui/tools/g/c;I)I

    goto :goto_1

    :cond_4
    if-ne p2, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c$e;->a:Lorg/telegram/ui/tools/g/c;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/g/c;->a(Lorg/telegram/ui/tools/g/c;I)I

    goto :goto_1
.end method
