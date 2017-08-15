.class public Lorg/telegram/ui/tools/d;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChatAc.java"


# instance fields
.field protected a:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field public b:Landroid/widget/FrameLayout;

.field private c:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/tools/d;->a(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_message;

    if-eqz v1, :cond_4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    :cond_1
    :goto_1
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_2
    :goto_2
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-direct {p0, v1}, Lorg/telegram/ui/tools/d;->a(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :cond_3
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    goto/16 :goto_0

    :cond_4
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v1, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_2
.end method

.method private a(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .locals 2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;-><init>()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;-><init>()V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;-><init>()V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;

    if-eqz v0, :cond_6

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;-><init>()V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;-><init>()V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_8

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v0, :cond_9

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    goto/16 :goto_0

    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;

    if-eqz v0, :cond_b

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;-><init>()V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_c

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v0, :cond_d

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;-><init>()V

    goto/16 :goto_0
.end method

.method private a()V
    .locals 7

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/ui/tools/b;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x1

    new-instance v6, Lorg/telegram/ui/tools/d$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/tools/d$1;-><init>(Lorg/telegram/ui/tools/d;)V

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/d;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/tools/d;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/d;)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/d;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/tools/d;->a()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    const-string/jumbo v0, ""

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "ProForward"

    const v2, 0x7f08077c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/tools/d$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d$2;-><init>(Lorg/telegram/ui/tools/d;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Lorg/telegram/ui/tools/a;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/tools/a;-><init>(Lorg/telegram/ui/tools/d;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->fragmentView:Landroid/view/View;

    move-object v7, v0

    check-cast v7, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->b:Landroid/widget/FrameLayout;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-static {v11, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->b:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/tools/d$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d$3;-><init>(Lorg/telegram/ui/tools/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-direct {p0}, Lorg/telegram/ui/tools/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->b:Landroid/widget/FrameLayout;

    const/16 v1, 0x30

    const/16 v2, 0x30

    invoke-static {v11, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, -0x171718

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x53

    invoke-static {v11, v10, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v9, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, -0xc88552

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Media"

    const v2, 0x7f08072d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onDestroy()V

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7, v13, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(J)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMessageEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/tools/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x53

    invoke-static {v11, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/telegram/ui/tools/d;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iput-object v13, v2, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    :goto_2
    new-instance v2, Lorg/telegram/ui/tools/d$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/d$4;-><init>(Lorg/telegram/ui/tools/d;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2, v12, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/tools/d;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/tools/d;->b:Landroid/widget/FrameLayout;

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x30

    invoke-direct {p0}, Lorg/telegram/ui/tools/d;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v7, 0x42400000    # 48.0f

    :goto_3
    move v3, v11

    move v8, v6

    move v9, v6

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/tools/d$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d$5;-><init>(Lorg/telegram/ui/tools/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/16 v1, 0x30

    invoke-virtual {v0, v7, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addTopView(Landroid/view/View;I)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, -0x171718

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x53

    invoke-static {v11, v10, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v8, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, -0xc88552

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-direct {p0}, Lorg/telegram/ui/tools/d;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaCaption"

    const v2, 0x7f08072e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMessageEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v10, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMessageEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, "MediaCaption"

    const v2, 0x7f08072e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x5

    :goto_5
    or-int/lit8 v2, v2, 0x10

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v10, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showTopView(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_3
    const/4 v2, 0x3

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xf

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iput-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->c:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :cond_6
    new-instance v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    move v7, v6

    goto/16 :goto_3

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EditText"

    const v2, 0x7f0806b9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d;->a:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMessageEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, "EditText"

    const v2, 0x7f0806b9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_9
    const/4 v2, 0x3

    goto :goto_5
.end method
