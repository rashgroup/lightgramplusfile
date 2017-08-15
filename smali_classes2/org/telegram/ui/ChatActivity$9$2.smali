.class Lorg/telegram/ui/ChatActivity$9$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$9;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$9;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$9;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$9$2;->this$1:Lorg/telegram/ui/ChatActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$9$2;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    if-lez v1, :cond_1

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$9$2;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->chat_id:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$9$2$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$9$2$1;-><init>(Lorg/telegram/ui/ChatActivity$9$2;)V

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_1
    return-void
.end method
