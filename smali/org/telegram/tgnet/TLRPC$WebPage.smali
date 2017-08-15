.class public Lorg/telegram/tgnet/TLRPC$WebPage;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebPage"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public cached_page:Lorg/telegram/tgnet/TLRPC$Page;

.field public date:I

.field public description:Ljava/lang/String;

.field public display_url:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public duration:I

.field public embed_height:I

.field public embed_type:Ljava/lang/String;

.field public embed_url:Ljava/lang/String;

.field public embed_width:I

.field public flags:I

.field public hash:I

.field public id:J

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public site_name:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t parse magic %x in WebPage"

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
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$WebPage;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a7b6b8d -> :sswitch_5
        -0x5ce15f4b -> :sswitch_1
        -0x3a7925e4 -> :sswitch_4
        -0x357df129 -> :sswitch_6
        -0x2be5ae99 -> :sswitch_3
        -0x14eb8818 -> :sswitch_2
        0x5f07b4bc -> :sswitch_0
    .end sparse-switch
.end method
