.class Lorg/telegram/messenger/MessagesStorage$80;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$createDialog:Z

.field final synthetic val$dialog_id:J

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$messages_Messages;IJIZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$max_id:I

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesStorage$80;->val$createDialog:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v3, "messages_holes"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$max_id:I

    # invokes: Lorg/telegram/messenger/MessagesStorage;->doneHolesInTable(Ljava/lang/String;JI)V
    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->access$1700(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$max_id:I

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v3, v6}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInMedia(JII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v3, "messages_holes"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$max_id:I

    # invokes: Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V
    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$max_id:I

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "REPLACE INTO messages VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v9, v2

    :goto_2
    if-ge v9, v10, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v6, v6

    if-nez v5, :cond_16

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move v8, v5

    :goto_3
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v5, :cond_3

    int-to-long v14, v8

    const/16 v5, 0x20

    shl-long/2addr v14, v5

    or-long/2addr v6, v14

    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    const/4 v13, -0x2

    if-ne v5, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v5}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v5

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "SELECT mid, data, ttl FROM messages WHERE mid = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v5, v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v14

    if-eqz v14, :cond_4

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v15

    invoke-virtual {v14}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v15, :cond_4

    iget-object v14, v15, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v14, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    iput v14, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    :cond_4
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-nez v13, :cond_9

    move-object v2, v3

    move-object v3, v4

    :goto_4
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v5, v8

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v3, "messages_holes"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$max_id:I

    # invokes: Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V
    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$max_id:I

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$max_id:I

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8

    const v7, 0x7fffffff

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v3, "messages_holes"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    # invokes: Lorg/telegram/messenger/MessagesStorage;->closeHolesInTable(Ljava/lang/String;JII)V
    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->access$1800(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_5

    :cond_9
    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$createDialog:Z

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "SELECT pinned FROM dialogs WHERE did = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    :cond_a
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v13}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    const-string/jumbo v14, "REPLACE INTO dialogs VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v13, v14}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v14, 0x2

    iget v15, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x4

    invoke-virtual {v13, v14, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v14, 0x5

    iget v15, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v14, 0x7

    invoke-virtual {v13, v14, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/16 v14, 0x8

    iget v15, v2, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v14, 0x9

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$messages_Messages;->pts:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v14, 0xa

    iget v15, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v14, 0xb

    invoke-virtual {v13, v14, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # invokes: Lorg/telegram/messenger/MessagesStorage;->fixUnsupportedMedia(Lorg/telegram/tgnet/TLRPC$Message;)V
    invoke-static {v5, v2}, Lorg/telegram/messenger/MessagesStorage;->access$1900(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v13, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v5

    invoke-direct {v13, v5}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v2, v13}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v5, 0x1

    invoke-virtual {v11, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    invoke-virtual {v11, v5, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v14

    invoke-virtual {v11, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x4

    iget v14, v2, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    invoke-virtual {v11, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x5

    iget v14, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v11, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x6

    invoke-virtual {v11, v5, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v14, 0x7

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    :goto_6
    invoke-virtual {v11, v14, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v5, 0x8

    const/4 v14, 0x0

    invoke-virtual {v11, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_11

    const/16 v5, 0x9

    iget v14, v2, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    invoke-virtual {v11, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    :goto_7
    const/16 v5, 0xa

    const/4 v14, 0x0

    invoke-virtual {v11, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-static {v2}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v5, 0x1

    invoke-virtual {v12, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    invoke-virtual {v12, v5, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x3

    iget v14, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v12, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaType(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v14

    invoke-virtual {v12, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v5, 0x5

    invoke-virtual {v12, v5, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :cond_c
    invoke-virtual {v13}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v5, :cond_e

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "REPLACE INTO webpage_pending VALUES(?, ?)"

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    :cond_d
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v5, 0x1

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v4, v5, v14, v15}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$load_type:I

    if-nez v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # invokes: Lorg/telegram/messenger/MessagesStorage;->isValidKeyboardToSave(Lorg/telegram/tgnet/TLRPC$Message;)Z
    invoke-static {v5, v2}, Lorg/telegram/messenger/MessagesStorage;->access$2000(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz v3, :cond_f

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v5, v6, :cond_15

    :cond_f
    move-object v3, v4

    goto/16 :goto_4

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_11
    const/16 v5, 0x9

    const/4 v14, 0x0

    invoke-virtual {v11, v5, v14}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    goto/16 :goto_7

    :cond_12
    invoke-virtual {v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v12}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_13
    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$dialog_id:J

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/messenger/MessagesStorage;->putUsersInternal(Ljava/util/ArrayList;)V
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$2100(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$messages:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    # invokes: Lorg/telegram/messenger/MessagesStorage;->putChatsInternal(Ljava/util/ArrayList;)V
    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesStorage;->access$2200(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesStorage$80;->val$createDialog:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6, v5}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_15
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4

    :cond_16
    move v8, v5

    goto/16 :goto_3
.end method
