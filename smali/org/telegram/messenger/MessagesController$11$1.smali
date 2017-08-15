.class Lorg/telegram/messenger/MessagesController$11$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$11;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$11;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$11;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$11$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$11$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$11;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v2, v2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    # invokes: Lorg/telegram/messenger/MessagesController;->applyDialogNotificationsSettings(JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V
    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->access$1700(Lorg/telegram/messenger/MessagesController;JLorg/telegram/tgnet/TLRPC$PeerNotifySettings;)V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_botInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-static {v1}, Lorg/telegram/messenger/query/BotQuery;->putBotInfo(Lorg/telegram/tgnet/TLRPC$BotInfo;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->fullUsers:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$2200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$11;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->loadingFullUsers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$2300(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$11;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->loadedFullUsers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->access$2400(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$11;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$11;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$11;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$11;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$11;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v3, v2, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_botInfo;

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->botInfoDidLoaded:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->bot_info:Lorg/telegram/tgnet/TLRPC$BotInfo;

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$11;->val$classGuid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$11$1;->this$1:Lorg/telegram/messenger/MessagesController$11;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$11;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
