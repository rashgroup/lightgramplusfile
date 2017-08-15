.class Lorg/telegram/ui/tools/d/b/a/a$1;
.super Ljava/lang/Object;
.source "MonthAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/d/b/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lorg/telegram/ui/tools/d/b/a/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/b/a/a;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->c:Lorg/telegram/ui/tools/d/b/a/a;

    iput p2, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->a:I

    iput-object p3, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x106000d

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->d()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->d()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->c:Lorg/telegram/ui/tools/d/b/a/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b/a/a;->a(Lorg/telegram/ui/tools/d/b/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->d()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->c:Lorg/telegram/ui/tools/d/b/a/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b/a/a;->a(Lorg/telegram/ui/tools/d/b/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->e()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->e()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->c:Lorg/telegram/ui/tools/d/b/a/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b/a/a;->a(Lorg/telegram/ui/tools/d/b/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->a:I

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/a;->a(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->c:Lorg/telegram/ui/tools/d/b/a/a;

    iget v0, v0, Lorg/telegram/ui/tools/d/b/a/a;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/a;->b(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/a;->a(Landroid/widget/TextView;)V

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->g()V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->b:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/tools/d/b/a;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/a/a$1;->c:Lorg/telegram/ui/tools/d/b/a/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/a/a;->a(Lorg/telegram/ui/tools/d/b/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/c;->a(Landroid/content/Context;)V

    return-void
.end method
