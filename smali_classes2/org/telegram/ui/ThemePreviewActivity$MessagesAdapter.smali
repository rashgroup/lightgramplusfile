.class public Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessagesAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 12

    const/16 v5, 0x103

    const-wide/16 v10, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0xe10

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string/jumbo v2, "Reinhardt, we need to find you some new tunes \ud83c\udfb6."

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3c

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput v7, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v2, v1, v8, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string/jumbo v3, "I can\'t even take you seriously right now."

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit16 v3, v0, 0x3c0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v4, v1, v8, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit16 v3, v0, 0x82

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    const/4 v3, 0x5

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v4, "audio/mp4"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v4, "s"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/16 v4, 0xf3

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    const-string/jumbo v4, "David Hasselhoff"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    const-string/jumbo v4, "True Survivor"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v4, v1, v8, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-string/jumbo v3, "Ah, you kids today with techno music! You should enjoy the classics, like Hasselhoff!"

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3c

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v3, 0x109

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v3, 0x5

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v3, v1, v8, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    const-string/jumbo v1, "Lucio"

    iput-object v1, v3, Lorg/telegram/messenger/MessageObject;->customReplyName:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v3, v0, 0x78

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v4, "audio/ogg"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v4, "s"

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/16 v4, 0x404

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    const/4 v4, 0x3

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    const/16 v4, 0x3f

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->waveform:[B

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v3, v1, v8, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput v6, v3, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const v1, 0x3e99999a    # 0.3f

    iput v1, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput-boolean v6, v3, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    add-int/lit8 v2, v0, 0xa

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/16 v2, 0x101

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iput v7, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    const/16 v3, 0x1f4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    const/16 v3, 0x12e

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    const-string/jumbo v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v3, "Bring it on! I LIVE for this!"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    new-instance v2, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v2, v1, v8, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-boolean v6, v2, Lorg/telegram/messenger/MessageObject;->useCustomPhoto:Z

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateChat(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput v7, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v0, v1, v8, v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    const/16 v1, 0xa

    iput v1, v0, Lorg/telegram/messenger/MessageObject;->type:I

    iput v6, v0, Lorg/telegram/messenger/MessageObject;->contentType:I

    iput-boolean v6, v0, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x4t
        0x11t
        -0x32t
        -0x5dt
        0x56t
        -0x67t
        -0x2dt
        -0xct
        -0x1at
        0x3ft
        -0x19t
        -0x3t
        0x6dt
        -0x72t
        -0x36t
        -0x4t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1dt
        -0x1t
        -0x1t
        -0x19t
        -0x1t
        -0x1t
        -0x61t
        -0x2bt
        0x39t
        -0x39t
        -0x6ct
        0x1t
        -0x5bt
        -0x4t
        -0x2ft
        0x15t
        0x63t
        0xat
        0x61t
        0x2bt
        0x2dt
        0x73t
        -0x70t
        -0x4dt
        0x33t
        -0x3ft
        0x42t
        0x28t
        0x22t
        -0x7at
        -0x74t
        0x30t
        -0x7ct
        0x10t
        0x42t
        -0x78t
        0x10t
        0x44t
        0x10t
        0x21t
        0x4t
        0x1t
    .end array-data
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->contentType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    const/16 v8, 0x12c

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v2

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->getItemViewType(I)I

    move-result v6

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    if-ne v5, v7, :cond_2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v8, :cond_2

    move v2, v3

    :goto_0
    move v5, v2

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne v6, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->messages:Ljava/util/ArrayList;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v6, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v6, :cond_0

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v8, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setFullyDraw(Z)V

    invoke-virtual {v1, v0, v5, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setAlpha(F)V

    goto :goto_2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_1

    new-instance v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    :cond_0
    :goto_0
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$2;-><init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_0
.end method
