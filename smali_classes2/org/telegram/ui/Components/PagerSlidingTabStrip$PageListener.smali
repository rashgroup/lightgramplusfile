.class Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;-><init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$300(Lorg/telegram/ui/Components/PagerSlidingTabStrip;II)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # setter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$102(Lorg/telegram/ui/Components/PagerSlidingTabStrip;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # setter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v0, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$402(Lorg/telegram/ui/Components/PagerSlidingTabStrip;F)F

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$500(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    # invokes: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$300(Lorg/telegram/ui/Components/PagerSlidingTabStrip;II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$500(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->access$500(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v0, p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    return-void
.end method
