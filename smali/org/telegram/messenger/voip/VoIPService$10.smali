.class Lorg/telegram/messenger/voip/VoIPService$10;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    const/16 v10, 0x41

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

    const-string/jumbo v0, "stopping VoIP service, bad prime"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->callFailed()V
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$900(Lorg/telegram/messenger/voip/VoIPService;)V

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
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # setter for: Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B
    invoke-static {v0, v3}, Lorg/telegram/messenger/voip/VoIPService;->access$1302(Lorg/telegram/messenger/voip/VoIPService;[B)[B

    sget v0, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    sget-object v4, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v1, v9, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v9, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-static {v3}, Lorg/telegram/messenger/voip/VoIPService;->access$1200(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhoneCall;->g_a_hash:[B

    # setter for: Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B
    invoke-static {v1, v3}, Lorg/telegram/messenger/voip/VoIPService;->access$2202(Lorg/telegram/messenger/voip/VoIPService;[B)[B

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v0, v1

    if-le v0, v8, :cond_4

    new-array v0, v8, [B

    invoke-static {v1, v9, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->g_b:[B

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-static {v2}, Lorg/telegram/messenger/voip/VoIPService;->access$1200(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-static {v2}, Lorg/telegram/messenger/voip/VoIPService;->access$1200(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$PhoneCall;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iput-boolean v9, v2, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_reflector:Z

    iput-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->udp_p2p:Z

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iput v10, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->min_layer:I

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_acceptCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    iput v10, v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->max_layer:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$10$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$10$1;-><init>(Lorg/telegram/messenger/voip/VoIPService$10;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$10;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->callFailed()V
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$900(Lorg/telegram/messenger/voip/VoIPService;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
