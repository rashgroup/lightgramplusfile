.class Lorg/telegram/messenger/MessagesController$59;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->checkLastDialogMessage(Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$InputPeer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

.field final synthetic val$lower_id:I

.field final synthetic val$newTaskId:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_dialog;JI)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$59;->val$newTaskId:J

    iput p5, p0, Lorg/telegram/messenger/MessagesController$59;->val$lower_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;-><init>()V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iput-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinned:Z

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pinnedNum:I

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$59;->val$dialog:Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->users:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->chats:Ljava/util/ArrayList;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->messages:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogs;->count:I

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$59;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->processDialogsUpdate(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v5

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIZ)V

    :cond_0
    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController$59;->val$newTaskId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$59;->val$newTaskId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->removePendingTask(J)V

    :cond_1
    new-instance v0, Lorg/telegram/messenger/MessagesController$59$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$59$2;-><init>(Lorg/telegram/messenger/MessagesController$59;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance v0, Lorg/telegram/messenger/MessagesController$59$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$59$1;-><init>(Lorg/telegram/messenger/MessagesController$59;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
