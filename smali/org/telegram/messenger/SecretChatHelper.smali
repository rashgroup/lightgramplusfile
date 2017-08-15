.class public Lorg/telegram/messenger/SecretChatHelper;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    }
.end annotation


# static fields
.field public static final CURRENT_SECRET_CHAT_LAYER:I = 0x2e

.field private static volatile Instance:Lorg/telegram/messenger/SecretChatHelper;


# instance fields
.field private acceptingChats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;"
        }
    .end annotation
.end field

.field public delayedEncryptedChatUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field private pendingEncMessagesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private secretHolesQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private sendingNotifyLayer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startingSecretChat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SecretChatHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/SecretChatHelper;IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 2

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/SecretChatHelper;->createDeleteMessage(IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/SecretChatHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    return p1
.end method

.method private applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
    .locals 8

    const/16 v7, 0x2e

    const/16 v2, 0x10

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v1

    if-gt p2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v0, v0

    if-ne v0, v2, :cond_1

    if-lt v1, v7, :cond_1

    :try_start_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v3, v3

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v0

    const/16 v2, 0x24

    new-array v2, v2, [B

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x14

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/AndroidUtilities;->setPeerLayerVersion(II)I

    move-result v0

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    if-ge v1, v7, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    :cond_2
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$5;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private createDeleteMessage(IIIJLorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 6

    const/4 v4, 0x1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    const/16 v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    iget v1, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->send_state:I

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->seq_in:I

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->seq_out:I

    iget v1, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    iput-wide p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, p6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_0
.end method

.method private createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    const/16 v0, 0x100

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->send_state:I

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :goto_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v0

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    return-object v6

    :cond_1
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_0

    :cond_2
    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/messenger/SecretChatHelper;
    .locals 2

    sget-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/SecretChatHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper;

    invoke-direct {v0}, Lorg/telegram/messenger/SecretChatHelper;-><init>()V

    sput-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isSecretInvisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSecretVisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resendMessages(IILorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 2

    if-eqz p3, :cond_0

    sub-int v0, p2, p1

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$7;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/messenger/SecretChatHelper$7;-><init>(Lorg/telegram/messenger/SecretChatHelper;ILorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V
    .locals 10

    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p2, :cond_0

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;-><init>()V

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->key_fingerprint:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v6, v1, v5, v0, v3}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, p3, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v5, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Document;->caption:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->caption:Ljava/lang/String;

    :goto_1
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->caption:Ljava/lang/String;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    iput-boolean v0, p1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    iput-boolean v2, p1, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    const-string/jumbo v0, ""

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1
.end method


# virtual methods
.method public acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    const/16 v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$13;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$13;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public checkSecretHoles(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SecretChatHelper$8;-><init>(Lorg/telegram/messenger/SecretChatHelper;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v9

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-eq v2, v3, :cond_2

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    add-int/lit8 v3, v3, -0x2

    if-ne v2, v3, :cond_4

    :cond_2
    iget-object v1, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    iget-object v1, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget-object v1, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v10, 0x1

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    iget v3, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->date:I

    iget-wide v4, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->random_id:J

    iget-object v1, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-boolean v7, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->new_key_used:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;IJLorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v1, v10

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    return-void
.end method

.method public declineSecretChat(I)V
    .locals 3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;-><init>()V

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;->chat_id:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$12;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/SecretChatHelper$12;-><init>(Lorg/telegram/messenger/SecretChatHelper;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method protected decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v12

    if-eqz v12, :cond_0

    instance-of v3, v12, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v10

    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v11, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    array-length v3, v3

    invoke-direct {v11, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v4

    iget-wide v6, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_3

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    :goto_1
    if-eqz v2, :cond_11

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readData(IZ)[B

    move-result-object v13

    const/4 v3, 0x0

    invoke-static {v2, v13, v3}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZ)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v4

    iget-object v2, v11, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, v4, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    iget-object v4, v4, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v8

    add-int/lit8 v8, v8, -0x18

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x1c

    if-le v2, v3, :cond_4

    :cond_2
    move-object v2, v10

    goto :goto_0

    :cond_3
    iget-wide v6, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-eqz v3, :cond_13

    iget-wide v6, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_13

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    move v9, v2

    move-object v2, v3

    goto :goto_1

    :cond_4
    iget-object v3, v11, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/16 v4, 0x18

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x18

    iget-object v5, v11, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/Utilities;->computeSHA1(Ljava/nio/ByteBuffer;II)[B

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    add-int/lit8 v4, v4, -0x10

    invoke-static {v13, v3, v2, v4}, Lorg/telegram/messenger/Utilities;->arraysEquals([BI[BI)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v10

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lorg/telegram/tgnet/TLClassStore;->Instance()Lorg/telegram/tgnet/TLClassStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v11, v3, v4}, Lorg/telegram/tgnet/TLClassStore;->TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v2

    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-nez v9, :cond_6

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_6

    iget-short v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    iput-short v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    :cond_6
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    if-eqz v3, :cond_f

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-nez v3, :cond_7

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    if-nez v3, :cond_7

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    iput v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    :cond_7
    :goto_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->random_bytes:[B

    array-length v3, v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_9

    const-string/jumbo v2, "got random bytes less than needed"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object v2, v10

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x1

    iput v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    move-object v2, v10

    goto/16 :goto_0

    :cond_9
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current chat in_seq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " out_seq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got message with in_seq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " out_seq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget v4, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-ge v3, v4, :cond_a

    move-object v2, v10

    goto/16 :goto_0

    :cond_a
    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    if-eq v3, v4, :cond_d

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    add-int/lit8 v4, v4, -0x2

    if-eq v3, v4, :cond_d

    const-string/jumbo v3, "got hole"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v4, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v5, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->id:I

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->user_id:I

    iget-object v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->auth_key:[B

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_create_date:I

    iget-short v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_in:S

    iget-short v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_out:S

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_in:I

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_out:I

    new-instance v3, Lorg/telegram/messenger/SecretChatHelper$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lorg/telegram/messenger/SecretChatHelper$9;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    move-object v2, v10

    goto/16 :goto_0

    :cond_c
    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    invoke-direct {v4}, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;-><init>()V

    iput-object v2, v4, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    iput-object v2, v4, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->random_id:J

    iput-wide v6, v4, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->random_id:J

    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    iput v2, v4, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->date:I

    iput-boolean v9, v4, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->new_key_used:Z

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v10

    goto/16 :goto_0

    :cond_d
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    iput v3, v12, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    :goto_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->random_id:J

    move-object/from16 v2, p0

    move-object v3, v12

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/SecretChatHelper;->processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;IJLorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lorg/telegram/messenger/SecretChatHelper;->checkSecretHoles(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V

    move-object v2, v11

    goto/16 :goto_0

    :cond_f
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    if-eqz v3, :cond_10

    move-object v0, v2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    move-object v3, v0

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-nez v3, :cond_12

    :cond_10
    move-object v2, v10

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v11}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const-string/jumbo v2, "fingerprint mismatch %x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_12
    move-object v8, v2

    goto :goto_4

    :cond_13
    move-object v2, v10

    goto/16 :goto_1
.end method

.method protected performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-nez v0, :cond_0

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p6

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/SecretChatHelper$4;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public processAcceptedSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0x100

    const/4 v1, 0x0

    new-instance v0, Ljava/math/BigInteger;

    sget-object v2, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v0, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    invoke-direct {v2, v6, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v2, v0}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-direct {v3, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v0, v3

    if-le v0, v5, :cond_1

    new-array v0, v5, [B

    array-length v2, v3

    add-int/lit16 v2, v2, -0x100

    invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v2

    new-array v3, v7, [B

    array-length v4, v2

    add-int/lit8 v4, v4, -0x8

    invoke-static {v2, v4, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$10;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    array-length v0, v3

    if-ge v0, v5, :cond_4

    new-array v2, v5, [B

    array-length v0, v3

    rsub-int v0, v0, 0x100

    array-length v4, v3

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_2
    array-length v4, v3

    rsub-int v4, v4, 0x100

    if-ge v0, v4, :cond_2

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->id:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->user_id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->auth_key:[B

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_create_date:I

    iget-short v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_in:S

    iget-short v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_out:S

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_in:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_out:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$11;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/SecretChatHelper$11;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v3

    goto/16 :goto_1
.end method

.method public processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;IJLorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 8

    if-eqz p6, :cond_48

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    :cond_0
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-short v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    const/16 v2, 0x78

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/SecretChatHelper;->requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    :cond_1
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    if-nez p7, :cond_7

    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    :cond_2
    :goto_0
    instance-of v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v1, :cond_27

    check-cast p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_8

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    iget v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    :goto_1
    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->local_id:I

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-wide p4, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->random_id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    const/16 v0, 0x300

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_name:Ljava/lang/String;

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    :cond_3
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    iget-wide v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-wide v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_random_id:J

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    :cond_4
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    if-eqz v0, :cond_5

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    if-eqz v0, :cond_9

    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :cond_6
    :goto_2
    return-object v1

    :cond_7
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    if-eqz p7, :cond_2

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const/4 v1, 0x0

    iput-short v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    const/4 v1, 0x0

    iput-short v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    goto/16 :goto_1

    :cond_9
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    goto :goto_2

    :cond_a
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    if-eqz v0, :cond_b

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    goto/16 :goto_2

    :cond_b
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    if-eqz v0, :cond_c

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto/16 :goto_2

    :cond_c
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    if-eqz v0, :cond_11

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v0, :cond_d

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_d

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v0, :cond_d

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_e

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_3
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    if-eqz v0, :cond_f

    array-length v2, v0

    if-eqz v2, :cond_f

    array-length v2, v0

    const/16 v3, 0x1770

    if-gt v2, v3, :cond_f

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_f

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_f

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    iget-object v3, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->w:I

    iget-object v3, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->h:I

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->bytes:[B

    const-string/jumbo v0, "s"

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->type:Ljava/lang/String;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    const-string/jumbo v2, "x"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->key_fingerprint:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v0, ""

    goto/16 :goto_3

    :cond_11
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    if-eqz v0, :cond_17

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v0, :cond_12

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_12

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v0, :cond_12

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_13

    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_4
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v2, "video/mp4"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :cond_14
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    if-eqz v0, :cond_16

    array-length v2, v0

    if-eqz v2, :cond_16

    array-length v2, v0

    const/16 v3, 0x1770

    if-gt v2, v3, :cond_16

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_16

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_16

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v2, "s"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    if-eqz v0, :cond_6

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    add-int/lit8 v0, v0, 0x2

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v0, ""

    goto/16 :goto_4

    :cond_16
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v2, "s"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_5

    :cond_17
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    if-eqz v0, :cond_1f

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v0, :cond_18

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_18

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v0, :cond_18

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_19

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_6
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    if-eqz v0, :cond_1c

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->file_name:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    if-eqz v0, :cond_1d

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_8
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v0, :cond_1a

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v2, ""

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :cond_1a
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    if-eqz v0, :cond_1e

    array-length v2, v0

    if-eqz v2, :cond_1e

    array-length v2, v0

    const/16 v3, 0x1770

    if-gt v2, v3, :cond_1e

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1e

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1e

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v2, "s"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_9
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    goto/16 :goto_2

    :cond_1b
    const-string/jumbo v0, ""

    goto/16 :goto_6

    :cond_1c
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    goto/16 :goto_7

    :cond_1d
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    goto/16 :goto_8

    :cond_1e
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v2, "s"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_9

    :cond_1f
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    if-eqz v0, :cond_20

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v2, ""

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v2, ""

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto/16 :goto_2

    :cond_20
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    if-eqz v0, :cond_25

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v0, :cond_21

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_21

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v0, :cond_21

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_22

    :cond_21
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v2, "s"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_a
    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v0, :cond_23

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v2, "audio/ogg"

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :cond_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    if-eqz v0, :cond_6

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    add-int/lit8 v0, v0, 0x1

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    goto/16 :goto_2

    :cond_24
    const-string/jumbo v0, ""

    goto :goto_a

    :cond_25
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    if-eqz v0, :cond_26

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    goto/16 :goto_2

    :cond_26
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_27
    instance-of v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    if-eqz v1, :cond_47

    check-cast p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-nez v1, :cond_28

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v1, :cond_2d

    :cond_28
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v2, :cond_2c

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    if-ltz v2, :cond_29

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    const v3, 0x1e13380

    if-le v2, v3, :cond_2a

    :cond_29
    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    const v3, 0x1e13380

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    :cond_2a
    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    iput v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    :cond_2b
    :goto_b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    const/16 v2, 0x100

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    goto/16 :goto_2

    :cond_2c
    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v2, :cond_2b

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    goto :goto_b

    :cond_2d
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    if-eqz v0, :cond_2e

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$6;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/messenger/SecretChatHelper$6;-><init>(Lorg/telegram/messenger/SecretChatHelper;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_2e
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    if-eqz v0, :cond_30

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2f
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_30
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    if-eqz v0, :cond_32

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v4, 0x1

    iget-object v3, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    :cond_31
    :goto_c
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_32
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v0, :cond_33

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->layer:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    goto :goto_c

    :cond_33
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    if-eqz v0, :cond_39

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_34

    const-string/jumbo v0, "we already have request key with higher exchange_id"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_34
    const/4 v0, 0x0

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    :cond_35
    const/16 v0, 0x100

    new-array v2, v0, [B

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Ljava/math/BigInteger;

    const/4 v0, 0x1

    sget-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v3, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sget v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v4, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v5, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_a:[B

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v4, v3}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v0, 0x0

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_36
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v0, v1

    const/16 v5, 0x100

    if-le v0, v5, :cond_4b

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x100

    invoke-static {v1, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_d
    new-instance v1, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v4, v1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v1, v3

    const/16 v2, 0x100

    if-le v1, v2, :cond_37

    const/16 v1, 0x100

    new-array v1, v1, [B

    array-length v2, v3

    add-int/lit16 v2, v2, -0x100

    const/4 v4, 0x0

    const/16 v5, 0x100

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v2

    const/16 v3, 0x8

    new-array v3, v3, [B

    array-length v4, v2

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_c

    :cond_37
    array-length v1, v3

    const/16 v2, 0x100

    if-ge v1, v2, :cond_4a

    const/16 v1, 0x100

    new-array v2, v1, [B

    const/4 v1, 0x0

    array-length v4, v3

    rsub-int v4, v4, 0x100

    array-length v5, v3

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_f
    array-length v4, v3

    rsub-int v4, v4, 0x100

    if-ge v1, v4, :cond_38

    const/4 v4, 0x0

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_38
    move-object v1, v2

    goto :goto_e

    :cond_39
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    if-eqz v0, :cond_3f

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3e

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    sget-object v2, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    iget-object v3, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v1, v0}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_3a

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v0, 0x0

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_3a
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    array-length v0, v2

    const/16 v1, 0x100

    if-le v0, v1, :cond_3b

    const/16 v0, 0x100

    new-array v0, v0, [B

    array-length v1, v2

    add-int/lit16 v1, v1, -0x100

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_10
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [B

    array-length v3, v1

    add-int/lit8 v3, v3, -0x8

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v2

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_3d

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_c

    :cond_3b
    array-length v0, v2

    const/16 v1, 0x100

    if-ge v0, v1, :cond_49

    const/16 v0, 0x100

    new-array v1, v0, [B

    const/4 v0, 0x0

    array-length v3, v2

    rsub-int v3, v3, 0x100

    array-length v4, v2

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_11
    array-length v3, v2

    rsub-int v3, v3, 0x100

    if-ge v0, v3, :cond_3c

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_3c
    move-object v0, v1

    goto :goto_10

    :cond_3d
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v0, 0x0

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_c

    :cond_3e
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v0, 0x0

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_c

    :cond_3f
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    if-eqz v0, :cond_41

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iput v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const/4 v0, 0x0

    iput-short v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    const/4 v0, 0x0

    iput-short v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_c

    :cond_40
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v0, 0x0

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_c

    :cond_41
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    if-eqz v0, :cond_42

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iget-object v2, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_c

    :cond_42
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    if-nez v0, :cond_31

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    if-eqz v0, :cond_46

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    if-lt v0, v1, :cond_43

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    if-ge v0, v1, :cond_44

    :cond_43
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_44
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    if-ge v0, v1, :cond_45

    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    :cond_45
    iget-object v0, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->start_seq_no:I

    iget-object v1, p6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->end_seq_no:I

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/SecretChatHelper;->resendMessages(IILorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_c

    :cond_46
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_48
    const-string/jumbo v0, "unknown TLObject"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_49
    move-object v0, v2

    goto/16 :goto_10

    :cond_4a
    move-object v1, v3

    goto/16 :goto_e

    :cond_4b
    move-object v0, v1

    goto/16 :goto_d
.end method

.method protected processPendingEncMessages()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/SecretChatHelper$1;-><init>(Lorg/telegram/messenger/SecretChatHelper;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedByRandoms(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method protected processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v0, v0

    const/16 v3, 0x20

    shl-long v4, v0, v3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    move v1, v0

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    :cond_0
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->date:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    new-instance v3, Lorg/telegram/messenger/SecretChatHelper$2;

    invoke-direct {v3, p0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper$2;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V

    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SecretChatHelper;->acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    instance-of v1, v2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    :cond_3
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/SecretChatHelper;->processAcceptedSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iget-short v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iget-short v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    :cond_6
    new-instance v1, Lorg/telegram/messenger/SecretChatHelper$3;

    invoke-direct {v1, p0, v0, v2}, Lorg/telegram/messenger/SecretChatHelper$3;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    move v1, v0

    goto/16 :goto_0
.end method

.method public requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x100

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v2, v5, [B

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    sget-object v4, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v3, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v0, v1

    if-le v0, v5, :cond_1

    new-array v0, v5, [B

    const/4 v3, 0x0

    invoke-static {v1, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V
    .locals 9

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p2

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-wide p3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    goto :goto_1
.end method

.method public sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p2

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    goto :goto_1
.end method

.method public sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p2

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    goto :goto_1
.end method

.method public sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p2

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    goto :goto_1
.end method

.method public sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p3, :cond_1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p3

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    goto :goto_1
.end method

.method public sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p3, :cond_1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p3

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    goto :goto_1
.end method

.method public sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p2

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    goto :goto_1
.end method

.method public sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_2

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p2

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    const/16 v2, 0x2e

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->layer:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    goto :goto_1
.end method

.method public sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p2

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_a:[B

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    goto :goto_1
.end method

.method public sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p3, :cond_1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p3

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v0, v2, v4, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v0, v6, v7, v3}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-object v2, p2

    :goto_1
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v0, v2, v4, v8}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v0, v6, v7, v3}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "Loading"

    const v2, 0x7f0802df

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    const/16 v2, 0x100

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    sget v2, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/SecretChatHelper$14;

    invoke-direct {v3, p0, p1, v0, p2}, Lorg/telegram/messenger/SecretChatHelper$14;-><init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v1

    const/4 v2, -0x2

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f0800f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$15;

    invoke-direct {v4, p0, v1}, Lorg/telegram/messenger/SecretChatHelper$15;-><init>(Lorg/telegram/messenger/SecretChatHelper;I)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
