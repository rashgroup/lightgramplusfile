.class Lorg/telegram/messenger/MessagesController$41$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$41;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$41;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$41;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$41$1;->this$1:Lorg/telegram/messenger/MessagesController$41;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$41$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$41$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$41$1;->this$1:Lorg/telegram/messenger/MessagesController$41;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$41$1;->this$1:Lorg/telegram/messenger/MessagesController$41;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$41;->val$chat_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesStorage;->updateChannelUsers(ILjava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41$1;->this$1:Lorg/telegram/messenger/MessagesController$41;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->loadedFullParticipants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3500(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$41$1;->this$1:Lorg/telegram/messenger/MessagesController$41;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$41;->val$chat_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$41$1;->this$1:Lorg/telegram/messenger/MessagesController$41;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$41;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->loadingFullParticipants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$3600(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$41$1;->this$1:Lorg/telegram/messenger/MessagesController$41;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController$41;->val$chat_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
