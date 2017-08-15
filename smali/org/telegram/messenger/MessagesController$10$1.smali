.class Lorg/telegram/messenger/MessagesController$10$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$10;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$10;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$10;Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$10;->val$chat_id:I

    neg-int v1, v1

    int-to-long v4, v1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    # invokes: Lorg/telegram/messenger/MessagesController;->applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    invoke-static {v0, v4, v5, v1}, Lorg/telegram/messenger/MessagesController;->access$1700(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-static {v0}, Lorg/telegram/messenger/query/BotQuery;->putBotInfo(Lorg/telegram/tgnet/TLRPC$BotInfo;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->exportedChats:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1800(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$10;->val$chat_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->loadingFullChats:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1900(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$10;->val$chat_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->loadedFullChats:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$2000(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$10;->val$chat_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->address:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$10;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$10$1;->val$res:Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->full_chat:Lorg/telegram/tgnet/TLRPC$ChatFull;

    aput-object v4, v3, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$10$1;->this$1:Lorg/telegram/messenger/MessagesController$10;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$10;->val$classGuid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    const/4 v4, 0x0

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
