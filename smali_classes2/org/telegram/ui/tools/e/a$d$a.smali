.class Lorg/telegram/ui/tools/e/a$d$a;
.super Ljava/lang/Object;
.source "PPPP.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/e/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/e/a$d;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/e/a$d;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a$d$a;->a:Lorg/telegram/ui/tools/e/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$d$a;->a:Lorg/telegram/ui/tools/e/a$d;

    iget-object v0, v0, Lorg/telegram/ui/tools/e/a$d;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0, p1}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;I)I

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$d$a;->a:Lorg/telegram/ui/tools/e/a$d;

    iget-object v0, v0, Lorg/telegram/ui/tools/e/a$d;->a:Landroid/widget/Button;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$d$a;->a:Lorg/telegram/ui/tools/e/a$d;

    iget-object v1, v1, Lorg/telegram/ui/tools/e/a$d;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/e/a;->n(Lorg/telegram/ui/tools/e/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$d$a;->a:Lorg/telegram/ui/tools/e/a$d;

    iget-object v0, v0, Lorg/telegram/ui/tools/e/a$d;->b:Lorg/telegram/ui/tools/e/a;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$d$a;->a:Lorg/telegram/ui/tools/e/a$d;

    iget-object v1, v1, Lorg/telegram/ui/tools/e/a$d;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/e/a;->n(Lorg/telegram/ui/tools/e/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/e/a;->a(I)V

    return-void
.end method
