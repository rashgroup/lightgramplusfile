.class Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$9$1$5;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-boolean v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$sentMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3, v6}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/query/SearchQuery;->increasePeerRaiting(J)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-boolean v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$isBroadcast:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object v2, v4, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v2, v2, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v1, v1, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->this$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget v1, v1, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->val$oldId:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->removeFromSendingMessages(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5$1;->this$3:Lorg/telegram/messenger/SendMessagesHelper$9$1$5;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1$5;->this$2:Lorg/telegram/messenger/SendMessagesHelper$9$1;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9$1;->this$1:Lorg/telegram/messenger/SendMessagesHelper$9;

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$9;->val$newMsgObj:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_1
.end method
