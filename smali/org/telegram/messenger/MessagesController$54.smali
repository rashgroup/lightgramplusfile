.class Lorg/telegram/messenger/MessagesController$54;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$dialog_id:J

.field final synthetic val$first_unread:I

.field final synthetic val$isCache:Z

.field final synthetic val$isChannel:Z

.field final synthetic val$isEnd:Z

.field final synthetic val$last_date:I

.field final synthetic val$last_message_id:I

.field final synthetic val$loadIndex:I

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

.field final synthetic val$offset_date:I

.field final synthetic val$queryFromServer:Z

.field final synthetic val$unread_count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$messages_Messages;JZIIZIIIIIZIIIZ)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesController$54;->val$isCache:Z

    iput p6, p0, Lorg/telegram/messenger/MessagesController$54;->val$count:I

    iput p7, p0, Lorg/telegram/messenger/MessagesController$54;->val$load_type:I

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$54;->val$queryFromServer:Z

    iput p9, p0, Lorg/telegram/messenger/MessagesController$54;->val$first_unread:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$54;->val$max_id:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$54;->val$offset_date:I

    iput p12, p0, Lorg/telegram/messenger/MessagesController$54;->val$classGuid:I

    iput p13, p0, Lorg/telegram/messenger/MessagesController$54;->val$last_message_id:I

    iput-boolean p14, p0, Lorg/telegram/messenger/MessagesController$54;->val$isChannel:Z

    move/from16 v0, p15

    iput v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$loadIndex:I

    move/from16 v0, p16

    iput v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$unread_count:I

    move/from16 v0, p17

    iput v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$last_date:I

    move/from16 v0, p18

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$isEnd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    long-to-int v0, v0

    neg-int v2, v0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_19

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->getChannelPtsSync(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->channelsPts:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->pts:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->needShortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1600(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    # getter for: Lorg/telegram/messenger/MessagesController;->shortPollChannels:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->access$1500(Lorg/telegram/messenger/MessagesController;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->getChannelDifference(IIJLorg/telegram/tgnet/TLRPC$InputChannel;)V

    move v1, v7

    :goto_0
    move v3, v8

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-ne v4, v2, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move v2, v0

    move v6, v1

    :goto_2
    iget-wide v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    long-to-int v0, v0

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    const/16 v1, 0x20

    shr-long/2addr v4, v1

    long-to-int v1, v4

    iget-boolean v3, p0, Lorg/telegram/messenger/MessagesController$54;->val$isCache:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    :cond_0
    if-eq v1, v7, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$isCache:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/telegram/messenger/MessagesController$54$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$54$1;-><init>(Lorg/telegram/messenger/MessagesController$54;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    # invokes: Lorg/telegram/messenger/MessagesController;->getChannelDifference(I)V
    invoke-static {v0, v2}, Lorg/telegram/messenger/MessagesController;->access$4300(Lorg/telegram/messenger/MessagesController;I)V

    move v1, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move v1, v8

    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v8

    :goto_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$isCache:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    invoke-virtual {v0, v8, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v3, v0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    invoke-virtual {v0, v7, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v4, v0

    move v5, v8

    :goto_6
    if-ge v5, v11, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController$54;->val$isCache:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v1, :cond_8

    iput-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    :cond_8
    if-eqz v2, :cond_9

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v12, -0x80000000

    or-int/2addr v1, v12

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_9
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    iget v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-ne v1, v12, :cond_a

    :goto_7
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_b

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_b

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    :cond_b
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v1, :cond_c

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v1, :cond_d

    :cond_c
    iput-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iput-boolean v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    goto :goto_7

    :cond_d
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v1, :cond_e

    move-object v1, v4

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v1, v12, :cond_f

    move v1, v7

    :goto_9
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto :goto_7

    :cond_e
    move-object v1, v3

    goto :goto_8

    :cond_f
    move v1, v8

    goto :goto_9

    :cond_10
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    iget v4, p0, Lorg/telegram/messenger/MessagesController$54;->val$load_type:I

    iget v5, p0, Lorg/telegram/messenger/MessagesController$54;->val$max_id:I

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZ)V

    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v2, v8

    :goto_a
    if-ge v2, v11, :cond_17

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$54;->val$messagesRes:Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v12, p0, Lorg/telegram/messenger/MessagesController$54;->val$dialog_id:J

    iput-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    new-instance v6, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v6, v0, v9, v10, v7}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController$54;->val$isCache:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v1, v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    array-length v1, v1

    if-ne v1, v7, :cond_13

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->bytes:[B

    aget-byte v1, v1, v8

    const/16 v6, 0x41

    if-ge v1, v6, :cond_13

    :cond_12
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_14
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->date:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v12

    if-gt v1, v12, :cond_15

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_15
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_17
    new-instance v0, Lorg/telegram/messenger/MessagesController$54$2;

    invoke-direct {v0, p0, v3, v4, v5}, Lorg/telegram/messenger/MessagesController$54$2;-><init>(Lorg/telegram/messenger/MessagesController$54;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_18
    move v2, v8

    move v6, v1

    goto/16 :goto_2

    :cond_19
    move v1, v8

    goto/16 :goto_0

    :cond_1a
    move v2, v8

    move v6, v8

    goto/16 :goto_2
.end method
