.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getHistory"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public add_offset:I

.field public limit:I

.field public max_id:I

.field public min_id:I

.field public offset_date:I

.field public offset_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, -0x5056d7ba

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->constructor:I

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

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->offset_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->add_offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getHistory;->min_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
