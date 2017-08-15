.class public Lorg/telegram/messenger/MessageKeyData;
.super Ljava/lang/Object;
.source "MessageKeyData.java"


# instance fields
.field public aesIv:[B

.field public aesKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMessageKeyData([B[BZ)Lorg/telegram/messenger/MessageKeyData;
    .locals 11

    const/16 v8, 0x20

    const/16 v10, 0x10

    const/16 v9, 0xc

    const/4 v2, 0x0

    const/16 v1, 0x8

    new-instance v3, Lorg/telegram/messenger/MessageKeyData;

    invoke-direct {v3}, Lorg/telegram/messenger/MessageKeyData;-><init>()V

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v3, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    const/4 v0, 0x0

    iput-object v0, v3, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v4}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    invoke-virtual {v4, p0, v0, v8}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v5

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v4}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    add-int/lit8 v6, v0, 0x20

    invoke-virtual {v4, p0, v6, v10}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    add-int/lit8 v6, v0, 0x30

    invoke-virtual {v4, p0, v6, v10}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v6

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v4}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    add-int/lit8 v7, v0, 0x40

    invoke-virtual {v4, p0, v7, v8}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v4}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    add-int/lit8 v0, v0, 0x60

    invoke-virtual {v4, p0, v0, v8}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v4}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {v4, v5, v2, v1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4, v6, v1, v9}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    const/4 v8, 0x4

    invoke-virtual {v4, v7, v8, v9}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v8

    iput-object v8, v3, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance v4, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v4}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {v4, v5, v1, v9}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4, v6, v2, v1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    const/4 v5, 0x4

    invoke-virtual {v4, v7, v10, v5}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4, v0, v2, v1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    invoke-virtual {v4}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    move-object v0, v3

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1
.end method
