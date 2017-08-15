.class Lorg/telegram/ui/LaunchActivity$9$1$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LaunchActivity$9$1;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$9$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$9$1;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGameShortName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGameShortName;-><init>()V

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->id:Lorg/telegram/tgnet/TLRPC$InputGame;

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->id:Lorg/telegram/tgnet/TLRPC$InputGame;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$9$1;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$9;->val$game:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputGame;->short_name:Ljava/lang/String;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->id:Lorg/telegram/tgnet/TLRPC$InputGame;

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputGame;->bot_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    long-to-int v0, p2

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->sendGame(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;JJ)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "scrollToTopOnResume"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    long-to-int v1, p2

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v2, v2

    if-eqz v1, :cond_4

    if-ne v2, v8, :cond_2

    const-string/jumbo v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$9$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$9$1;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v8, v9, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    :cond_1
    return-void

    :cond_2
    if-lez v1, :cond_3

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    if-gez v1, :cond_0

    const-string/jumbo v2, "chat_id"

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "enc_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
