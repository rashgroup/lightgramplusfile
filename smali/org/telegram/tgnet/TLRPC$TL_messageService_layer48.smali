.class public Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;
.super Lorg/telegram/tgnet/TLRPC$TL_messageService;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageService_layer48"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, -0x3f9469f9

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->unread:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->out:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->mentioned:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->media_unread:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->silent:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->post:Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->id:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    :cond_1
    :goto_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->date:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$MessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    goto :goto_6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->unread:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->out:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->mentioned:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->media_unread:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->silent:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->post:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->from_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$MessageAction;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_2

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_3

    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto :goto_4

    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageService_layer48;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto :goto_5
.end method
