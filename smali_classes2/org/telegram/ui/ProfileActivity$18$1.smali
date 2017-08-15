.class Lorg/telegram/ui/ProfileActivity$18$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$18;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$18;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$18;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$18$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$18$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$18$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$18$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # setter for: Lorg/telegram/ui/ProfileActivity;->usersEndReached:Z
    invoke-static {v1, v5}, Lorg/telegram/ui/ProfileActivity;->access$4702(Lorg/telegram/ui/ProfileActivity;Z)Z

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$18;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipants;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->users:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->chat_id:I
    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/MessagesStorage;->updateChannelUsers(ILjava/util/ArrayList;)V

    :cond_1
    move v2, v3

    :goto_0
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;-><init>()V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->inviter_id:I

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->date:I

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->participantsMap:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->updateOnlineCount()V
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # setter for: Lorg/telegram/ui/ProfileActivity;->loadingUsers:Z
    invoke-static {v0, v3}, Lorg/telegram/ui/ProfileActivity;->access$4902(Lorg/telegram/ui/ProfileActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # invokes: Lorg/telegram/ui/ProfileActivity;->updateRowsIds()V
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$5000(Lorg/telegram/ui/ProfileActivity;)V

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$18$1;->this$1:Lorg/telegram/ui/ProfileActivity$18;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$18;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->listAdapter:Lorg/telegram/ui/ProfileActivity$ListAdapter;
    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method
