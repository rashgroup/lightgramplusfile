.class Lorg/telegram/messenger/SecretChatHelper$13;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper;->acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SecretChatHelper;

.field final synthetic val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/16 v8, 0x100

    if-nez p2, :cond_6

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    # getter for: Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/SecretChatHelper;->access$300(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    sput-object v1, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    sput v1, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    sput v1, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    sget v4, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    :cond_1
    new-array v3, v8, [B

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_2

    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v4, v4

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v5, v5, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput v9, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    new-instance v4, Ljava/math/BigInteger;

    sget-object v0, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v4, v9, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    sget v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v9, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v1, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v5, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    invoke-direct {v5, v9, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-static {v5, v4}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    # getter for: Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/SecretChatHelper;->access$300(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v0, v1

    if-le v0, v8, :cond_8

    new-array v0, v8, [B

    invoke-static {v1, v9, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v9, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v1, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    array-length v1, v4

    if-le v1, v8, :cond_4

    new-array v1, v8, [B

    array-length v3, v4

    add-int/lit16 v3, v3, -0x100

    invoke-static {v4, v3, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v3

    new-array v4, v10, [B

    array-length v5, v3

    add-int/lit8 v5, v5, -0x8

    invoke-static {v3, v5, v4, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->g_b:[B

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->chat_id:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->access_hash:J

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptEncryption;->key_fingerprint:J

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$13$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/SecretChatHelper$13$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$13;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_0

    :cond_4
    array-length v1, v4

    if-ge v1, v8, :cond_7

    new-array v3, v8, [B

    array-length v1, v4

    rsub-int v1, v1, 0x100

    array-length v5, v4

    invoke-static {v4, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    :goto_4
    array-length v5, v4

    rsub-int v5, v5, 0x100

    if-ge v1, v5, :cond_5

    aput-byte v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$13;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    # getter for: Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/SecretChatHelper;->access$300(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper$13;->val$encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    move-object v1, v4

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_2
.end method
