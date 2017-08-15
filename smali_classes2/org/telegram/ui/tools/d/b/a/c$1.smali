.class Lorg/telegram/ui/tools/d/b/a/c$1;
.super Ljava/lang/Object;
.source "MonthMainFragement.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/d/b/a/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d/b/a/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/b/a/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/b/a/c$1;->a:Lorg/telegram/ui/tools/d/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/tools/d/b/a/c;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/tools/d/b/a/c$1;->a:Lorg/telegram/ui/tools/d/b/a/c;

    invoke-static {v2}, Lorg/telegram/ui/tools/d/b/a/c;->a(Lorg/telegram/ui/tools/d/b/a/c;)Lorg/telegram/ui/tools/d/b/a/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/ui/tools/d/b/a/d;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
