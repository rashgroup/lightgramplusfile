.class Lorg/telegram/ui/ChatActivity$48$C14351;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity$48;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C14351"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$48;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$48;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$48$C14351;->this$1:Lorg/telegram/ui/ChatActivity$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 18

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v10, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$48$C14351;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->clearChatData()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$12800(Lorg/telegram/ui/ChatActivity;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$48$C14351;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->waitingForLoad:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$48$C14351;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->lastLoadIndex:I
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$48$C14351;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$48$C14351;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->classGuid:I
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)I

    move-result v13

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$48$C14351;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$48$C14351;->this$1:Lorg/telegram/ui/ChatActivity$48;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$48$C14351;->this$1:Lorg/telegram/ui/ChatActivity$48;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$48;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/ChatActivity;->lastLoadIndex:I
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    # setter for: Lorg/telegram/ui/ChatActivity;->lastLoadIndex:I
    invoke-static {v4, v0}, Lorg/telegram/ui/ChatActivity;->access$12902(Lorg/telegram/ui/ChatActivity;I)I

    move-result v17

    invoke-virtual/range {v5 .. v17}, Lorg/telegram/messenger/MessagesController;->loadMessages(JIIIZIIIIZI)V

    return-void
.end method
