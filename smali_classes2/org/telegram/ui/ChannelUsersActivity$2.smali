.class Lorg/telegram/ui/ChannelUsersActivity$2;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "onlyUsers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "destroyAfterSelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "returnAsResult"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "needForwardCount"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "selectAlertString"

    const-string/jumbo v2, "ChannelAddTo"

    const v3, 0x7f080104

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Lorg/telegram/ui/ChannelUsersActivity$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelUsersActivity$2$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$2;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    :cond_1
    if-eqz v0, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "user_id"

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v1, Lorg/telegram/ui/GroupInviteActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v2}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/GroupInviteActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eq p2, v2, :cond_5

    if-ne p2, v4, :cond_b

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-eqz v5, :cond_2

    if-ne p2, v2, :cond_9

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v0, :cond_9

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    move v0, v2

    :goto_2
    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v1

    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/MessagesController;->toogleChannelInvites(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    move v4, v3

    :goto_3
    if-ge v4, v6, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lorg/telegram/ui/Cells/RadioCell;

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/RadioCell;

    if-nez v7, :cond_6

    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v1, :cond_7

    :cond_6
    if-ne v7, v2, :cond_a

    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v1, :cond_a

    :cond_7
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_9
    if-ne p2, v4, :cond_d

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v0, :cond_d

    iput-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    move v0, v2

    goto :goto_2

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "onlyUsers"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "destroyAfterSelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "returnAsResult"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "needForwardCount"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "addingToChannel"

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v4

    if-nez v4, :cond_c

    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "selectAlertString"

    const-string/jumbo v2, "ChannelAddUserAdminAlert"

    const v3, 0x7f080105

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Lorg/telegram/ui/ChannelUsersActivity$2$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelUsersActivity$2$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$2;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    :cond_c
    move v2, v3

    goto :goto_5

    :cond_d
    move v0, v3

    goto/16 :goto_2
.end method
