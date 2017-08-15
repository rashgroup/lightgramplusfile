.class final Lorg/telegram/messenger/query/StickersQuery$22;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$stickersFinal:Ljava/util/ArrayList;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;III)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$stickersFinal:Ljava/util/ArrayList;

    iput p2, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$type:I

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$hash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$stickersFinal:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "REPLACE INTO stickers_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    move v4, v3

    move v5, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->getObjectSize()I

    move-result v0

    add-int/2addr v5, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-direct {v4, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    iget v0, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$type:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v6, v3, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v0, 0x3

    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$date:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x4

    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$hash:I

    invoke-virtual {v6, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "UPDATE stickers_v2 SET date = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$22;->val$date:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
