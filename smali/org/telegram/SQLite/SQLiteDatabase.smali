.class public Lorg/telegram/SQLite/SQLiteDatabase;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# instance fields
.field private inTransaction:Z

.field private isOpen:Z

.field private final sqliteHandle:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->opendb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string/jumbo v1, "database already in transaction"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    iget v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction(I)V

    return-void
.end method

.method native beginTransaction(I)V
.end method

.method checkOpened()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string/jumbo v1, "Database closed"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    iget v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->closedb(I)V
    :try_end_0
    .catch Lorg/telegram/SQLite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->isOpen:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method native closedb(I)V
.end method

.method public commitTransaction()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->inTransaction:Z

    iget v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    invoke-virtual {p0, v0}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction(I)V

    goto :goto_0
.end method

.method native commitTransaction(I)V
.end method

.method public executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;
    .locals 2

    new-instance v0, Lorg/telegram/SQLite/SQLitePreparedStatement;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;-><init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public varargs executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    throw v0
.end method

.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getSQLiteHandle()I
    .locals 1

    iget v0, p0, Lorg/telegram/SQLite/SQLiteDatabase;->sqliteHandle:I

    return v0
.end method

.method native opendb(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public varargs queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    new-instance v0, Lorg/telegram/SQLite/SQLitePreparedStatement;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;-><init>(Lorg/telegram/SQLite/SQLiteDatabase;Ljava/lang/String;Z)V

    invoke-virtual {v0, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->query([Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    return-object v0
.end method

.method public tableExists(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteDatabase;->checkOpened()V

    const-string/jumbo v2, "SELECT rowid FROM sqlite_master WHERE type=\'table\' AND name=?;"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p0, v2, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->executeInt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
