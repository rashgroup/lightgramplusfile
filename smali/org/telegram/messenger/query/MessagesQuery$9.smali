.class final Lorg/telegram/messenger/query/MessagesQuery$9;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chats:Ljava/util/ArrayList;

.field final synthetic val$chatsDict:Ljava/util/HashMap;

.field final synthetic val$dialog_id:J

.field final synthetic val$isCache:Z

.field final synthetic val$replyMessageOwners:Ljava/util/HashMap;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;J)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$users:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$isCache:Z

    iput-object p3, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chats:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$result:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$replyMessageOwners:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$usersDict:Ljava/util/HashMap;

    iput-object p7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chatsDict:Ljava/util/HashMap;

    iput-wide p8, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$users:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$isCache:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chats:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$isCache:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    move v2, v3

    move v4, v3

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$replyMessageOwners:Ljava/util/HashMap;

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$usersDict:Ljava/util/HashMap;

    iget-object v7, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$chatsDict:Ljava/util/HashMap;

    invoke-direct {v6, v0, v4, v7, v3}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    move v4, v3

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v6, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    if-eqz v7, :cond_1

    invoke-virtual {v0, v8, v8}, Lorg/telegram/messenger/MessageObject;->generatePinMessageText(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionGameScore;

    if-eqz v7, :cond_2

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessageObject;->generateGameMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_2

    :cond_2
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;

    if-eqz v7, :cond_0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/MessageObject;->generatePaymentSentMessageText(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/telegram/messenger/query/MessagesQuery$9;->val$dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    move v1, v4

    goto :goto_3
.end method
