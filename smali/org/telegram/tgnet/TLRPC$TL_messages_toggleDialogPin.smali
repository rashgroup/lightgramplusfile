.class public Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_toggleDialogPin"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public pinned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3289be6a

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->constructor:I

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

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->pinned:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->flags:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleDialogPin;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method
