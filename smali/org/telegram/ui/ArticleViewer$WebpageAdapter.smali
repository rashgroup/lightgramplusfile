.class Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebpageAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v1, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v1, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    :cond_b
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v1, :cond_c

    const/16 v0, 0xb

    goto :goto_0

    :cond_c
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v1, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    :cond_d
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v1, :cond_e

    const/16 v0, 0xd

    goto :goto_0

    :cond_e
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v1, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    :cond_f
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v1, :cond_10

    const/16 v0, 0xf

    goto :goto_0

    :cond_10
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v1, :cond_11

    const/16 v0, 0x10

    goto :goto_0

    :cond_11
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v1, :cond_12

    const/16 v0, 0x11

    goto :goto_0

    :cond_12
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 v0, 0x5a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    goto :goto_1

    :pswitch_3
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;)V

    goto :goto_1

    :pswitch_5
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-nez p2, :cond_1

    move v3, v4

    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_2

    :goto_3
    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;ZZ)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_2

    :cond_2
    move v4, v5

    goto :goto_3

    :pswitch_6
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;)V

    goto :goto_1

    :pswitch_8
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;)V

    goto :goto_1

    :pswitch_9
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez p2, :cond_3

    move v3, v4

    :goto_4
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_4

    :goto_5
    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZ)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_1

    :cond_3
    move v3, v5

    goto :goto_4

    :cond_4
    move v4, v5

    goto :goto_5

    :pswitch_a
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;)V

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockListCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockListCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)V

    goto/16 :goto_1

    :pswitch_d
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;)V

    goto/16 :goto_1

    :pswitch_e
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;)V

    goto/16 :goto_1

    :pswitch_f
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;)V

    goto/16 :goto_1

    :pswitch_10
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V

    goto/16 :goto_1

    :pswitch_11
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;)V

    goto/16 :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 9

    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;-><init>(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/content/Context;)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x42080000    # 34.0f

    const/16 v2, 0x33

    const/high16 v4, 0x41200000    # 10.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x877d73

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, -0x121010

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string/jumbo v1, "PreviewFeedback"

    const v2, 0x7f08045d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v8, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    move-object v1, v7

    :goto_0
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    :pswitch_0
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_9
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_a
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_b
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockListCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockListCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
