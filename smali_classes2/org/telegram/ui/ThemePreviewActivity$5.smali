.class Lorg/telegram/ui/ThemePreviewActivity$5;
.super Ljava/lang/Object;
.source "ThemePreviewActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

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

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$5;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    # getter for: Lorg/telegram/ui/ThemePreviewActivity;->dotsContainer:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$1400(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
