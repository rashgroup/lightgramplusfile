.class Lorg/telegram/messenger/MessagesController$112$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$112;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$112;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$112;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesRead:I

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    const-wide/16 v2, 0x0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    move v1, v4

    move v2, v4

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesInbox:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v5, v6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gt v3, v5, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    or-int/lit16 v2, v2, 0x100

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessagesOutbox:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v5, v6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_3

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-gt v3, v5, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    or-int/lit16 v2, v2, 0x100

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v2, v4

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadEncrypted:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messagesReadEncrypted:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v1, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_6

    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v5, v0, :cond_6

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->setIsRead()V

    or-int/lit16 v2, v2, 0x100

    goto :goto_2

    :cond_7
    move v3, v2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesReadContent:I

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController$112;->val$markAsReadMessages:Ljava/util/ArrayList;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_f

    move v5, v4

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$112;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_a

    :cond_9
    :goto_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_a
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-nez v1, :cond_c

    move v2, v4

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_b

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject;->deleted:Z

    :cond_b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_c
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$112;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    neg-int v1, v1

    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_9

    move v6, v4

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_9

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v7, v2, :cond_d

    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject;->deleted:Z

    goto :goto_4

    :cond_d
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_6

    :cond_e
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$112$1;->this$1:Lorg/telegram/messenger/MessagesController$112;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$112;->val$deletedMessages:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeDeletedMessagesFromNotifications(Landroid/util/SparseArray;)V

    :cond_f
    if-eqz v3, :cond_10

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_10
    return-void
.end method
