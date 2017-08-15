.class Lorg/telegram/ui/ChannelCreateActivity$13$1;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity$13;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity$13;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iput-object p2, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # setter for: Lorg/telegram/ui/ChannelCreateActivity;->loadingAdminedChannels:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/ChannelCreateActivity;->access$2302(Lorg/telegram/ui/ChannelCreateActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2500(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    move v3, v2

    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    new-instance v5, Lorg/telegram/ui/Cells/AdminedChannelCell;

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/ChannelCreateActivity$13$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelCreateActivity$13$1$1;-><init>(Lorg/telegram/ui/ChannelCreateActivity$13$1;)V

    invoke-direct {v5, v1, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v5, v1, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminedChannelCells:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$2400(Lorg/telegram/ui/ChannelCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v1, v1, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$2600(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v4, -0x1

    const/16 v6, 0x48

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$13$1;->this$1:Lorg/telegram/ui/ChannelCreateActivity$13;

    iget-object v0, v0, Lorg/telegram/ui/ChannelCreateActivity$13;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # invokes: Lorg/telegram/ui/ChannelCreateActivity;->updatePrivatePublic()V
    invoke-static {v0}, Lorg/telegram/ui/ChannelCreateActivity;->access$1800(Lorg/telegram/ui/ChannelCreateActivity;)V

    goto/16 :goto_0
.end method
