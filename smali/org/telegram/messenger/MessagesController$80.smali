.class Lorg/telegram/messenger/MessagesController$80;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$chat_id:I

.field final synthetic val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

.field final synthetic val$isChannel:Z

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;IZLorg/telegram/tgnet/TLRPC$InputUser;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$80;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$80;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iput p3, p0, Lorg/telegram/messenger/MessagesController$80;->val$chat_id:I

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesController$80;->val$isChannel:Z

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$80;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/telegram/messenger/MessagesController$80$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$80$1;-><init>(Lorg/telegram/messenger/MessagesController$80;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    iget-boolean v0, p0, Lorg/telegram/messenger/MessagesController$80;->val$isChannel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$80;->val$inputUser:Lorg/telegram/tgnet/TLRPC$InputUser;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/MessagesController$80$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MessagesController$80$2;-><init>(Lorg/telegram/messenger/MessagesController$80;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
