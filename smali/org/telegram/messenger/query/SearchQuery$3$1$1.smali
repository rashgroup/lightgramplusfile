.class Lorg/telegram/messenger/query/SearchQuery$3$1$1;
.super Ljava/lang/Object;
.source "SearchQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SearchQuery$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/query/SearchQuery$3$1;

.field final synthetic val$inlineDatesCopy:Ljava/util/HashMap;

.field final synthetic val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/SearchQuery$3$1;Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->this$1:Lorg/telegram/messenger/query/SearchQuery$3$1;

    iput-object p2, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iput-object p3, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$inlineDatesCopy:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "DELETE FROM chat_hints WHERE 1"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->users:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "REPLACE INTO chat_hints VALUES(?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    move v8, v5

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$topPeers:Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeers;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    if-eqz v1, :cond_0

    move v3, v4

    :goto_1
    move v7, v5

    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;->peers:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    move v6, v2

    :goto_3
    iget-object v2, p0, Lorg/telegram/messenger/query/SearchQuery$3$1$1;->val$inlineDatesCopy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v6, 0x2

    invoke-virtual {v9, v6, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v6, 0x3

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-virtual {v9, v6, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindDouble(ID)V

    const/4 v6, 0x4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    invoke-virtual {v9, v6, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    move v6, v2

    goto :goto_3

    :cond_2
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    move v6, v2

    goto :goto_3

    :cond_3
    move v1, v5

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    new-instance v0, Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/query/SearchQuery$3$1$1$1;-><init>(Lorg/telegram/messenger/query/SearchQuery$3$1$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
