.class Lorg/telegram/messenger/MessagesController$95;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_5

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;

    instance-of v0, v2, Lorg/telegram/tgnet/TLRPC$TL_updates_differenceSlice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->pts:I

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->date:I

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->intermediate_state:Lorg/telegram/tgnet/TLRPC$TL_updates_state;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updates_state;->qts:I

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getDifference(IIIZ)V

    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v1, v6

    :goto_0
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_1
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->other_updates:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/telegram/messenger/MessagesController$95$1;

    invoke-direct {v0, p0, v2}, Lorg/telegram/messenger/MessagesController$95$1;-><init>(Lorg/telegram/messenger/MessagesController$95;Lorg/telegram/tgnet/TLRPC$updates_Difference;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v6

    new-instance v0, Lorg/telegram/messenger/MessagesController$95$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController$95$2;-><init>(Lorg/telegram/messenger/MessagesController$95;Lorg/telegram/tgnet/TLRPC$updates_Difference;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :goto_3
    return-void

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean v6, v0, Lorg/telegram/messenger/MessagesController;->gettingDifference:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->setIsUpdating(Z)V

    goto :goto_3
.end method
