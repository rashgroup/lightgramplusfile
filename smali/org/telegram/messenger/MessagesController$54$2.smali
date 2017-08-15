.class Lorg/telegram/messenger/MessagesController$54$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$54;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$54;

.field final synthetic val$messagesToReload:Ljava/util/ArrayList;

.field final synthetic val$objects:Ljava/util/ArrayList;

.field final synthetic val$webpagesToReload:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$54;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$54$2;->val$objects:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$54$2;->val$messagesToReload:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$54$2;->val$webpagesToReload:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const v4, 0x7fffffff

    const/4 v8, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController$54;->val$isCache:Z

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessagesController$54;->val$isCache:Z

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$54;->val$queryFromServer:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$54;->val$load_type:I

    if-ne v0, v8, :cond_5

    move v1, v2

    move v3, v4

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v5, :cond_0

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v6, v6, Lorg/telegram/messenger/MessagesController$54;->val$first_unread:I

    if-le v5, v6, :cond_0

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v5, v3, :cond_0

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$54;->val$first_unread:I

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoaded:I

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-wide v6, v5, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$54;->val$count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->val$objects:Ljava/util/ArrayList;

    aput-object v2, v4, v8

    const/4 v2, 0x3

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessagesController$54;->val$isCache:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x5

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$54;->val$last_message_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$54;->val$unread_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x7

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$54;->val$last_date:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/16 v0, 0x8

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$54;->val$load_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/16 v0, 0x9

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController$54;->val$isEnd:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v0

    const/16 v0, 0xa

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$54;->val$classGuid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/16 v0, 0xb

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$54;->val$loadIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/16 v0, 0xc

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget v2, v2, Lorg/telegram/messenger/MessagesController$54;->val$max_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->val$messagesToReload:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54$2;->val$messagesToReload:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    # invokes: Lorg/telegram/messenger/MessagesController;->reloadMessages(Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->access$4400(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;J)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->val$webpagesToReload:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54$2;->this$1:Lorg/telegram/messenger/MessagesController$54;

    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54$2;->val$webpagesToReload:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->reloadWebPages(JLjava/util/HashMap;)V

    :cond_4
    return-void

    :cond_5
    move v0, v4

    goto/16 :goto_1
.end method
