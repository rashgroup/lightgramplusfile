.class public Lorg/telegram/tgnet/TLRPC$BotInlineResult;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotInlineResult"
.end annotation


# instance fields
.field public content_type:Ljava/lang/String;

.field public content_url:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public duration:I

.field public flags:I

.field public h:I

.field public id:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public query_id:J

.field public send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

.field public thumb_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t parse magic %x in BotInlineResult"

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
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64145147 -> :sswitch_0
        0x17db940b -> :sswitch_1
    .end sparse-switch
.end method
