.class Lorg/telegram/messenger/MessagesStorage$36;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateChatInfo(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$chat_id:I

.field final synthetic val$invited_id:I

.field final synthetic val$user_id:I

.field final synthetic val$version:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIIII)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$36;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$chat_id:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$what:I

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$invited_id:I

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$version:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$36;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SELECT info, pinned FROM chat_settings_v2 WHERE uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$chat_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lorg/telegram/tgnet/TLRPC$ChatFull;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    move-object v3, v1

    :goto_0
    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    instance-of v1, v3, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$what:I

    if-ne v1, v5, :cond_3

    move v1, v0

    :goto_1
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    if-ne v0, v2, :cond_2

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_2
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$version:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->version:I

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$36$1;

    invoke-direct {v0, p0, v3}, Lorg/telegram/messenger/MessagesStorage$36$1;-><init>(Lorg/telegram/messenger/MessagesStorage$36;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$36;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "REPLACE INTO chat_settings_v2 VALUES(?, ?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$ChatFull;->getObjectSize()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v3, v1}, Lorg/telegram/tgnet/TLRPC$ChatFull;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v2, 0x1

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$chat_id:I

    invoke-virtual {v0, v2, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    const/4 v2, 0x3

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->pinned_msg_id:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_1
    :goto_3
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$what:I

    if-nez v1, :cond_6

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    if-ne v0, v2, :cond_4

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->user_id:I

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$invited_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->date:I

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    :try_start_1
    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$what:I

    if-ne v1, v6, :cond_0

    move v2, v0

    :goto_4
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$user_id:I

    if-ne v1, v4, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$36;->val$invited_id:I

    if-ne v1, v5, :cond_7

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    move-object v0, v1

    :goto_5
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_9
    move-object v3, v1

    goto/16 :goto_0
.end method
