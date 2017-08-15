.class public Lorg/telegram/ui/Components/StickerMasksView;
.super Landroid/widget/FrameLayout;
.source "StickerMasksView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;,
        Lorg/telegram/ui/Components/StickerMasksView$Listener;
    }
.end annotation


# instance fields
.field private currentType:I

.field private lastNotifyWidth:I

.field private listener:Lorg/telegram/ui/Components/StickerMasksView$Listener;

.field private recentStickers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentTabBum:I

.field private scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private stickerSets:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickersEmptyView:Landroid/widget/TextView;

.field private stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

.field private stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private stickersTabOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v8

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickerSets:[Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v8

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentStickers:[Ljava/util/ArrayList;

    iput v8, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentTabBum:I

    const v0, -0xddddde

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/StickerMasksView;->setBackgroundColor(I)V

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/StickerMasksView;->setClickable(Z)V

    invoke-static {v5}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    invoke-static {v8}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    new-instance v0, Lorg/telegram/ui/Components/StickerMasksView$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/StickerMasksView$1;-><init>(Lorg/telegram/ui/Components/StickerMasksView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    new-instance v1, Lorg/telegram/ui/Components/StickerMasksView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickerMasksView$2;-><init>(Lorg/telegram/ui/Components/StickerMasksView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/StickerMasksView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/StickerMasksView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickerMasksView$3;-><init>(Lorg/telegram/ui/Components/StickerMasksView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lorg/telegram/ui/Components/StickerMasksView$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerMasksView$4;-><init>(Lorg/telegram/ui/Components/StickerMasksView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const v1, -0xa0909

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    iget-object v7, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Components/StickerMasksView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersEmptyView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersEmptyView:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersEmptyView:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersEmptyView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x11

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Components/StickerMasksView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const v1, -0x9d4018

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const v1, -0xe5e5e6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/StickerMasksView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->updateStickerTabs()V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v1, Lorg/telegram/ui/Components/StickerMasksView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickerMasksView$5;-><init>(Lorg/telegram/ui/Components/StickerMasksView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/StickerMasksView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickerMasksView$6;-><init>(Lorg/telegram/ui/Components/StickerMasksView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/StickerMasksView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->reloadStickersAdapter()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/StickerMasksView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->checkDocuments()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/StickerMasksView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->checkPanels()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/StickerMasksView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentTabBum:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/StickerMasksView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersTabOffset:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickerSets:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/StickerMasksView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->checkScroll()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$Listener;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->listener:Lorg/telegram/ui/Components/StickerMasksView$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/StickerMasksView;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/StickerMasksView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentStickers:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/StickerMasksView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->updateStickerTabs()V

    return-void
.end method

.method private checkDocuments()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentStickers:[Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentStickers:[Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    invoke-static {v3}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentStickers:[Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->updateStickerTabs()V

    :cond_1
    return-void
.end method

.method private checkPanels()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentTabBum:I

    if-lez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentTabBum:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersTabOffset:I

    goto :goto_1
.end method

.method private checkScroll()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/StickerMasksView;->checkStickersScroll(I)V

    goto :goto_0
.end method

.method private checkStickersScroll(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentTabBum:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentTabBum:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersTabOffset:I

    goto :goto_1
.end method

.method private reloadStickersAdapter()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    :cond_1
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    return-void
.end method

.method private updateStickerTabs()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentTabBum:I

    iput v2, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersTabOffset:I

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->removeTabs()V

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerMasksView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v1, "chat_emojiPanelIcon"

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersEmptyView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoStickers"

    const v4, 0x7f080364

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentStickers:[Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersTabOffset:I

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentTabBum:I

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersTabOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersTabOffset:I

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerMasksView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f020143

    const-string/jumbo v5, "chat_emojiPanelMasksIcon"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "chat_emojiPanelMasksIconSelected"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickerSets:[Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v5, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickerMasksView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v1, "chat_emojiPanelIcon"

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColorByKey(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersEmptyView:Landroid/widget/TextView;

    const-string/jumbo v1, "NoMasks"

    const v4, 0x7f08034f

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickerSets:[Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickerSets:[Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickerSets:[Ljava/util/ArrayList;

    iget v5, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Document;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    if-eqz v3, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->checkPanels()V

    goto/16 :goto_0
.end method


# virtual methods
.method public addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentStickers:[Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->recentStickers:[Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    invoke-static {v3}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_2
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->updateStickerTabs()V

    goto :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    if-ne p1, v0, :cond_1

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->updateStickerTabs()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->reloadStickersAdapter()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->checkPanels()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    if-ne p1, v0, :cond_0

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->checkDocuments()V

    goto :goto_0
.end method

.method public getCurrentType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->currentType:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    new-instance v0, Lorg/telegram/ui/Components/StickerMasksView$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerMasksView$7;-><init>(Lorg/telegram/ui/Components/StickerMasksView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    sub-int v0, p4, p2

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksView;->lastNotifyWidth:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->reloadStickersAdapter()V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/StickerMasksView$Listener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksView;->listener:Lorg/telegram/ui/Components/StickerMasksView$Listener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->updateStickerTabs()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->reloadStickersAdapter()V

    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksView;->checkDocuments()V

    invoke-static {v2, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V

    invoke-static {v3, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V

    :cond_0
    return-void
.end method
