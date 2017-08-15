.class Lorg/telegram/messenger/query/SearchQuery$7$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/SearchQuery$7;

.field final synthetic val$dtFinal:D


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$7;D)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iput-wide p2, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->val$dtFinal:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, v2

    :goto_0
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v4, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iget v4, v4, Lorg/telegram/messenger/query/SearchQuery$7;->val$lower_id:I

    if-gez v4, :cond_0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    iget-object v5, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iget v5, v5, Lorg/telegram/messenger/query/SearchQuery$7;->val$lower_id:I

    neg-int v5, v5

    if-eq v4, v5, :cond_1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iget-object v5, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iget v5, v5, Lorg/telegram/messenger/query/SearchQuery$7;->val$lower_id:I

    neg-int v5, v5

    if-eq v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iget v4, v4, Lorg/telegram/messenger/query/SearchQuery$7;->val$lower_id:I

    if-lez v4, :cond_3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    iget-object v5, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iget v5, v5, Lorg/telegram/messenger/query/SearchQuery$7;->val$lower_id:I

    if-ne v4, v5, :cond_3

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_topPeer;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iget v1, v1, Lorg/telegram/messenger/query/SearchQuery$7;->val$lower_id:I

    if-lez v1, :cond_4

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v3, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iget v3, v3, Lorg/telegram/messenger/query/SearchQuery$7;->val$lower_id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    :goto_2
    sget-object v1, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    iget-wide v6, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->val$dtFinal:D

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    int-to-double v8, v1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    sget-object v1, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/messenger/query/SearchQuery$7$1$1;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/query/SearchQuery$7$1$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$7$1;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iget-wide v4, v1, Lorg/telegram/messenger/query/SearchQuery$7;->val$did:J

    long-to-int v1, v4

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    # invokes: Lorg/telegram/messenger/query/SearchQuery;->savePeer(IID)V
    invoke-static {v1, v2, v4, v5}, Lorg/telegram/messenger/query/SearchQuery;->access$500(IID)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v3, p0, Lorg/telegram/messenger/query/SearchQuery$7$1;->this$0:Lorg/telegram/messenger/query/SearchQuery$7;

    iget v3, v3, Lorg/telegram/messenger/query/SearchQuery$7;->val$lower_id:I

    neg-int v3, v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method
