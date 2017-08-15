.class Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockSubheaderCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textX:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textY:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ArticleViewer;->access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->setMeasuredDimension(II)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->lastCreatedWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->requestLayout()V

    return-void
.end method
