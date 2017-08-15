.class Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;
.super Ljava/lang/Object;
.source "BaseSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/BaseSearchAdapter;->loadRecentHashtags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;->this$0:Lorg/telegram/ui/Adapters/BaseSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "SELECT id, date FROM hashtag_recent_v2 WHERE 1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;

    invoke-direct {v3}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->hashtag:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    iput v4, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->date:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lorg/telegram/ui/Adapters/BaseSearchAdapter$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    new-instance v0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2$1;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2$2;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Adapters/BaseSearchAdapter$2$2;-><init>(Lorg/telegram/ui/Adapters/BaseSearchAdapter$2;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
