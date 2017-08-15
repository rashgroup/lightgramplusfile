.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$encUsers:Ljava/util/ArrayList;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$searchId:I

    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$encUsers:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$searchId:I

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I
    invoke-static {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    :cond_3
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$encUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$result:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1202(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$names:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1302(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
