.class Lorg/telegram/messenger/MessagesController$94$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$94;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$94;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$94;Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$94$1;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$94$1;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$1;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$1;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$94$1;->this$1:Lorg/telegram/messenger/MessagesController$94;

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$94;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$94$1;->val$res:Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_ChannelDifference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    return-void
.end method
