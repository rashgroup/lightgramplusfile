.class Lorg/telegram/messenger/MessagesStorage$3;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$lsv:I

.field final synthetic val$pbytes:[B

.field final synthetic val$sg:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;II[B)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$3;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$lsv:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$sg:I

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$3;->this$0:Lorg/telegram/messenger/MessagesStorage;

    # getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "UPDATE params SET lsv = ?, sg = ?, pbytes = ? WHERE id = 1"

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$lsv:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$sg:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    new-instance v2, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    if-eqz v3, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    array-length v0, v0

    :cond_0
    invoke-direct {v2, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$3;->val$pbytes:[B

    invoke-virtual {v2, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-virtual {v2}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
