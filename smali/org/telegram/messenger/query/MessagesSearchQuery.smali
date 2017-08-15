.class public Lorg/telegram/messenger/query/MessagesSearchQuery;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"


# static fields
.field private static lastMergeDialogId:J

.field private static lastReqId:I

.field private static lastReturnedNum:I

.field private static lastSearchQuery:Ljava/lang/String;

.field private static mergeReqId:I

.field private static messagesSearchCount:[I

.field private static messagesSearchEndReached:[Z

.field private static reqId:I

.field private static searchResultMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    sget-wide v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    return p0
.end method

.method static synthetic access$200()[Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;JJIIZ)V
    .locals 1

    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZ)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    sput p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0

    sput p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    return p0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I

    move-result v0

    return v0
.end method

.method public static getLastSearchQuery()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method private static getMask()I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget-object v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_0

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sget v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    if-lez v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    return v0
.end method

.method public static searchMessagesInChat(Ljava/lang/String;JJII)V
    .locals 9

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZ)V

    return-void
.end method

.method private static searchMessagesInChat(Ljava/lang/String;JJIIZ)V
    .locals 17

    const/4 v3, 0x0

    if-nez p7, :cond_3

    const/4 v2, 0x1

    :goto_0
    sget v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v4, 0x0

    sput v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    :cond_0
    sget v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    if-eqz v4, :cond_1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v4, 0x0

    sput v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_8

    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget-object v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x4

    sget v6, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x5

    sget-object v6, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-object v7, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v4, 0x0

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-nez v2, :cond_6

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_6

    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x0

    sget-object p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    sget-object v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-nez v4, :cond_7

    sget-object v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v6, 0x0

    aget-boolean v4, v4, v6

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    move v4, v2

    move-wide/from16 v2, p1

    :goto_2
    move v13, v5

    move-wide v14, v2

    move v2, v13

    move v3, v4

    move-wide v4, v14

    :goto_3
    sget-object v6, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_f

    sget-object v6, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v7, 0x1

    aget-boolean v6, v6, v7

    if-nez v6, :cond_f

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_f

    move-wide/from16 v6, p3

    :goto_4
    cmp-long v4, v6, p1

    if-nez v4, :cond_e

    if-eqz v2, :cond_e

    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-eqz v2, :cond_d

    move-wide/from16 v0, p3

    long-to-int v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    sput-wide p3, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J

    const/4 v2, 0x1

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    move-object/from16 v0, p0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v2, Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    move-wide/from16 v3, p3

    move-wide/from16 v6, p1

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/query/MessagesSearchQuery$1;-><init>(JLorg/telegram/tgnet/TLRPC$TL_messages_search;JII)V

    const/4 v3, 0x2

    invoke-virtual {v10, v5, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    cmp-long v4, v6, p3

    if-nez v4, :cond_10

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    :goto_5
    sget-object v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v4

    move v4, v2

    move-wide/from16 v2, p3

    goto :goto_2

    :cond_8
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_2

    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    if-gez v2, :cond_9

    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    goto/16 :goto_1

    :cond_9
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget-object v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_a

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    :cond_a
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x4

    sget v6, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x5

    sget-object v6, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-object v7, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    if-eqz v2, :cond_c

    sget-object v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v5, 0x0

    sget-object v6, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-boolean v8, v6, v7

    aput-boolean v8, v4, v5

    sget-object v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v5, 0x0

    sget-object v6, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    aput v8, v4, v5

    sget-object v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_c
    move-wide/from16 v4, p1

    goto/16 :goto_3

    :cond_d
    const-wide/16 v4, 0x0

    sput-wide v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    :cond_e
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    long-to-int v2, v6

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_2

    const/16 v2, 0x15

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    move-object/from16 v0, p0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    iput v3, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I

    sput-object p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    move-wide/from16 v8, p1

    move/from16 v10, p5

    move-wide/from16 v11, p3

    invoke-direct/range {v3 .. v12}, Lorg/telegram/messenger/query/MessagesSearchQuery$2;-><init>(ILorg/telegram/tgnet/TLRPC$TL_messages_search;JJIJ)V

    const/4 v4, 0x2

    invoke-virtual {v2, v5, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    goto/16 :goto_1

    :cond_f
    move-wide v6, v4

    goto/16 :goto_4

    :cond_10
    move v2, v3

    goto/16 :goto_5
.end method
