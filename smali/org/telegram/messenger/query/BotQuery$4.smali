.class final Lorg/telegram/messenger/query/BotQuery$4;
.super Ljava/lang/Object;
.source "BotQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/BotQuery;->putBotKeyboard(JLorg/telegram/tgnet/TLRPC$Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$did:J

.field final synthetic val$message:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method constructor <init>(JLorg/telegram/tgnet/TLRPC$Message;)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/query/BotQuery$4;->val$did:J

    iput-object p3, p0, Lorg/telegram/messenger/query/BotQuery$4;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    # getter for: Lorg/telegram/messenger/query/BotQuery;->botKeyboards:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/query/BotQuery$4;->val$did:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/query/BotQuery$4;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    # getter for: Lorg/telegram/messenger/query/BotQuery;->botKeyboardsByMids:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$000()Ljava/util/HashMap;

    move-result-object v1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    # getter for: Lorg/telegram/messenger/query/BotQuery;->botKeyboardsByMids:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/messenger/query/BotQuery;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/BotQuery$4;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/query/BotQuery$4;->val$did:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoaded:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/messenger/query/BotQuery$4;->val$message:Lorg/telegram/tgnet/TLRPC$Message;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lorg/telegram/messenger/query/BotQuery$4;->val$did:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
