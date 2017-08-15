.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendMedia"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public background:Z

.field public clear_draft:Z

.field public flags:I

.field public media:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public random_id:J

.field public reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public reply_to_msg_id:I

.field public silent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, -0x370e986f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->background:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v0, v0, 0x40

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->clear_draft:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit8 v0, v0, -0x41

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto :goto_2
.end method
