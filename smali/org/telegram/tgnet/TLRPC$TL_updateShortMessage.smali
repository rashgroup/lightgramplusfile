.class public Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;
.super Lorg/telegram/tgnet/TLRPC$Updates;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateShortMessage"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, -0x6eb040ef

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Updates;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->out:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->mentioned:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->media_unread:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->silent:Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->id:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->user_id:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->pts:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->pts_count:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->date:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->via_bot_id:I

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->reply_to_msg_id:I

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v3, 0x1cb5c415

    if-eq v0, v3, :cond_7

    if-eqz p2, :cond_8

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

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_8

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_updateShortMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
