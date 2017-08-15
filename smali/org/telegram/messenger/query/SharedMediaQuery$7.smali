.class final Lorg/telegram/messenger/query/SharedMediaQuery$7;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->loadMediaDatabase(JIIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$isChannel:Z

.field final synthetic val$max_id:I

.field final synthetic val$offset:I

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(IJIZIII)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    iput-wide p2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    iput p4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    iput-boolean p5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    iput p6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    iput p7, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$offset:I

    iput p8, p0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    const/4 v4, 0x0

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    add-int/lit8 v11, v2, 0x1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    long-to-int v2, v6

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    int-to-long v6, v6

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    long-to-int v2, v8

    neg-int v2, v2

    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_12

    if-eqz v2, :cond_12

    int-to-long v8, v2

    const/16 v14, 0x20

    shl-long/2addr v8, v14

    or-long/2addr v6, v8

    move-wide v8, v6

    :goto_0
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT start FROM media_holes_v2 WHERE uid = %d AND type = %d AND start IN (0, 1)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v12, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    const/4 v13, 0x1

    if-ne v7, v13, :cond_4

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v8, v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x0

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "SELECT end FROM media_holes_v2 WHERE uid = %d AND type = %d AND end <= %d ORDER BY end DESC LIMIT 1"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v12, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    int-to-long v6, v6

    if-eqz v2, :cond_1

    int-to-long v0, v2

    move-wide/from16 v16, v0

    const/16 v2, 0x20

    shl-long v16, v16, v2

    or-long v6, v6, v16

    :cond_1
    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const-wide/16 v14, 0x1

    cmp-long v2, v6, v14

    if-lez v2, :cond_7

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT data, mid FROM media_v2 WHERE uid = %d AND mid > 0 AND mid < %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v15, v16

    const/4 v8, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v15, v8

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v15, v6

    const/4 v6, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v15, v6

    invoke-static {v2, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v7

    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    iput v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    long-to-int v6, v8

    if-nez v6, :cond_3

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    :cond_3
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v6, :cond_d

    iget v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    move v13, v4

    :goto_4
    :try_start_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$offset:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$classGuid:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    # invokes: Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMedia(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V
    invoke-static/range {v3 .. v13}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$000(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V

    :goto_5
    return-void

    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_5
    :try_start_2
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT min(mid) FROM media_v2 WHERE uid = %d AND type = %d AND mid > 0"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v12, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v14, "REPLACE INTO media_holes_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v12, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v15, 0x4

    invoke-virtual {v14, v15, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_6
    invoke-virtual {v6}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    move v13, v4

    :goto_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$offset:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$classGuid:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    # invokes: Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMedia(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V
    invoke-static/range {v3 .. v13}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$000(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V

    throw v2

    :cond_7
    :try_start_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT data, mid FROM media_v2 WHERE uid = %d AND mid > 0 AND mid < %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v14

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    goto/16 :goto_3

    :cond_8
    const-wide/16 v6, 0x0

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v9, "SELECT max(end) FROM media_holes_v2 WHERE uid = %d AND type = %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v8, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v12, v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v6

    int-to-long v6, v6

    if-eqz v2, :cond_9

    int-to-long v14, v2

    const/16 v2, 0x20

    shl-long/2addr v14, v2

    or-long/2addr v6, v14

    :cond_9
    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-lez v2, :cond_a

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "SELECT data, mid FROM media_v2 WHERE uid = %d AND mid >= %d AND type = %d ORDER BY date DESC, mid DESC LIMIT %d,%d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v14

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$offset:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-static {v2, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    goto/16 :goto_3

    :cond_a
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT data, mid FROM media_v2 WHERE uid = %d AND mid > 0 AND type = %d ORDER BY date DESC, mid DESC LIMIT %d,%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$offset:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    goto/16 :goto_3

    :cond_b
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    if-eqz v2, :cond_c

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT m.data, m.mid, r.random_id FROM media_v2 as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d AND type = %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    goto/16 :goto_3

    :cond_c
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "SELECT m.data, m.mid, r.random_id FROM media_v2 as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND type = %d ORDER BY m.mid ASC LIMIT %d,%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$offset:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    goto/16 :goto_3

    :cond_d
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const-string/jumbo v6, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_f
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const-string/jumbo v5, ","

    invoke-static {v5, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_10
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-le v2, v4, :cond_11

    const/4 v13, 0x0

    :try_start_4
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_11
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$uid:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$offset:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$count:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$max_id:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$type:I

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$classGuid:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/query/SharedMediaQuery$7;->val$isChannel:Z

    # invokes: Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMedia(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V
    invoke-static/range {v3 .. v13}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$000(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    goto/16 :goto_6

    :catch_1
    move-exception v2

    goto/16 :goto_4

    :cond_12
    move-wide v8, v6

    goto/16 :goto_0
.end method
