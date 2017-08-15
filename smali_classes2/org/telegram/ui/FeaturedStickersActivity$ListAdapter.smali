.class Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FeaturedStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FeaturedStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/FeaturedStickersActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/FeaturedStickersActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/FeaturedStickersActivity;->access$300(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->stickersStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->access$000(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->stickersEndRow:I
    invoke-static {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->access$100(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v1

    if-ge p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->stickersShadowRow:I
    invoke-static {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->access$500(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p2, v2, :cond_1

    move v2, v3

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->unreadStickers:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/FeaturedStickersActivity;->access$400(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->unreadStickers:Ljava/util/ArrayList;
    invoke-static {v5}, Lorg/telegram/ui/FeaturedStickersActivity;->access$400(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setStickersSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;ZZ)V

    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->installingStickerSets:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/FeaturedStickersActivity;->access$200(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->installingStickerSets:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/FeaturedStickersActivity;->access$200(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setDrawProgress(Z)V

    :goto_2
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setDrawProgress(Z)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    :pswitch_0
    new-instance v1, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    iget-object v0, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    new-instance v2, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0200e2

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
