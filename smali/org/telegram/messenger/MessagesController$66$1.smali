.class Lorg/telegram/messenger/MessagesController$66$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$66;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$66;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$66;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x0

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesController$66;->val$dialog_id:J

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget v4, v4, Lorg/telegram/messenger/MessagesController$66;->val$max_date:I

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-boolean v6, v6, Lorg/telegram/messenger/MessagesController$66;->val$popup:Z

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/NotificationsController;->processReadMessages(Landroid/util/SparseArray;JIIZ)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$66;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController$66;->val$dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v0, :cond_0

    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$66$1;->this$1:Lorg/telegram/messenger/MessagesController$66;

    iget-wide v2, v1, Lorg/telegram/messenger/MessagesController$66;->val$dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/NotificationsController;->processDialogsUpdateRead(Ljava/util/HashMap;)V

    return-void
.end method
