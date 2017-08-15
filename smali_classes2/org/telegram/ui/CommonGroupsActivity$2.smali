.class Lorg/telegram/ui/CommonGroupsActivity$2;
.super Ljava/lang/Object;
.source "CommonGroupsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CommonGroupsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CommonGroupsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CommonGroupsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CommonGroupsActivity$2;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    if-ltz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$2;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$2;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    # getter for: Lorg/telegram/ui/CommonGroupsActivity;->chats:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/CommonGroupsActivity;->access$000(Lorg/telegram/ui/CommonGroupsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "chat_id"

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$2;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    invoke-static {v1, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/CommonGroupsActivity$2;->this$0:Lorg/telegram/ui/CommonGroupsActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/CommonGroupsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0
.end method
