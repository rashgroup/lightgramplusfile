.class Lorg/telegram/ui/tools/d/b/c/c$1;
.super Ljava/lang/Object;
.source "YearMainFragement.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/d/b/c/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d/b/c/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/b/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/b/c/c$1;->a:Lorg/telegram/ui/tools/d/b/c/c;

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
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b/c/c$1;->a:Lorg/telegram/ui/tools/d/b/c/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/c/c;->a(Lorg/telegram/ui/tools/d/b/c/c;)Lorg/telegram/ui/tools/d/b/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/tools/d/b/c/d;->a(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b/b/a;->c(I)V

    invoke-static {}, Lorg/telegram/ui/tools/d/b/b/a;->g()V

    return-void
.end method
