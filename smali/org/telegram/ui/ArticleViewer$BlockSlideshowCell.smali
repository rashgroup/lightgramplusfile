.class Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockSlideshowCell"
.end annotation


# instance fields
.field private adapter:Landroid/support/v4/view/PagerAdapter;

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

.field private dotsContainer:Landroid/view/View;

.field private innerListView:Landroid/support/v4/view/ViewPager;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    # getter for: Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$8300()Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    # setter for: Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$8302(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    # getter for: Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$8300()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$2;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$3;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Lorg/telegram/ui/ArticleViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    const v1, -0xa0909

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setViewPagerEdgeEffectColor(Landroid/support/v4/view/ViewPager;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->addView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell$4;-><init>(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$8400(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    return-object v0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/high16 v4, 0x41000000    # 8.0f

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getBottom()I

    move-result v0

    const/high16 v1, 0x41b80000    # 23.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v1, p4, p2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v0, :cond_1

    const/high16 v0, 0x439b0000    # 310.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->measure(II)V

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->dotsContainer:Landroid/view/View;

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/lit8 v2, v2, -0x1

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int/2addr v2, v5

    add-int/2addr v2, v4

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_0
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->setMeasuredDimension(II)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->lastCreatedWidth:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->requestLayout()V

    return-void
.end method
