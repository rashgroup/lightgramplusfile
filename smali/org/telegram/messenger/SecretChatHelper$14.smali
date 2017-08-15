.class Lorg/telegram/messenger/SecretChatHelper$14;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SecretChatHelper;->startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SecretChatHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iput-object p2, p0, Lorg/telegram/messenger/SecretChatHelper$14;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/messenger/SecretChatHelper$14;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p4, p0, Lorg/telegram/messenger/SecretChatHelper$14;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x100

    if-nez p2, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$14$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SecretChatHelper$14$1;-><init>(Lorg/telegram/messenger/SecretChatHelper$14;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

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
    sget v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v9, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v4, v9, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v1, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v0, v1

    if-le v0, v8, :cond_4

    new-array v0, v8, [B

    invoke-static {v1, v9, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;->g_a:[B

    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$14;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_requestEncryption;->random_id:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$14$2;

    invoke-direct {v2, p0, v3}, Lorg/telegram/messenger/SecretChatHelper$14$2;-><init>(Lorg/telegram/messenger/SecretChatHelper$14;[B)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper$14;->this$0:Lorg/telegram/messenger/SecretChatHelper;

    iget-object v0, v0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$14$3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SecretChatHelper$14$3;-><init>(Lorg/telegram/messenger/SecretChatHelper$14;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
