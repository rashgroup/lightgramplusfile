.class Lorg/telegram/ui/FeaturedStickersActivity$3;
.super Ljava/lang/Object;
.source "FeaturedStickersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FeaturedStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FeaturedStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FeaturedStickersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->stickersStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/FeaturedStickersActivity;->access$000(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    # getter for: Lorg/telegram/ui/FeaturedStickersActivity;->stickersEndRow:I
    invoke-static {v0}, Lorg/telegram/ui/FeaturedStickersActivity;->access$100(Lorg/telegram/ui/FeaturedStickersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/FeaturedStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getFeaturedStickerSets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v0, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    :goto_0
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v0, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/FeaturedStickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    new-instance v1, Lorg/telegram/ui/FeaturedStickersActivity$3$1;

    invoke-direct {v1, p0, p1, v6}, Lorg/telegram/ui/FeaturedStickersActivity$3$1;-><init>(Lorg/telegram/ui/FeaturedStickersActivity$3;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickersAlert;->setInstallDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/FeaturedStickersActivity$3;->this$0:Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/FeaturedStickersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void

    :cond_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    goto :goto_0
.end method
