.class Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "FeaturedStickersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->installingStickerSets:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/FeaturedStickersActivity;->access$200(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->installingStickerSets:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/FeaturedStickersActivity;->access$200(Lorg/telegram/ui/FeaturedStickersActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/FeaturedStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;

    iget-object v4, v4, Lorg/telegram/ui/FeaturedStickersActivity$ListAdapter;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetCell;->setDrawProgress(Z)V

    goto :goto_0
.end method
