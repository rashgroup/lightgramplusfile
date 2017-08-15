.class Lorg/telegram/messenger/MessagesController$95$2$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$95$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$95$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$95$2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x3

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_encrypted_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_encrypted_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_encrypted_messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/SecretChatHelper;->decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v3, v2

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    move v3, v2

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v1, v1

    int-to-long v10, v1

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    :cond_3
    :goto_3
    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    long-to-int v1, v10

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$2;->val$usersDict:Ljava/util/HashMap;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_4

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    :cond_4
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v1, :cond_c

    :cond_5
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    :cond_6
    :goto_4
    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    int-to-long v12, v8

    cmp-long v1, v10, v12

    if-nez v1, :cond_7

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    :cond_7
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$2;->val$usersDict:Ljava/util/HashMap;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController$95$2;->val$chatsDict:Ljava/util/HashMap;

    iget-object v10, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v10, v10, Lorg/telegram/messenger/MessagesController$95$2;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget-object v10, v10, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v10

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v4, v0, v1, v9, v10}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_a
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v1, v4, :cond_b

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :cond_b
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v10, v1

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    goto/16 :goto_3

    :cond_c
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$2;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v1

    :goto_5
    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_d

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v1, v9, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v1, v4, :cond_f

    move v1, v5

    :goto_6
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_4

    :cond_e
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$2;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v1

    goto :goto_5

    :cond_f
    move v1, v2

    goto :goto_6

    :cond_10
    new-instance v0, Lorg/telegram/messenger/MessagesController$95$2$2$1;

    invoke-direct {v0, p0, v6}, Lorg/telegram/messenger/MessagesController$95$2$2$1;-><init>(Lorg/telegram/messenger/MessagesController$95$2$2;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$95$2$2$2;

    invoke-direct {v1, p0, v7}, Lorg/telegram/messenger/MessagesController$95$2$2$2;-><init>(Lorg/telegram/messenger/MessagesController$95$2$2;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SecretChatHelper;->processPendingEncMessages()V

    :cond_11
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_difference;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->seq:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    :goto_7
    if-ge v2, v14, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    # invokes: Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V
    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/MessagesController;->access$5200(Lorg/telegram/messenger/MessagesController;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    :cond_14
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->saveDiffParams(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "received difference with date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " seq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " messages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_Difference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " users = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " chats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " other updates = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceEmpty;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v2, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->seq:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$updates_Difference;->date:I

    sput v0, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    :goto_8
    if-ge v2, v14, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2$2;->this$2:Lorg/telegram/messenger/MessagesController$95$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95$2;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    # invokes: Lorg/telegram/messenger/MessagesController;->processUpdatesQueue(II)V
    invoke-static {v0, v2, v5}, Lorg/telegram/messenger/MessagesController;->access$5200(Lorg/telegram/messenger/MessagesController;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method
