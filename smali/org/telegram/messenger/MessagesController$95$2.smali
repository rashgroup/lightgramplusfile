.class Lorg/telegram/messenger/MessagesController$95$2;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$95;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$95;

.field final synthetic val$chatsDict:Ljava/util/HashMap;

.field final synthetic val$msgUpdates:Ljava/util/ArrayList;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$95;Lorg/telegram/tgnet/TLRPC$updates_Difference;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$95$2;->this$1:Lorg/telegram/messenger/MessagesController$95;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$95$2;->val$msgUpdates:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$95$2;->val$usersDict:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$95$2;->val$chatsDict:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v6, 0x0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$updates_Difference;->users:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$95$2;->val$res:Lorg/telegram/tgnet/TLRPC$updates_Difference;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$updates_Difference;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2;->val$msgUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move v9, v6

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2;->val$msgUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$95$2;->val$msgUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->random_id:J

    const/4 v4, 0x0

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    move v7, v6

    move v8, v6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesStorage;->updateMessageStateAndId(JLjava/lang/Integer;IIZI)[J

    move-result-object v1

    if-eqz v1, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/MessagesController$95$2$1;

    invoke-direct {v0, p0, v10}, Lorg/telegram/messenger/MessagesController$95$2$1;-><init>(Lorg/telegram/messenger/MessagesController$95$2;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MessagesController$95$2$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MessagesController$95$2$2;-><init>(Lorg/telegram/messenger/MessagesController$95$2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
