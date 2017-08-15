.class Lorg/telegram/messenger/MessagesController$100$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$100;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$100;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$100;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$100$1;->this$1:Lorg/telegram/messenger/MessagesController$100;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$100$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$100$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$100$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->isMigratedChat(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/messenger/MessagesController$100$1$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MessagesController$100$1$1;-><init>(Lorg/telegram/messenger/MessagesController$100$1;Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->media_unread:Z

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    const/16 v0, 0x100

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->post:Z

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$100$1;->val$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_2

    iget v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$100$1;->this$1:Lorg/telegram/messenger/MessagesController$100;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$100;->val$chat_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$100$1;->this$1:Lorg/telegram/messenger/MessagesController$100;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$100;->val$chat_id:I

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move v3, v4

    :goto_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v0, v5, v7, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v3, Lorg/telegram/messenger/MessagesController$100$1$2;

    invoke-direct {v3, p0, v6}, Lorg/telegram/messenger/MessagesController$100$1$2;-><init>(Lorg/telegram/messenger/MessagesController$100$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    new-instance v0, Lorg/telegram/messenger/MessagesController$100$1$3;

    invoke-direct {v0, p0, v6}, Lorg/telegram/messenger/MessagesController$100$1$3;-><init>(Lorg/telegram/messenger/MessagesController$100$1;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
