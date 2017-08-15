.class Lorg/telegram/messenger/MessagesStorage$57;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$57;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v3, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v2, v2

    if-ge v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->calcAuthKeyHash([B)[B

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "UPDATE enc_chats SET data = ?, g = ?, authkey = ?, ttl = ?, layer = ?, seq_in = ?, seq_out = ?, use_count = ?, exchange_id = ?, key_date = ?, fprint = ?, fauthkey = ?, khash = ?, in_seq_no = ?, admin_id = ? WHERE uid = ?"

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    new-instance v3, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->getObjectSize()I

    move-result v2

    invoke-direct {v3, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    new-instance v4, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    array-length v2, v2

    :goto_0
    invoke-direct {v4, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    new-instance v5, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v2, v2

    :goto_1
    invoke-direct {v5, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    new-instance v6, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    array-length v2, v2

    :goto_2
    invoke-direct {v6, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v7, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v0, v0

    :cond_2
    invoke-direct {v2, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-virtual {v4, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    invoke-virtual {v6, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    invoke-virtual {v2, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    :cond_6
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v0, 0x4

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v1, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x5

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-virtual {v1, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x6

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v1, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v0, 0x7

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v1, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v0, 0x8

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    shl-int/lit8 v7, v7, 0x10

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-short v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    or-int/2addr v7, v8

    invoke-virtual {v1, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v0, 0x9

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    invoke-virtual {v1, v0, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    invoke-virtual {v1, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v0, 0xb

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    invoke-virtual {v1, v0, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/16 v0, 0xe

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    invoke-virtual {v1, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v0, 0xf

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-virtual {v1, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/16 v0, 0x10

    iget-object v7, p0, Lorg/telegram/messenger/MessagesStorage$57;->val$chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v1, v0, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v6}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_7
    :goto_3
    return-void

    :cond_8
    move v2, v0

    goto/16 :goto_0

    :cond_9
    move v2, v0

    goto/16 :goto_1

    :cond_a
    move v2, v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_b
    throw v0
.end method
