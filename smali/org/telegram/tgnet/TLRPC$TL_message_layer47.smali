.class public Lorg/telegram/tgnet/TLRPC$TL_message_layer47;
.super Lorg/telegram/tgnet/TLRPC$TL_message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message_layer47"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, -0x366d1ea4    # -1203243.5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->unread:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->out:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->mentioned:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media_unread:Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    :cond_1
    :goto_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    :cond_2
    :goto_5
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->via_bot_id:I

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_to_msg_id:I

    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->date:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_d

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :goto_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_11

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v3, 0x1cb5c415

    if-eq v0, v3, :cond_e

    if-eqz p2, :cond_f

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "wrong Vector magic, got %x"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    goto/16 :goto_4

    :cond_c
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    goto/16 :goto_5

    :cond_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_6

    :cond_e
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    move v0, v2

    :goto_7
    if-ge v0, v3, :cond_11

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v4

    if-nez v4, :cond_10

    :cond_f
    :goto_8
    return-void

    :cond_10
    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_12

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->views:I

    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-ltz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    const-string/jumbo v3, "-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_13
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    const-string/jumbo v3, "||"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    const-string/jumbo v3, "\\|\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-lez v0, :cond_16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    move v0, v1

    :goto_9
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_15

    aget-object v4, v3, v0

    const-string/jumbo v5, "\\|=\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    iget-object v5, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    aget-object v6, v4, v2

    aget-object v4, v4, v1

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    :cond_16
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v0, :cond_f

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_msg_id:I

    goto/16 :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->unread:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->out:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->mentioned:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media_unread:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    if-eqz v0, :cond_a

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->user_id:I

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :goto_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->via_bot_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    const v0, 0x1cb5c415

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_b

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto/16 :goto_2

    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto/16 :goto_3

    :cond_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->channel_id:I

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    goto/16 :goto_4

    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->views:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_c
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->attachPath:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v1, :cond_e

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->params:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "|=|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->id:I

    if-gez v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_layer47;->fwd_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_f
    return-void
.end method
