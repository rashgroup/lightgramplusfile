.class Lorg/telegram/ui/ChatActivity$68;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openVideoEditor(Ljava/lang/String;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$68;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didFinishEditVideo(Ljava/lang/String;JJIIIIIIJJLjava/lang/String;)V
    .locals 16

    new-instance v10, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v10}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    move-wide/from16 v0, p2

    iput-wide v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    move-wide/from16 v0, p4

    iput-wide v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    move/from16 v0, p8

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    move/from16 v0, p9

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    move/from16 v0, p10

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    move/from16 v0, p11

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    move/from16 v0, p6

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move/from16 v0, p7

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move-object/from16 v0, p1

    iput-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$68;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$68;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    move-object/from16 v3, p1

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v14, p16

    invoke-static/range {v3 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$68;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$68;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    return-void
.end method
