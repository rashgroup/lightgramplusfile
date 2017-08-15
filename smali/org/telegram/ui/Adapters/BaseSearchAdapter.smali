.class public Lorg/telegram/ui/Adapters/BaseSearchAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "BaseSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;
    }
.end annotation


# instance fields
.field protected globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field protected hashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field protected hashtagsByText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field protected hashtagsLoadedFromDb:Z

.field protected lastFoundUsername:Ljava/lang/String;

.field private lastReqId:I

.field private reqId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastFoundUsername:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsLoadedFromDb:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/BaseSearchAdapter;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastReqId:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/BaseSearchAdapter;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    return p1
.end method

.method private putRecentHashtags(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseSearchAdapter$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "(^|\\s)#[\\w@\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;

    if-nez v0, :cond_4

    new-instance v0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->hashtag:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->date:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->putRecentHashtags(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public clearRecentHashtags()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseSearchAdapter$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$4;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadRecentHashtags()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryServerSearch(Ljava/lang/String;ZZ)V
    .locals 8

    const/4 v3, 0x0

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v3, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v3, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastReqId:I

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_2
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    iput-object p1, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastReqId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->lastReqId:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;IZZLjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v7, v6, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->reqId:I

    goto :goto_0
.end method

.method protected setHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtags:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsByText:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter;->hashtagsLoadedFromDb:Z

    return-void
.end method
