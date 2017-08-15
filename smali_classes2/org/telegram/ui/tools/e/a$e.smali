.class Lorg/telegram/ui/tools/e/a$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/e/a$e$a;
    }
.end annotation


# instance fields
.field final a:Landroid/widget/Button;

.field final synthetic b:Lorg/telegram/ui/tools/e/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/e/a;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a$e;->b:Lorg/telegram/ui/tools/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/tools/e/a$e;->a:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$e;->b:Lorg/telegram/ui/tools/e/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v0, Lorg/telegram/ui/Components/ColorSelectorDialog;

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$e;->b:Lorg/telegram/ui/tools/e/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/tools/e/a$e$a;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/e/a$e$a;-><init>(Lorg/telegram/ui/tools/e/a$e;)V

    iget-object v3, p0, Lorg/telegram/ui/tools/e/a$e;->b:Lorg/telegram/ui/tools/e/a;

    invoke-static {v3}, Lorg/telegram/ui/tools/e/a;->n(Lorg/telegram/ui/tools/e/a;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    return-void
.end method
