.class Lorg/telegram/ui/Components/StickerMasksView$5;
.super Ljava/lang/Object;
.source "StickerMasksView.java"

# interfaces
.implements Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/StickerMasksView;->currentType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$602(Lorg/telegram/ui/Components/StickerMasksView;I)I

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->listener:Lorg/telegram/ui/Components/StickerMasksView$Listener;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$500(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->listener:Lorg/telegram/ui/Components/StickerMasksView$Listener;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$500(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/StickerMasksView$Listener;->onTypeChanged()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->recentStickers:[Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$700(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->currentType:I
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$800(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # invokes: Lorg/telegram/ui/Components/StickerMasksView;->updateStickerTabs()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$900(Lorg/telegram/ui/Components/StickerMasksView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # invokes: Lorg/telegram/ui/Components/StickerMasksView;->reloadStickersAdapter()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$1000(Lorg/telegram/ui/Components/StickerMasksView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # invokes: Lorg/telegram/ui/Components/StickerMasksView;->checkDocuments()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$1100(Lorg/telegram/ui/Components/StickerMasksView;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # invokes: Lorg/telegram/ui/Components/StickerMasksView;->checkPanels()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$1200(Lorg/telegram/ui/Components/StickerMasksView;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # setter for: Lorg/telegram/ui/Components/StickerMasksView;->currentType:I
    invoke-static {v0, v5}, Lorg/telegram/ui/Components/StickerMasksView;->access$602(Lorg/telegram/ui/Components/StickerMasksView;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->recentTabBum:I
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$1300(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$800(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickersTabOffset:I
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1400(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickerSets:[Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$1500(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickerSets:[Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$1500(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->currentType:I
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickersLayoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksView;->access$800(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;
    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksView;->access$100(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->stickerSets:[Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksView;->access$1500(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # getter for: Lorg/telegram/ui/Components/StickerMasksView;->currentType:I
    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->getPositionForPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I

    move-result v0

    invoke-virtual {v1, v0, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$5;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    # invokes: Lorg/telegram/ui/Components/StickerMasksView;->checkScroll()V
    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksView;->access$1600(Lorg/telegram/ui/Components/StickerMasksView;)V

    goto :goto_1
.end method
