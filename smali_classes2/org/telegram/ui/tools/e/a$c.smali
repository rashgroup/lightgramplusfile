.class Lorg/telegram/ui/tools/e/a$c;
.super Ljava/lang/Object;
.source "PPPP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/e/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/e/a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a$c;->a:Lorg/telegram/ui/tools/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$c;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->k(Lorg/telegram/ui/tools/e/a;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$c;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->l(Lorg/telegram/ui/tools/e/a;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$c;->a:Lorg/telegram/ui/tools/e/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$c;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->m(Lorg/telegram/ui/tools/e/a;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$c;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->m(Lorg/telegram/ui/tools/e/a;)Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
