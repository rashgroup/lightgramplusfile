.class public Lorg/telegram/tgnet/TLRPC$NotifyPeer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifyPeer"
.end annotation


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotifyPeer;
    .locals 5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t parse magic %x in NotifyPeer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyAll;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyAll;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyChats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyChats;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyUsers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyUsers;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x602bf428 -> :sswitch_3
        -0x4b37c4b4 -> :sswitch_2
        -0x3ff8313d -> :sswitch_1
        0x74d07c60 -> :sswitch_0
    .end sparse-switch
.end method
