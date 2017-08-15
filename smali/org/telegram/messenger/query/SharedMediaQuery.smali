.class public Lorg/telegram/messenger/query/SharedMediaQuery;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"


# static fields
.field public static final MEDIA_AUDIO:I = 0x2

.field public static final MEDIA_FILE:I = 0x1

.field public static final MEDIA_MUSIC:I = 0x4

.field public static final MEDIA_PHOTOVIDEO:I = 0x0

.field public static final MEDIA_TYPES_COUNT:I = 0x5

.field public static final MEDIA_URL:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V
    .locals 1

    invoke-static/range {p0 .. p10}, Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMedia(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V

    return-void
.end method

.method static synthetic access$100(IJIIZ)V
    .locals 1

    invoke-static/range {p0 .. p5}, Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMediaCount(IJIIZ)V

    return-void
.end method

.method static synthetic access$200(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery;->putMediaCountDatabase(JII)V

    return-void
.end method

.method public static canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-nez v4, :cond_4

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-nez v4, :cond_4

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v0, :cond_5

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static getMediaCount(JIIZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    long-to-int v0, p0

    if-nez p4, :cond_0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCountDatabase(JII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    if-nez p2, :cond_4

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :cond_3
    :goto_1
    const-string/jumbo v2, ""

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/query/SharedMediaQuery$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery$2;-><init>(JII)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_5

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_6
    const/4 v2, 0x3

    if-ne p2, v2, :cond_7

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1

    :cond_7
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_1
.end method

.method private static getMediaCountDatabase(JII)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery$6;-><init>(JII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v1, :cond_5

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->isMusicMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-nez v3, :cond_6

    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-nez v3, :cond_6

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityEmail;

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public static loadMedia(JIIIIZI)V
    .locals 20

    move-wide/from16 v0, p0

    long-to-int v2, v0

    if-gez v2, :cond_2

    move-wide/from16 v0, p0

    long-to-int v2, v0

    neg-int v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v9, 0x1

    :goto_0
    move-wide/from16 v0, p0

    long-to-int v2, v0

    if-nez p6, :cond_0

    if-nez v2, :cond_3

    :cond_0
    move-wide/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMediaDatabase(JIIIIIZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    move/from16 v0, p2

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset:I

    add-int/lit8 v4, p3, 0x1

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    move/from16 v0, p4

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    if-nez p5, :cond_5

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhotoVideo;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :cond_4
    :goto_2
    const-string/jumbo v4, ""

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v10, Lorg/telegram/messenger/query/SharedMediaQuery$1;

    move/from16 v11, p3

    move-wide/from16 v12, p0

    move/from16 v14, p2

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p7

    move/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lorg/telegram/messenger/query/SharedMediaQuery$1;-><init>(IJIIIIZ)V

    invoke-virtual {v2, v3, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_2

    :cond_6
    const/4 v4, 0x2

    move/from16 v0, p5

    if-ne v0, v4, :cond_7

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterVoice;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_2

    :cond_7
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_2

    :cond_8
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_4

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_2
.end method

.method private static loadMediaDatabase(JIIIIIZ)V
    .locals 10

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v9

    new-instance v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;

    move v1, p3

    move-wide v2, p0

    move v4, p4

    move/from16 v5, p7

    move v6, p5

    move v7, p2

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/query/SharedMediaQuery$7;-><init>(IJIZIII)V

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadMusic(JI)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$9;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/query/SharedMediaQuery$9;-><init>(JI)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static processLoadedMedia(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V
    .locals 11

    long-to-int v0, p1

    if-eqz p7, :cond_0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    move-wide v0, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    :goto_0
    return-void

    :cond_0
    if-nez p7, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    move-wide v0, p1

    move/from16 v2, p6

    move/from16 v4, p5

    move/from16 v5, p10

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/query/SharedMediaQuery;->putMediaDatabase(JILjava/util/ArrayList;IZ)V

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v4}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$3;

    move-object v2, p0

    move/from16 v3, p7

    move-wide v4, p1

    move/from16 v7, p8

    move/from16 v8, p6

    move/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/query/SharedMediaQuery$3;-><init>(Lorg/telegram/tgnet/TLRPC$messages_Messages;ZJLjava/util/ArrayList;IIZ)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static processLoadedMediaCount(IJIIZ)V
    .locals 9

    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$4;

    move-wide v2, p1

    move v4, p5

    move v5, p0

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery$4;-><init>(JZIII)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static putMediaCountDatabase(JII)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SharedMediaQuery$5;-><init>(JII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static putMediaDatabase(JILjava/util/ArrayList;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;IZ)V"
        }
    .end annotation

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SharedMediaQuery$8;

    move-object v2, p3

    move v3, p5

    move-wide v4, p0

    move v6, p4

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery$8;-><init>(Ljava/util/ArrayList;ZJII)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
