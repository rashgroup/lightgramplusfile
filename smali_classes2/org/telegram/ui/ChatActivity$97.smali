.class Lorg/telegram/ui/ChatActivity$97;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showShamsiDatePickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$persianCalendar:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$97;->val$persianCalendar:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a;III)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->val$persianCalendar:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->a(III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->val$persianCalendar:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->val$persianCalendar:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->val$persianCalendar:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$97;->val$persianCalendar:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->get(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$97;->val$persianCalendar:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->get(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$97;->val$persianCalendar:Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/b;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v10, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->clearChatData()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$12800(Lorg/telegram/ui/ChatActivity;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->waitingForLoad:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->lastLoadIndex:I
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->classGuid:I
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)I

    move-result v13

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$97;->this$0:Lorg/telegram/ui/ChatActivity;

    # operator++ for: Lorg/telegram/ui/ChatActivity;->lastLoadIndex:I
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$12908(Lorg/telegram/ui/ChatActivity;)I

    move-result v17

    invoke-virtual/range {v5 .. v17}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZI)V

    return-void
.end method
