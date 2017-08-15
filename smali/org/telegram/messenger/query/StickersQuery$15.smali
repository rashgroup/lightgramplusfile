.class final Lorg/telegram/messenger/query/StickersQuery$15;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$stickersFinal:Ljava/util/ArrayList;

.field final synthetic val$unreadStickers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$hash:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "REPLACE INTO stickers_featured VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    move v2, v1

    move v3, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->getObjectSize()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v5, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-direct {v5, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-direct {v3, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    move v2, v1

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$stickersFinal:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v0, v5}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x2

    invoke-virtual {v4, v0, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v0, 0x4

    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$date:I

    invoke-virtual {v4, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x5

    iget v1, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$hash:I

    invoke-virtual {v4, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :goto_3
    return-void

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "UPDATE stickers_featured SET date = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/messenger/query/StickersQuery$15;->val$date:I

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
