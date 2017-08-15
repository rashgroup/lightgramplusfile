.class Lorg/telegram/messenger/MessagesController$57$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$57;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$57;

.field final synthetic val$chatsDict:Ljava/util/HashMap;

.field final synthetic val$dialogsToReload:Ljava/util/ArrayList;

.field final synthetic val$new_dialogMessage:Ljava/util/HashMap;

.field final synthetic val$new_dialogs_dict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$57;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$new_dialogs_dict:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$new_dialogMessage:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$chatsDict:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$dialogsToReload:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$loadType:I

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$57;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/messenger/MessagesController;->applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$4600(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/query/DraftQuery;->loadDrafts()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$loadType:I

    if-ne v0, v4, :cond_2

    move v0, v4

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$loadType:I

    if-ne v0, v4, :cond_3

    move v0, v4

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$encChats:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    move v1, v5

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$encChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$encChats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v2, :cond_1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getMyLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-ge v2, v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v8}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v2, v0, v4}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$migrate:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v5, v0, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$migrate:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    move v6, v0

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$new_dialogs_dict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v7, v5

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$57;->val$migrate:Z

    if-eqz v2, :cond_7

    if-eqz v6, :cond_7

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-lt v2, v6, :cond_6

    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$57;->val$loadType:I

    if-eq v3, v4, :cond_8

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_draftMessage;

    if-eqz v3, :cond_8

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    invoke-static {v10, v11, v3, v8, v5}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    :cond_8
    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v1, v2, v12

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move v0, v4

    :goto_5
    move v7, v0

    goto/16 :goto_4

    :cond_a
    move v6, v5

    goto/16 :goto_3

    :cond_b
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$57;->val$loadType:I

    if-eq v3, v4, :cond_c

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    :cond_c
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_d

    iget-boolean v10, v3, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v10, :cond_e

    :cond_d
    if-eqz v3, :cond_e

    iget v10, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lez v10, :cond_11

    :cond_e
    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-lt v10, v2, :cond_14

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v1, v10, v12

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v3, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    move v0, v7

    goto/16 :goto_5

    :cond_11
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-boolean v10, v3, Lorg/telegram/messenger/MessageObject;->deleted:Z

    if-nez v10, :cond_12

    if-eqz v2, :cond_12

    iget-object v10, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v11, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v11, v11, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-le v10, v11, :cond_14

    :cond_12
    iget-object v10, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v10, v10, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v10, v10, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_13

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_13

    iget-object v0, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    move v0, v7

    goto/16 :goto_5

    :cond_15
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsPosh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUnread:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$migrate:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$chatsDict:Ljava/util/HashMap;

    :goto_6
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$loadType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$migrate:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$57;->val$count:I

    if-eq v0, v2, :cond_1e

    :cond_16
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$loadType:I

    if-nez v0, :cond_1e

    move v0, v4

    :goto_7
    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$fromCache:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$57;->val$count:I

    if-eq v0, v2, :cond_1f

    :cond_17
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$loadType:I

    if-nez v0, :cond_1f

    move v0, v4

    :goto_8
    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->serverDialogsEndReached:Z

    :cond_18
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/MessagesController$57$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$57$2$1;-><init>(Lorg/telegram/messenger/MessagesController$57$2;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$migrate:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$57;->val$count:I

    if-eq v0, v2, :cond_20

    :cond_19
    move v0, v4

    :goto_9
    iput-boolean v0, v1, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$migrate:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$offset:I

    sput v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    # setter for: Lorg/telegram/messenger/MessagesController;->migratingDialogs:Z
    invoke-static {v0, v5}, Lorg/telegram/messenger/MessagesController;->access$4502(Lorg/telegram/messenger/MessagesController;Z)Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1b
    :goto_a
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    sget v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    sget v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    sget v4, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    sget v5, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    sget-wide v6, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    # invokes: Lorg/telegram/messenger/MessagesController;->migrateDialogs(IIIIIJ)V
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->access$4700(Lorg/telegram/messenger/MessagesController;IIIIIJ)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$dialogsToReload:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$57$2;->val$dialogsToReload:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/messenger/MessagesController;->reloadDialogsReadValue(Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v12, v13}, Lorg/telegram/messenger/MessagesController;->access$4800(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    :cond_1c
    return-void

    :cond_1d
    move-object v0, v8

    goto/16 :goto_6

    :cond_1e
    move v0, v5

    goto/16 :goto_7

    :cond_1f
    move v0, v5

    goto/16 :goto_8

    :cond_20
    move v0, v5

    goto :goto_9

    :cond_21
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->generateUpdateMessage()V

    if-nez v7, :cond_1b

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$57;->val$loadType:I

    if-ne v0, v4, :cond_1b

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$57;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$57$2;->this$1:Lorg/telegram/messenger/MessagesController$57;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$57;->val$count:I

    invoke-virtual {v0, v5, v1, v5}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    goto :goto_a
.end method
