.class Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;
.super Ljava/lang/Object;
.source "JoinGroupAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert$2$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v4}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "chat_id"

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v1, v1, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v0}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v2}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->this$1:Lorg/telegram/ui/Components/JoinGroupAlert$2;

    iget-object v1, v1, Lorg/telegram/ui/Components/JoinGroupAlert$2;->this$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    # getter for: Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v1}, Lorg/telegram/ui/Components/JoinGroupAlert;->access$100(Lorg/telegram/ui/Components/JoinGroupAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$2$1$1;->this$2:Lorg/telegram/ui/Components/JoinGroupAlert$2$1;

    iget-object v2, v2, Lorg/telegram/ui/Components/JoinGroupAlert$2$1;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    goto :goto_0
.end method
