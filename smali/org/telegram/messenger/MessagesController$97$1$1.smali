.class Lorg/telegram/messenger/MessagesController$97$1$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$97$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$97$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$97$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/messenger/MessagesController;->applyDialogsNotificationsSettings(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$4600(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v4, v8

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    if-nez v4, :cond_3

    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->val$order:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->val$order:Ljava/util/ArrayList;

    move-object v4, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    const/4 v3, 0x0

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->val$newPinnedOrder:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->users:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->chats:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    const/4 v0, 0x0

    move v14, v0

    move v0, v3

    move v3, v14

    :goto_4
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-wide v10, v1, Lorg/telegram/messenger/MessagesController$97;->val$newDialogId:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-eqz v1, :cond_8

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    :cond_6
    :goto_5
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_peerDialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    :cond_7
    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v1, :cond_a

    const/4 v9, 0x1

    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iput v9, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    invoke-virtual {v1, v10, v11, v0}, Lorg/telegram/messenger/MessagesStorage;->setDialogPinned(JI)V

    move v1, v5

    :goto_6
    const/4 v5, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v5

    move v5, v1

    goto/16 :goto_4

    :cond_8
    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v1, v10, :cond_6

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    if-ne v1, v9, :cond_9

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    goto :goto_5

    :cond_9
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    goto/16 :goto_5

    :cond_a
    const/4 v5, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->val$new_dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_b

    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Ljava/util/HashMap;

    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move v1, v5

    goto/16 :goto_6

    :cond_c
    move v0, v3

    :cond_d
    if-eqz v0, :cond_f

    if-eqz v5, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97$1;->this$1:Lorg/telegram/messenger/MessagesController$97;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$97;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_f
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessagesStorage;->unpinAllDialogsExceptNew(Ljava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$97$1$1;->this$2:Lorg/telegram/messenger/MessagesController$97$1;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$97$1;->val$toCache:Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method
