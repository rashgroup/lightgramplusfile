.class Lorg/telegram/messenger/MessagesController$94$2$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$94$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/MessagesController$94$2;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$94$2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/high16 v14, -0x80000000

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceEmpty;

    if-eqz v0, :cond_10

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    neg-int v0, v0

    int-to-long v10, v0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v4, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v6, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v2, v0

    move v3, v4

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v5, :cond_8

    :cond_3
    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v5, :cond_7

    move-object v5, v2

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v5, v9, :cond_8

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-nez v5, :cond_8

    move v5, v6

    :goto_2
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_4

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/2addr v5, v14

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_4
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController$94$2;->val$usersDict:Ljava/util/HashMap;

    iget-object v12, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v12, v12, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->createdDialogIds:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/messenger/MessagesController;->access$1000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-direct {v5, v0, v9, v12}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    neg-int v0, v0

    int-to-long v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_7
    move-object v5, v1

    goto :goto_1

    :cond_8
    move v5, v4

    goto :goto_2

    :cond_9
    new-instance v0, Lorg/telegram/messenger/MessagesController$94$2$2$1;

    invoke-direct {v0, p0, v7}, Lorg/telegram/messenger/MessagesController$94$2$2$1;-><init>(Lorg/telegram/messenger/MessagesController$94$2$2;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/MessagesController$94$2$2$2;

    invoke-direct {v1, p0, v8}, Lorg/telegram/messenger/MessagesController$94$2$2$2;-><init>(Lorg/telegram/messenger/MessagesController$94$2$2;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    # invokes: Lorg/telegram/messenger/MessagesController;->processChannelsUpdatesQueue(II)V
    invoke-static {v0, v1, v6}, Lorg/telegram/messenger/MessagesController;->access$5400(Lorg/telegram/messenger/MessagesController;II)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->pts:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->saveChannelPts(II)V

    :cond_c
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->gettingDifferenceChannels:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1300(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->pts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->timeout:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_d
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->isFinal:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    # invokes: Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->access$4300(Lorg/telegram/messenger/MessagesController;I)V

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "received channel difference with pts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->pts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " channelId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "new_messages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->new_messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " messages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " users = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " chats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " other updates = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$94;->val$newTaskId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController$94;->val$newTaskId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    :cond_f
    return-void

    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    neg-int v0, v0

    int-to-long v2, v0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object v1, v0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_12

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    move-object v2, v0

    move v3, v4

    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    neg-int v5, v5

    int-to-long v8, v5

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-nez v5, :cond_16

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v5, :cond_16

    :cond_13
    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v5, :cond_15

    move-object v5, v2

    :goto_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v5, v7, :cond_16

    move v5, v6

    :goto_6
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$94$2;->val$channelFinal:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_14

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/2addr v5, v14

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_14
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_15
    move-object v5, v1

    goto :goto_5

    :cond_16
    move v5, v4

    goto :goto_6

    :cond_17
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v2, v0, Lorg/telegram/messenger/MessagesController$94;->val$channelId:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$94$2$2;->this$2:Lorg/telegram/messenger/MessagesController$94$2;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$94$2;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$94;->val$newDialogType:I

    invoke-virtual {v1, v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->overwriteChannel(ILorg/telegram/tgnet/TLRPC$TL_updates_channelDifferenceTooLong;I)V

    goto/16 :goto_3
.end method
