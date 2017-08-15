.class final Lorg/telegram/messenger/query/SharedMediaQuery$8;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->putMediaDatabase(JILjava/util/ArrayList;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$max_id:I

.field final synthetic val$messages:Ljava/util/ArrayList;

.field final synthetic val$topReached:Z

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ZJII)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$topReached:Z

    iput-wide p3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    iput p5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    iput p6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$topReached:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    iget v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-virtual {v0, v2, v3, v1, v5}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInMedia(JII)V

    iget-object v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v2, v2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    :cond_3
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v7

    invoke-direct {v6, v7}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v2, 0x2

    iget-wide v8, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    invoke-virtual {v1, v2, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v2, 0x3

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x4

    iget v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-boolean v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$topReached:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$topReached:Z

    if-eqz v0, :cond_7

    :goto_2
    iget v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    iget v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V

    :cond_6
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_2

    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    const v5, 0x7fffffff

    iget v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
