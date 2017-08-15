.class Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesSearchQuery$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/MessagesSearchQuery$2;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iput-object p2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x4

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v0, v0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$currentReqId:I

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$500()I

    move-result v1

    if-ne v0, v1, :cond_3

    # setter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I
    invoke-static {v7}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$602(I)I

    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v8, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v7}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v7}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-object v1, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$req:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v1, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    # setter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {v7}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$702(I)I

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v1

    aput v7, v1, v7

    :cond_0
    move v2, v7

    move v1, v7

    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v8

    goto :goto_0

    :cond_1
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v4

    iget-object v2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v2, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v5, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v10, v5, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_4

    move v2, v7

    :goto_1
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x15

    if-eq v3, v5, :cond_5

    move v3, v8

    :goto_2
    aput-boolean v3, v4, v2

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v2, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v10, v2, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_6

    move v2, v7

    :goto_3
    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v4, :cond_7

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    :goto_4
    aput v0, v3, v2

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v3, v3, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    # invokes: Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$900()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    const/4 v3, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_5
    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v0, v0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$queryWithDialogFinal:J

    iget-object v2, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v2, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v0, v0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$mergeDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$200()[Z

    move-result-object v0

    aget-boolean v0, v0, v8

    if-nez v0, :cond_3

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$1000()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v2, v0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$dialog_id:J

    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget-wide v4, v0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$mergeDialogId:J

    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v6, v0, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    # invokes: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZ)V
    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$400(Ljava/lang/String;JJIIZ)V

    :cond_3
    return-void

    :cond_4
    move v2, v8

    goto/16 :goto_1

    :cond_5
    move v3, v7

    goto/16 :goto_2

    :cond_6
    move v2, v8

    goto/16 :goto_3

    :cond_7
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto/16 :goto_4

    :cond_8
    if-eqz v1, :cond_2

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v0

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    # setter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {v0}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$702(I)I

    :cond_9
    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesSearchQuery$2$1;->this$0:Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    iget v4, v4, Lorg/telegram/messenger/query/MessagesSearchQuery$2;->val$guid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    # invokes: Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$900()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v9

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$700()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v12

    const/4 v0, 0x5

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v4

    aget v4, v4, v7

    # getter for: Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->access$300()[I

    move-result-object v5

    aget v5, v5, v8

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_5
.end method
