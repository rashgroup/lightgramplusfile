.class Lorg/telegram/messenger/MessagesController$52;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZIIIIZ)V
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

.field final synthetic val$isChannel:Z

.field final synthetic val$last_date:I

.field final synthetic val$last_message_id:I

.field final synthetic val$loadIndex:I

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$offset_date:I

.field final synthetic val$queryFromServer:Z

.field final synthetic val$unread_count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;IIIJIIIIIIZIZ)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$52;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$52;->val$count:I

    iput p3, p0, Lorg/telegram/messenger/MessagesController$52;->val$max_id:I

    iput p4, p0, Lorg/telegram/messenger/MessagesController$52;->val$offset_date:I

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesController$52;->val$dialog_id:J

    iput p7, p0, Lorg/telegram/messenger/MessagesController$52;->val$classGuid:I

    iput p8, p0, Lorg/telegram/messenger/MessagesController$52;->val$first_unread:I

    iput p9, p0, Lorg/telegram/messenger/MessagesController$52;->val$last_message_id:I

    iput p10, p0, Lorg/telegram/messenger/MessagesController$52;->val$unread_count:I

    iput p11, p0, Lorg/telegram/messenger/MessagesController$52;->val$last_date:I

    iput p12, p0, Lorg/telegram/messenger/MessagesController$52;->val$load_type:I

    move/from16 v0, p13

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$52;->val$isChannel:Z

    move/from16 v0, p14

    iput v0, p0, Lorg/telegram/messenger/MessagesController$52;->val$loadIndex:I

    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/telegram/messenger/MessagesController$52;->val$queryFromServer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 20

    if-eqz p1, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesController$52;->val$count:I

    if-le v2, v4, :cond_0

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MessagesController$52;->val$max_id:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$52;->val$offset_date:I

    if-eqz v2, :cond_1

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_0
    if-ltz v4, :cond_1

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessagesController$52;->val$offset_date:I

    if-le v5, v6, :cond_3

    iget v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$52;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$52;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/MessagesController$52;->val$count:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/MessagesController$52;->val$offset_date:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MessagesController$52;->val$classGuid:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/MessagesController$52;->val$first_unread:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesController$52;->val$last_message_id:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/MessagesController$52;->val$unread_count:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/MessagesController$52;->val$last_date:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/MessagesController$52;->val$load_type:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$52;->val$isChannel:Z

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController$52;->val$loadIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController$52;->val$queryFromServer:Z

    move/from16 v19, v0

    invoke-virtual/range {v2 .. v19}, Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_0
.end method
