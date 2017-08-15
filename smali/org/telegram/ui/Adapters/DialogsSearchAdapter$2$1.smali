.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->val$currentReqId:I

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I
    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$300(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v6, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    move v3, v4

    :goto_0
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    invoke-direct {v5, v1, v7, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v8

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v2

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    invoke-virtual {v2, v7, v8, v9}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v2, v5, :cond_3

    move v2, v6

    :goto_2
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v5, v2

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_7

    :goto_3
    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z
    invoke-static {v1, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$502(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I
    invoke-static {v0, v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$602(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I

    return-void

    :cond_7
    move v6, v4

    goto :goto_3
.end method
