.class final Lorg/telegram/messenger/query/BotQuery$1;
.super Ljava/lang/Object;
.source "BotQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/BotQuery;->clearBotKeyboard(JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$did:J

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;J)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    iput-wide p2, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$did:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    # getter for: Lorg/telegram/messenger/query/BotQuery;->botKeyboardsByMids:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    # getter for: Lorg/telegram/messenger/query/BotQuery;->botKeyboards:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lorg/telegram/messenger/query/BotQuery;->botKeyboardsByMids:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$000()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoaded:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v8, v5, v2

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    # getter for: Lorg/telegram/messenger/query/BotQuery;->botKeyboards:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoaded:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v8, v3, v2

    iget-wide v4, p0, Lorg/telegram/messenger/query/BotQuery$1;->val$did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
