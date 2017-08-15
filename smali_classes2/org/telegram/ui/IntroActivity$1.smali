.class Lorg/telegram/ui/IntroActivity$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->lastPage:I
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$100(Lorg/telegram/ui/IntroActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$200(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$200(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    # setter for: Lorg/telegram/ui/IntroActivity;->lastPage:I
    invoke-static {v0, v1}, Lorg/telegram/ui/IntroActivity;->access$102(Lorg/telegram/ui/IntroActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$400(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->icons:[I
    invoke-static {v2}, Lorg/telegram/ui/IntroActivity;->access$500(Lorg/telegram/ui/IntroActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->lastPage:I
    invoke-static {v3}, Lorg/telegram/ui/IntroActivity;->access$100(Lorg/telegram/ui/IntroActivity;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    const v3, 0x7f05000f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/IntroActivity$1$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/IntroActivity$1$1;-><init>(Lorg/telegram/ui/IntroActivity$1;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    const v4, 0x7f05000e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/IntroActivity$1$2;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/IntroActivity$1$2;-><init>(Lorg/telegram/ui/IntroActivity$1;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage2:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$400(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$1;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->topImage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$300(Lorg/telegram/ui/IntroActivity;)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
