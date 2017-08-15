.class Lorg/telegram/ui/StickersActivity$2;
.super Ljava/lang/Object;
.source "StickersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersEndRow:I
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$300(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # invokes: Lorg/telegram/ui/StickersActivity;->sendReorder()V
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$400(Lorg/telegram/ui/StickersActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->currentType:I
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->stickersStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/StickersActivity;->access$200(Lorg/telegram/ui/StickersActivity;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/StickersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/StickersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->featuredRow:I
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$600(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # invokes: Lorg/telegram/ui/StickersActivity;->sendReorder()V
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$400(Lorg/telegram/ui/StickersActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    new-instance v1, Lorg/telegram/ui/FeaturedStickersActivity;

    invoke-direct {v1}, Lorg/telegram/ui/FeaturedStickersActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->archivedRow:I
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$700(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # invokes: Lorg/telegram/ui/StickersActivity;->sendReorder()V
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$400(Lorg/telegram/ui/StickersActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    new-instance v1, Lorg/telegram/ui/ArchivedStickersActivity;

    iget-object v2, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/StickersActivity;->access$500(Lorg/telegram/ui/StickersActivity;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ArchivedStickersActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    # getter for: Lorg/telegram/ui/StickersActivity;->masksRow:I
    invoke-static {v0}, Lorg/telegram/ui/StickersActivity;->access$800(Lorg/telegram/ui/StickersActivity;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/StickersActivity$2;->this$0:Lorg/telegram/ui/StickersActivity;

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
