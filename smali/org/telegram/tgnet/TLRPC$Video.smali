.class public Lorg/telegram/tgnet/TLRPC$Video;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# instance fields
.field public access_hash:J

.field public caption:Ljava/lang/String;

.field public date:I

.field public dc_id:I

.field public duration:I

.field public h:I

.field public id:J

.field public iv:[B

.field public key:[B

.field public mime_type:Ljava/lang/String;

.field public size:I

.field public thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

.field public user_id:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Video;
    .locals 5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t parse magic %x in Video"

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
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_video_old3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_video_old3;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_video_layer45;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_video_layer45;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_video_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_video_old;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_video_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_video_old2;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_videoEmpty_layer45;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_videoEmpty_layer45;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Video;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ef9a758 -> :sswitch_5
        -0x1160b5b3 -> :sswitch_0
        -0x8d7782d -> :sswitch_1
        0x388fa391 -> :sswitch_4
        0x55555553 -> :sswitch_2
        0x5a04a49f -> :sswitch_3
    .end sparse-switch
.end method
