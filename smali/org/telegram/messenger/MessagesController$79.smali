.class Lorg/telegram/messenger/MessagesController$79;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat_id:I

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

.field final synthetic val$isChannel:Z

.field final synthetic val$isMegagroup:Z

.field final synthetic val$request:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ZLorg/telegram/tgnet/TLRPC$InputUser;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$79;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$79;->val$isChannel:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$79;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    iput p4, p0, Lorg/telegram/messenger/MessagesController$79;->val$chat_id:I

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$79;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$79;->val$request:Lorg/telegram/tgnet/TLObject;

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesController$79;->val$isMegagroup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$79;->val$isChannel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$79;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/MessagesController$79$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$79$1;-><init>(Lorg/telegram/messenger/MessagesController$79;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p2, :cond_2

    new-instance v0, Lorg/telegram/messenger/MessagesController$79$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/MessagesController$79$2;-><init>(Lorg/telegram/messenger/MessagesController$79;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    move v1, v2

    :goto_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v4, :cond_5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v0, :cond_5

    move v0, v3

    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$79;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController$79;->val$isChannel:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$79;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$79;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v1, p0, Lorg/telegram/messenger/MessagesController$79;->val$chat_id:I

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->generateJoinMessage(IZ)V

    :cond_3
    new-instance v0, Lorg/telegram/messenger/MessagesController$79$3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$79$3;-><init>(Lorg/telegram/messenger/MessagesController$79;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$79;->val$isChannel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$79;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    iget v4, p0, Lorg/telegram/messenger/MessagesController$79;->val$chat_id:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method
