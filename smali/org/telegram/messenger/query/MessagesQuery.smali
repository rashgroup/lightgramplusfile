.class public Lorg/telegram/messenger/query/MessagesQuery;
.super Ljava/lang/Object;
.source "MessagesQuery.java"


# static fields
.field private static entityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/query/MessagesQuery$1;

    invoke-direct {v0}, Lorg/telegram/messenger/query/MessagesQuery$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/MessagesQuery;->entityComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(IIZ)Lorg/telegram/messenger/MessageObject;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/query/MessagesQuery;->savePinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V

    return-void
.end method

.method static synthetic access$400(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/query/MessagesQuery;->saveReplyMessages(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;ZZ)",
            "Lorg/telegram/messenger/MessageObject;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v0, p0, v5, v6, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/telegram/messenger/query/MessagesQuery$5;

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/query/MessagesQuery$5;-><init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;JZ)V"
        }
    .end annotation

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/telegram/messenger/query/MessagesQuery$9;

    move-object v1, p2

    move/from16 v2, p6

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-wide v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/query/MessagesQuery$9;-><init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static checkInclusion(ILjava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-gt v4, p0, :cond_2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v0, v4

    if-le v0, p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static checkIntersection(IILjava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-le v4, p0, :cond_2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v0, v4

    if-gt v0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static getEntities([Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string/jumbo v4, "`"

    const-string/jumbo v4, "```"

    const-string/jumbo v4, "**"

    const-string/jumbo v4, "__"

    move v6, v2

    move v2, v0

    move v0, v1

    :goto_0
    const/4 v1, 0x0

    aget-object v4, p0, v1

    if-nez v2, :cond_3

    const-string/jumbo v1, "`"

    :goto_1
    invoke-static {v4, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_15

    const/4 v0, -0x1

    if-ne v6, v0, :cond_6

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    if-le v0, v2, :cond_4

    const/4 v0, 0x0

    aget-object v0, p0, v0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x60

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    aget-object v0, p0, v0

    add-int/lit8 v2, v1, 0x2

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x60

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    const/4 v2, 0x3

    :goto_3
    add-int/2addr v2, v1

    move v6, v1

    move v13, v2

    move v2, v0

    move v0, v13

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "```"

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_2e

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    if-eqz v2, :cond_7

    const/4 v0, 0x3

    :goto_5
    add-int/2addr v0, v1

    :goto_6
    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_8

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x60

    if-ne v3, v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_b

    const/4 v0, 0x3

    :goto_7
    add-int v5, v1, v0

    if-eqz v2, :cond_14

    if-lez v6, :cond_c

    const/4 v0, 0x0

    aget-object v0, p0, v0

    add-int/lit8 v2, v6, -0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_8
    const/16 v2, 0x20

    if-eq v0, v2, :cond_9

    const/16 v2, 0xa

    if-ne v0, v2, :cond_d

    :cond_9
    const/4 v0, 0x1

    :goto_9
    const/4 v2, 0x0

    aget-object v3, p0, v2

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :goto_a
    sub-int v2, v6, v2

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    aget-object v2, p0, v2

    add-int/lit8 v4, v6, 0x3

    invoke-static {v2, v4, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v2, v1, 0x3

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_f

    const/4 v2, 0x0

    aget-object v2, p0, v2

    add-int/lit8 v4, v1, 0x3

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :goto_b
    const/4 v4, 0x0

    aget-object v4, p0, v4

    add-int/lit8 v9, v1, 0x3

    const/16 v10, 0x20

    if-eq v2, v10, :cond_a

    const/16 v10, 0xa

    if-ne v2, v10, :cond_10

    :cond_a
    const/4 v2, 0x1

    :goto_c
    add-int/2addr v2, v9

    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v4, v2, v9}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v3, v2, v9

    const/4 v3, 0x1

    const-string/jumbo v9, "\n"

    aput-object v9, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v13, v2

    move v2, v0

    move-object v0, v13

    :goto_d
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string/jumbo v10, "\n"

    aput-object v10, v3, v9

    const/4 v9, 0x1

    aput-object v4, v3, v9

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f

    const/4 v4, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v8, v9, v0

    const/4 v0, 0x2

    aput-object v3, v9, v0

    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p0, v4

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;-><init>()V

    if-eqz v2, :cond_12

    const/4 v0, 0x0

    :goto_f
    add-int/2addr v0, v6

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;->offset:I

    sub-int v0, v1, v6

    add-int/lit8 v1, v0, -0x3

    if-eqz v2, :cond_13

    const/4 v0, 0x0

    :goto_10
    add-int/2addr v0, v1

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;->length:I

    const-string/jumbo v0, ""

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;->language:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v5, -0x6

    :goto_11
    const/4 v2, -0x1

    const/4 v1, 0x0

    move v6, v2

    move-object v3, v7

    move v2, v1

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_11
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_d

    :cond_12
    const/4 v0, 0x1

    goto :goto_f

    :cond_13
    const/4 v0, 0x1

    goto :goto_10

    :cond_14
    add-int/lit8 v0, v6, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v0, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p0, v4

    const/4 v8, 0x0

    invoke-static {v4, v8, v6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-object v4, p0, v4

    add-int/lit8 v8, v6, 0x1

    invoke-static {v4, v8, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aget-object v4, p0, v4

    add-int/lit8 v8, v1, 0x1

    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v4, v8, v9}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, p0, v0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;-><init>()V

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->offset:I

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->length:I

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v5, -0x2

    goto :goto_11

    :cond_15
    const/4 v0, -0x1

    if-eq v6, v0, :cond_17

    if-eqz v2, :cond_17

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-object v4, p0, v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    aget-object v4, p0, v4

    add-int/lit8 v5, v6, 0x2

    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v4, v5, v7}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p0, v0

    if-nez v3, :cond_16

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;-><init>()V

    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->offset:I

    const/4 v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->length:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const/4 v0, 0x0

    aget-object v0, p0, v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Landroid/text/Spannable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TypefaceSpan;

    if-eqz v1, :cond_1c

    array-length v2, v1

    if-lez v2, :cond_1c

    const/4 v2, 0x0

    :goto_12
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    aget-object v4, v1, v2

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v5, v3}, Lorg/telegram/messenger/query/MessagesQuery;->checkInclusion(ILjava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-static {v6, v3}, Lorg/telegram/messenger/query/MessagesQuery;->checkInclusion(ILjava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/query/MessagesQuery;->checkIntersection(IILjava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_19

    :cond_18
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_19
    if-nez v3, :cond_1a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1a
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TypefaceSpan;->isBold()Z

    move-result v4

    if-eqz v4, :cond_1b

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;-><init>()V

    :goto_14
    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int v5, v6, v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1b
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;-><init>()V

    goto :goto_14

    :cond_1c
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v4, Lorg/telegram/ui/Components/URLSpanUserMention;

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/URLSpanUserMention;

    if-eqz v1, :cond_20

    array-length v2, v1

    if-lez v2, :cond_20

    if-nez v3, :cond_1d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1d
    const/4 v2, 0x0

    :goto_15
    array-length v4, v1

    if-ge v2, v4, :cond_20

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Lorg/telegram/ui/Components/URLSpanUserMention;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    if-eqz v5, :cond_1f

    aget-object v5, v1, v2

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    aget-object v5, v1, v2

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    sub-int/2addr v5, v6

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    const/4 v5, 0x0

    aget-object v5, p0, v5

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1e

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    :cond_1e
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_20
    const/4 v0, 0x0

    move v7, v0

    :goto_16
    const/4 v0, 0x2

    if-ge v7, v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v7, :cond_23

    const-string/jumbo v0, "**"

    move-object v6, v0

    :goto_17
    if-nez v7, :cond_24

    const/16 v0, 0x2a

    :goto_18
    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-static {v4, v6, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_2d

    const/4 v1, -0x1

    if-ne v2, v1, :cond_26

    if-nez v4, :cond_25

    const/16 v1, 0x20

    :goto_19
    invoke-static {v4, v3}, Lorg/telegram/messenger/query/MessagesQuery;->checkInclusion(ILjava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_22

    const/16 v5, 0x20

    if-eq v1, v5, :cond_21

    const/16 v5, 0xa

    if-ne v1, v5, :cond_22

    :cond_21
    move v2, v4

    :cond_22
    add-int/lit8 v1, v4, 0x2

    goto :goto_18

    :cond_23
    const-string/jumbo v0, "__"

    move-object v6, v0

    goto :goto_17

    :cond_24
    const/16 v0, 0x5f

    goto :goto_18

    :cond_25
    const/4 v1, 0x0

    aget-object v1, p0, v1

    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    goto :goto_19

    :cond_26
    add-int/lit8 v1, v4, 0x2

    :goto_1a
    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_27

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_27

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_27
    add-int/lit8 v1, v4, 0x2

    invoke-static {v4, v3}, Lorg/telegram/messenger/query/MessagesQuery;->checkInclusion(ILjava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/query/MessagesQuery;->checkIntersection(IILjava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_29

    :cond_28
    const/4 v2, -0x1

    goto :goto_18

    :cond_29
    add-int/lit8 v5, v2, 0x2

    if-eq v5, v4, :cond_2b

    if-nez v3, :cond_2a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    const/4 v5, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, p0, v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget-object v10, p0, v10

    add-int/lit8 v11, v2, 0x2

    invoke-static {v10, v11, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aget-object v10, p0, v10

    add-int/lit8 v11, v4, 0x2

    const/4 v12, 0x0

    aget-object v12, p0, v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, p0, v5

    if-nez v7, :cond_2c

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;-><init>()V

    :goto_1b
    iput v2, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int v2, v4, v2

    add-int/lit8 v2, v2, -0x2

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    iget v2, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v2, v4

    const/4 v4, 0x4

    invoke-static {v2, v4, v3}, Lorg/telegram/messenger/query/MessagesQuery;->removeOffsetAfter(IILjava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x4

    :cond_2b
    const/4 v2, -0x1

    goto/16 :goto_18

    :cond_2c
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;-><init>()V

    goto :goto_1b

    :cond_2d
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_16

    :cond_2e
    move-object v7, v3

    goto/16 :goto_4

    :cond_2f
    move v0, v5

    goto/16 :goto_11

    :cond_30
    move-object v3, v4

    goto/16 :goto_e
.end method

.method public static loadPinnedMessage(IIZ)Lorg/telegram/messenger/MessageObject;
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/query/MessagesQuery$2;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;
    .locals 12

    const/4 v0, 0x0

    int-to-long v2, p1

    int-to-long v4, p0

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "SELECT data, mid, date FROM messages WHERE mid = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v8, 0x0

    invoke-static {v3, v1, v8}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v1

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    neg-int v3, p0

    int-to-long v8, v3

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v1, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_0
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "SELECT data FROM chat_pinned WHERE uid = %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v8, 0x0

    invoke-static {v3, v1, v8}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v1

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-eq v3, p1, :cond_2

    move-object v1, v0

    :cond_0
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_1
    if-nez v1, :cond_3

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/MessagesQuery$3;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/query/MessagesQuery$3;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_2
    return-object v0

    :cond_2
    neg-int v3, p0

    int-to-long v8, v3

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v1, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    const/4 v2, 0x1

    :try_start_1
    invoke-static {v1, v4, v5, v2, p2}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-static {v3, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-static {v3, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    long-to-int v0, p1

    if-nez v0, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isReply()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$6;

    invoke-direct {v1, v3, p1, p2, v4}, Lorg/telegram/messenger/query/MessagesQuery$6;-><init>(Ljava/util/ArrayList;JLjava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_b

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isReply()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v8, v2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_c

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v6, v2

    const/16 v2, 0x20

    shl-long/2addr v6, v2

    or-long/2addr v6, v8

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move v8, v2

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    move v6, v8

    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v7

    new-instance v0, Lorg/telegram/messenger/query/MessagesQuery$7;

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/query/MessagesQuery$7;-><init>(Ljava/lang/StringBuilder;JLjava/util/ArrayList;Ljava/util/HashMap;I)V

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_c
    move-wide v11, v8

    move v8, v6

    move-wide v6, v11

    goto :goto_3
.end method

.method private static removeOffsetAfter(IILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-le v3, p0, :cond_0

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v3, p1

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static savePinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/query/MessagesQuery$4;-><init>(Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static saveReplyMessages(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$8;

    invoke-direct {v1, p1, p0}, Lorg/telegram/messenger/query/MessagesQuery$8;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sortEntities(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/query/MessagesQuery;->entityComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
