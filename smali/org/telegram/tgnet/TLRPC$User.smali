.class public Lorg/telegram/tgnet/TLRPC$User;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation


# instance fields
.field public access_hash:J

.field public bot:Z

.field public bot_chat_history:Z

.field public bot_info_version:I

.field public bot_inline_geo:Z

.field public bot_inline_placeholder:Ljava/lang/String;

.field public bot_nochats:Z

.field public contact:Z

.field public deleted:Z

.field public explicit_content:Z

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public id:I

.field public inactive:Z

.field public last_name:Ljava/lang/String;

.field public min:Z

.field public mutual_contact:Z

.field public phone:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public restricted:Z

.field public restriction_reason:Ljava/lang/String;

.field public self:Z

.field public status:Lorg/telegram/tgnet/TLRPC$UserStatus;

.field public username:Ljava/lang/String;

.field public verified:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;
    .locals 5

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t parse magic %x in User"

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
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userContact_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old3;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old2;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old;-><init>()V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old2;-><init>()V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_old;-><init>()V

    goto :goto_0

    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$User;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d652834 -> :sswitch_a
        -0x354ca1e8 -> :sswitch_0
        -0x2ef26866 -> :sswitch_d
        -0x29fe9286 -> :sswitch_4
        -0x26333b11 -> :sswitch_9
        -0xd047ce7 -> :sswitch_1
        0x75cf7a8 -> :sswitch_8
        0x1c60e608 -> :sswitch_3
        0x200250ba -> :sswitch_5
        0x22e49072 -> :sswitch_c
        0x22e8ceb0 -> :sswitch_6
        0x5214c89d -> :sswitch_7
        0x7007b451 -> :sswitch_b
        0x720535ec -> :sswitch_2
    .end sparse-switch
.end method
