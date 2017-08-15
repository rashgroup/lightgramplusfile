.class Lorg/telegram/messenger/SendMessagesHelper$4;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper;

.field final synthetic val$isMegagroupFinal:Z

.field final synthetic val$messagesByRandomIdsFinal:Ljava/util/HashMap;

.field final synthetic val$newMsgArr:Ljava/util/ArrayList;

.field final synthetic val$newMsgObjArr:Ljava/util/ArrayList;

.field final synthetic val$peer:J

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

.field final synthetic val$toMyself:Z

.field final synthetic val$to_id:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;JZZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput-wide p2, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    iput-boolean p4, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$isMegagroupFinal:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$toMyself:Z

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$messagesByRandomIdsFinal:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    iput-object p9, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object p10, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    if-nez p2, :cond_c

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$peer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v6, v0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    :goto_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_b

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-nez v1, :cond_3

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v1, :cond_a

    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, -0x1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    const/4 v4, -0x1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/messenger/MessagesController;->processNewDifferenceParams(IIII)V

    :cond_4
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$toMyself:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    const/4 v0, 0x0

    iput-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    :cond_5
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$messagesByRandomIdsFinal:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v2, :cond_8

    move v1, v8

    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v8, v1

    goto :goto_1

    :cond_6
    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Update;->pts_count:I

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v1, v2, v0, v3}, Lorg/telegram/messenger/MessagesController;->processNewChannelDifferenceParams(III)V

    iget-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$isMegagroupFinal:Z

    if-eqz v0, :cond_4

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_9

    move v1, v8

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgArr:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    add-int/lit8 v8, v8, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    const/4 v10, 0x0

    const/4 v11, 0x1

    # invokes: Lorg/telegram/messenger/SendMessagesHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    invoke-static {v1, v0, v5, v10, v11}, Lorg/telegram/messenger/SendMessagesHelper;->access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v10

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$4$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$4$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$Message;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v10, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_a
    move v1, v8

    goto :goto_4

    :cond_b
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    :goto_5
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$4;->val$newMsgObjArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$4$3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/SendMessagesHelper$4$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_c
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$4$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/SendMessagesHelper$4$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$4;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_d
    return-void
.end method
