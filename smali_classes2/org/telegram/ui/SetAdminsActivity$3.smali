.class Lorg/telegram/ui/SetAdminsActivity$3;
.super Ljava/lang/Object;
.source "SetAdminsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SetAdminsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 7

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$700(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    if-lt p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersEndRow:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$800(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    if-ge p2, v0, :cond_a

    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v5}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$902(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-result-object v5

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    if-ne v0, v6, :cond_5

    :goto_1
    if-eq v1, v3, :cond_4

    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-nez v0, :cond_4

    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$1200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v3}, Lorg/telegram/ui/SetAdminsActivity;->access$1200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$200(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v3}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->searchAdapter:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$500(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    move-result-object v1

    # getter for: Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$1300(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v1, :cond_8

    :cond_3
    move v1, v4

    :goto_3
    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v3}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v3

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-nez v0, :cond_9

    :goto_4
    invoke-virtual {v1, v3, v5, v4}, Lorg/telegram/messenger/MessagesController;->toggleUserAdmin(IIZ)V

    :cond_4
    :goto_5
    return-void

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->usersStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$700(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move-object v5, v0

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    move v4, v2

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->allAdminsRow:I
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$1400(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v3}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    # setter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0, v1}, Lorg/telegram/ui/SetAdminsActivity;->access$902(Lorg/telegram/ui/SetAdminsActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v0, :cond_b

    move v0, v4

    :goto_6
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v0, :cond_c

    :goto_7
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat_id:I
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$1000(Lorg/telegram/ui/SetAdminsActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SetAdminsActivity$3;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->chat:Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v2}, Lorg/telegram/ui/SetAdminsActivity;->access$900(Lorg/telegram/ui/SetAdminsActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->toggleAdminMode(IZ)V

    goto/16 :goto_5

    :cond_b
    move v0, v2

    goto :goto_6

    :cond_c
    move v4, v2

    goto :goto_7

    :cond_d
    move v1, v3

    goto/16 :goto_1
.end method
